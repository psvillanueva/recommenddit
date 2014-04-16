require 'rubygems'
require 'nokogiri'
require 'open-uri'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users      = User.all
    @user_count = User.distinct.count('username')
  end

  # GET /users/1
  # GET /users/1.json
  def show
    page   = Nokogiri::HTML(open("http://www.reddit.com/user/im1ru12"))   
    @karma = page.css("span[class='karma']").text
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def random
     @user_record   = User.first(:offset => rand(User.count))
     page           = Nokogiri::HTML(open("http://www.reddit.com/user/" + @user_record.username))  
     
     @link_karma    = page.css("span[class='karma']").text
     @comment_karma = page.css("span[class='karma comment-karma']").text
     @age           = page.css("time")[0].text
     
     post           = page.css("p[class='parent']").to_s()
     @latest_post   = post.html_safe
  end

  # # GET /users/1/edit
  # def edit
  # end

  # POST /users
  # POST /users.json
  # def create
  #   @user = User.new(user_params)

  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'User was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @user }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /users/1
  # # PATCH/PUT /users/1.json
  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /users/1
  # # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      query = nil
      @user_record = nil

      params[:user].each do |attribute, value|
        query = value if attribute === "username"
      end

      # @user_record = User.find(query) if query != nil
      @user_record = User.find(:first, :conditions => ["lower(username) = ?", query.downcase])

      page           = Nokogiri::HTML(open("http://www.reddit.com/user/" + @user_record.username))  
      
      @link_karma    = page.css("span[class='karma']").text
      @comment_karma = page.css("span[class='karma comment-karma']").text
      @age           = page.css("time")[0].text
      
      post           = page.css("p[class='parent']").to_s()
      @latest_post   = post.html_safe

      username = @user_record.username
      # get user's subreddits
      if UserSubreddits.exists?(username)
        @user_subreddits = UserSubreddits.find(username)
      else
        @user_subreddits = nil
      end

      # recommended subreddits
      @rcmd_subreddits = Hash.new

      similarity_value = 0
      
      # create subreddits arrays for each user
      @user_record.attributes.each do |key, value|
        # if similar_user, we know that value contains a username
        if key.to_s.include?("similar_user")
          # no more similar users, break out of loop
          if value === nil
            break
          end

          subreddit_arr = [similarity_value]

          if UserSubreddits.exists?(value)
            similar_user_subreddits = UserSubreddits.find(value)
          else
            @rcmd_subreddits[value] = subreddit_arr
            next
          end

          # similar user does not have a subreddits record, just add name to hash and break
          # if similar_user_subreddits === nil
          #   @rcmd_subreddits[key] = subreddit_arr
          #   break 
          # end

          # similar user subreddits record found, make an array out of those subreddits
          similar_user_subreddits.attributes.each do |key2, value2|
            # no more subreddits
            if key2.to_s.include?("subreddit") && value2 === nil 
              break
            elsif key2.to_s.include?("subreddit")
              subreddit_arr << value2
            end
          end

          # create key, pair for username and associated reddits
          @rcmd_subreddits[value] = subreddit_arr
        elsif key.to_s.include?("similarity")
          similarity_value = value
        end
      end


      if @user_record === nil
        redirect_to root_url, :flash => { :error => "Record not found." }
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username)
    end
end
