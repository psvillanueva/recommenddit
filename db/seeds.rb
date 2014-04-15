# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create array of arrays from file
# Create array of arrays from file

# Returns true if the string contains an integer literal
def is_num?(str)
  begin
    !!Integer(str)
  rescue ArgumentError, TypeError
    false
  end
end

# Adds users to the database
def add_users(file)
	File.open(file) do |f|
		f.lines.each do |line|
			line_array = line.split

			# Change the integer strings into integers
			line_array.map! do |elem|
				if is_num?(elem)
					elem = elem.to_i
				else
					elem
				end
			end

			temp_array = []
			temp_array << line_array
			temp_array.each do |username, num_subreddits,
								similarity_0, similar_user_0,\
								similarity_1, similar_user_1,\
								similarity_2, similar_user_2,\
								similarity_3, similar_user_3,\
								similarity_4, similar_user_4,\
								similarity_5, similar_user_5,\
								similarity_6, similar_user_6,\
								similarity_7, similar_user_7,\
								similarity_8, similar_user_8,\
								similarity_9, similar_user_9,\
								similarity_10, similar_user_10,\
								similarity_11, similar_user_11,\
								similarity_12, similar_user_12,\
								similarity_13, similar_user_13,\
								similarity_14, similar_user_14,\
								similarity_15, similar_user_15,\
								similarity_16, similar_user_16,\
								similarity_17, similar_user_17,\
								similarity_18, similar_user_18,\
								similarity_19, similar_user_19,\
								similarity_20, similar_user_20,\
								similarity_21, similar_user_21,\
								similarity_22, similar_user_22,\
								similarity_23, similar_user_23,\
								similarity_24, similar_user_24,\
								similarity_25, similar_user_25,\
								similarity_26, similar_user_26,\
								similarity_27, similar_user_27,\
								similarity_28, similar_user_28,\
								similarity_29, similar_user_29,\
								similarity_30, similar_user_30,\
								similarity_31, similar_user_31,\
								similarity_32, similar_user_32,\
								similarity_33, similar_user_33,\
								similarity_34, similar_user_34,\
								similarity_35, similar_user_35,\
								similarity_36, similar_user_36,\
								similarity_37, similar_user_37,\
								similarity_38, similar_user_38,\
								similarity_39, similar_user_39,\
								similarity_40, similar_user_40,\
								similarity_41, similar_user_41,\
								similarity_42, similar_user_42,\
								similarity_43, similar_user_43,\
								similarity_44, similar_user_44,\
								similarity_45, similar_user_45,\
								similarity_46, similar_user_46,\
								similarity_47, similar_user_47,\
								similarity_48, similar_user_48,\
								similarity_49, similar_user_49,\
								similarity_50, similar_user_50,\
								similarity_51, similar_user_51,\
								similarity_52, similar_user_52,\
								similarity_53, similar_user_53,\
								similarity_54, similar_user_54,\
								similarity_55, similar_user_55,\
								similarity_56, similar_user_56,\
								similarity_57, similar_user_57,\
								similarity_58, similar_user_58,\
								similarity_59, similar_user_59,\
								similarity_60, similar_user_60,\
								similarity_61, similar_user_61,\
								similarity_62, similar_user_62,\
								similarity_63, similar_user_63,\
								similarity_64, similar_user_64,\
								similarity_65, similar_user_65,\
								similarity_66, similar_user_66,\
								similarity_67, similar_user_67,\
								similarity_68, similar_user_68,\
								similarity_69, similar_user_69,\
								similarity_70, similar_user_70,\
								similarity_71, similar_user_71,\
								similarity_72, similar_user_72,\
								similarity_73, similar_user_73,\
								similarity_74, similar_user_74,\
								similarity_75, similar_user_75,\
								similarity_76, similar_user_76,\
								similarity_77, similar_user_77,\
								similarity_78, similar_user_78,\
								similarity_79, similar_user_79,\
								similarity_80, similar_user_80,\
								similarity_81, similar_user_81,\
								similarity_82, similar_user_82,\
								similarity_83, similar_user_83,\
								similarity_84, similar_user_84,\
								similarity_85, similar_user_85,\
								similarity_86, similar_user_86,\
								similarity_87, similar_user_87,\
								similarity_88, similar_user_88,\
								similarity_89, similar_user_89,\
								similarity_90, similar_user_90,\
								similarity_91, similar_user_91,\
								similarity_92, similar_user_92,\
								similarity_93, similar_user_93,\
								similarity_94, similar_user_94,\
								similarity_95, similar_user_95,\
								similarity_96, similar_user_96,\
								similarity_97, similar_user_97,\
								similarity_98, similar_user_98,\
								similarity_99, similar_user_99,\
								similarity_100, similar_user_100,\
								similarity_101, similar_user_101,\
								similarity_102, similar_user_102,\
								similarity_103, similar_user_103,\
								similarity_104, similar_user_104,\
								similarity_105, similar_user_105,\
								similarity_106, similar_user_106,\
								similarity_107, similar_user_107,\
								similarity_108, similar_user_108,\
								similarity_109, similar_user_109,\
								similarity_110, similar_user_110,\
								similarity_111, similar_user_111,\
								similarity_112, similar_user_112,\
								similarity_113, similar_user_113,\
								similarity_114, similar_user_114,\
								similarity_115, similar_user_115,\
								similarity_116, similar_user_116,\
								similarity_117, similar_user_117,\
								similarity_118, similar_user_118,\
								similarity_119, similar_user_119,\
								similarity_120, similar_user_120,\
								similarity_121, similar_user_121,\
								similarity_122, similar_user_122,\
								similarity_123, similar_user_123,\
								similarity_124, similar_user_124,\
								similarity_125, similar_user_125,\
								similarity_126, similar_user_126,\
								similarity_127, similar_user_127,\
								similarity_128, similar_user_128,\
								similarity_129, similar_user_129,\
								similarity_130, similar_user_130,\
								similarity_131, similar_user_131,\
								similarity_132, similar_user_132,\
								similarity_133, similar_user_133,\
								similarity_134, similar_user_134,\
								similarity_135, similar_user_135,\
								similarity_136, similar_user_136,\
								similarity_137, similar_user_137,\
								similarity_138, similar_user_138,\
								similarity_139, similar_user_139,\
								similarity_140, similar_user_140,\
								similarity_141, similar_user_141,\
								similarity_142, similar_user_142,\
								similarity_143, similar_user_143,\
								similarity_144, similar_user_144,\
								similarity_145, similar_user_145,\
								similarity_146, similar_user_146,\
								similarity_147, similar_user_147,\
								similarity_148, similar_user_148,\
								similarity_149, similar_user_149,\
								similarity_150, similar_user_150,\
								similarity_151, similar_user_151,\
								similarity_152, similar_user_152,\
								similarity_153, similar_user_153,\
								similarity_154, similar_user_154,\
								similarity_155, similar_user_155,\
								similarity_156, similar_user_156,\
								similarity_157, similar_user_157,\
								similarity_158, similar_user_158,\
								similarity_159, similar_user_159,\
								similarity_160, similar_user_160,\
								similarity_161, similar_user_161,\
								similarity_162, similar_user_162,\
								similarity_163, similar_user_163,\
								similarity_164, similar_user_164,\
								similarity_165, similar_user_165,\
								similarity_166, similar_user_166,\
								similarity_167, similar_user_167,\
								similarity_168, similar_user_168,\
								similarity_169, similar_user_169,\
								similarity_170, similar_user_170,\
								similarity_171, similar_user_171,\
								similarity_172, similar_user_172,\
								similarity_173, similar_user_173,\
								similarity_174, similar_user_174,\
								similarity_175, similar_user_175,\
								similarity_176, similar_user_176,\
								similarity_177, similar_user_177,\
								similarity_178, similar_user_178,\
								similarity_179, similar_user_179,\
								similarity_180, similar_user_180,\
								similarity_181, similar_user_181,\
								similarity_182, similar_user_182,\
								similarity_183, similar_user_183,\
								similarity_184, similar_user_184,\
								similarity_185, similar_user_185,\
								similarity_186, similar_user_186,\
								similarity_187, similar_user_187,\
								similarity_188, similar_user_188,\
								similarity_189, similar_user_189,\
								similarity_190, similar_user_190,\
								similarity_191, similar_user_191,\
								similarity_192, similar_user_192,\
								similarity_193, similar_user_193,\
								similarity_194, similar_user_194,\
								similarity_195, similar_user_195,\
								similarity_196, similar_user_196,\
								similarity_197, similar_user_197,\
								similarity_198, similar_user_198,\
								similarity_199, similar_user_199|
					
				User.create(username: username, num_subreddits: num_subreddits,\
							similarity_0: similarity_0, similar_user_0: similar_user_0,\
							similarity_1: similarity_1, similar_user_1: similar_user_1,\
							similarity_2: similarity_2, similar_user_2: similar_user_2,\
							similarity_3: similarity_3, similar_user_3: similar_user_3,\
							similarity_4: similarity_4, similar_user_4: similar_user_4,\
							similarity_5: similarity_5, similar_user_5: similar_user_5,\
							similarity_6: similarity_6, similar_user_6: similar_user_6,\
							similarity_7: similarity_7, similar_user_7: similar_user_7,\
							similarity_8: similarity_8, similar_user_8: similar_user_8,\
							similarity_9: similarity_9, similar_user_9: similar_user_9,\
							similarity_10: similarity_10, similar_user_10: similar_user_10,\
							similarity_11: similarity_11, similar_user_11: similar_user_11,\
							similarity_12: similarity_12, similar_user_12: similar_user_12,\
							similarity_13: similarity_13, similar_user_13: similar_user_13,\
							similarity_14: similarity_14, similar_user_14: similar_user_14,\
							similarity_15: similarity_15, similar_user_15: similar_user_15,\
							similarity_16: similarity_16, similar_user_16: similar_user_16,\
							similarity_17: similarity_17, similar_user_17: similar_user_17,\
							similarity_18: similarity_18, similar_user_18: similar_user_18,\
							similarity_19: similarity_19, similar_user_19: similar_user_19,\
							similarity_20: similarity_20, similar_user_20: similar_user_20,\
							similarity_21: similarity_21, similar_user_21: similar_user_21,\
							similarity_22: similarity_22, similar_user_22: similar_user_22,\
							similarity_23: similarity_23, similar_user_23: similar_user_23,\
							similarity_24: similarity_24, similar_user_24: similar_user_24,\
							similarity_25: similarity_25, similar_user_25: similar_user_25,\
							similarity_26: similarity_26, similar_user_26: similar_user_26,\
							similarity_27: similarity_27, similar_user_27: similar_user_27,\
							similarity_28: similarity_28, similar_user_28: similar_user_28,\
							similarity_29: similarity_29, similar_user_29: similar_user_29,\
							similarity_30: similarity_30, similar_user_30: similar_user_30,\
							similarity_31: similarity_31, similar_user_31: similar_user_31,\
							similarity_32: similarity_32, similar_user_32: similar_user_32,\
							similarity_33: similarity_33, similar_user_33: similar_user_33,\
							similarity_34: similarity_34, similar_user_34: similar_user_34,\
							similarity_35: similarity_35, similar_user_35: similar_user_35,\
							similarity_36: similarity_36, similar_user_36: similar_user_36,\
							similarity_37: similarity_37, similar_user_37: similar_user_37,\
							similarity_38: similarity_38, similar_user_38: similar_user_38,\
							similarity_39: similarity_39, similar_user_39: similar_user_39,\
							similarity_40: similarity_40, similar_user_40: similar_user_40,\
							similarity_41: similarity_41, similar_user_41: similar_user_41,\
							similarity_42: similarity_42, similar_user_42: similar_user_42,\
							similarity_43: similarity_43, similar_user_43: similar_user_43,\
							similarity_44: similarity_44, similar_user_44: similar_user_44,\
							similarity_45: similarity_45, similar_user_45: similar_user_45,\
							similarity_46: similarity_46, similar_user_46: similar_user_46,\
							similarity_47: similarity_47, similar_user_47: similar_user_47,\
							similarity_48: similarity_48, similar_user_48: similar_user_48,\
							similarity_49: similarity_49, similar_user_49: similar_user_49,\
							similarity_50: similarity_50, similar_user_50: similar_user_50,\
							similarity_51: similarity_51, similar_user_51: similar_user_51,\
							similarity_52: similarity_52, similar_user_52: similar_user_52,\
							similarity_53: similarity_53, similar_user_53: similar_user_53,\
							similarity_54: similarity_54, similar_user_54: similar_user_54,\
							similarity_55: similarity_55, similar_user_55: similar_user_55,\
							similarity_56: similarity_56, similar_user_56: similar_user_56,\
							similarity_57: similarity_57, similar_user_57: similar_user_57,\
							similarity_58: similarity_58, similar_user_58: similar_user_58,\
							similarity_59: similarity_59, similar_user_59: similar_user_59,\
							similarity_60: similarity_60, similar_user_60: similar_user_60,\
							similarity_61: similarity_61, similar_user_61: similar_user_61,\
							similarity_62: similarity_62, similar_user_62: similar_user_62,\
							similarity_63: similarity_63, similar_user_63: similar_user_63,\
							similarity_64: similarity_64, similar_user_64: similar_user_64,\
							similarity_65: similarity_65, similar_user_65: similar_user_65,\
							similarity_66: similarity_66, similar_user_66: similar_user_66,\
							similarity_67: similarity_67, similar_user_67: similar_user_67,\
							similarity_68: similarity_68, similar_user_68: similar_user_68,\
							similarity_69: similarity_69, similar_user_69: similar_user_69,\
							similarity_70: similarity_70, similar_user_70: similar_user_70,\
							similarity_71: similarity_71, similar_user_71: similar_user_71,\
							similarity_72: similarity_72, similar_user_72: similar_user_72,\
							similarity_73: similarity_73, similar_user_73: similar_user_73,\
							similarity_74: similarity_74, similar_user_74: similar_user_74,\
							similarity_75: similarity_75, similar_user_75: similar_user_75,\
							similarity_76: similarity_76, similar_user_76: similar_user_76,\
							similarity_77: similarity_77, similar_user_77: similar_user_77,\
							similarity_78: similarity_78, similar_user_78: similar_user_78,\
							similarity_79: similarity_79, similar_user_79: similar_user_79,\
							similarity_80: similarity_80, similar_user_80: similar_user_80,\
							similarity_81: similarity_81, similar_user_81: similar_user_81,\
							similarity_82: similarity_82, similar_user_82: similar_user_82,\
							similarity_83: similarity_83, similar_user_83: similar_user_83,\
							similarity_84: similarity_84, similar_user_84: similar_user_84,\
							similarity_85: similarity_85, similar_user_85: similar_user_85,\
							similarity_86: similarity_86, similar_user_86: similar_user_86,\
							similarity_87: similarity_87, similar_user_87: similar_user_87,\
							similarity_88: similarity_88, similar_user_88: similar_user_88,\
							similarity_89: similarity_89, similar_user_89: similar_user_89,\
							similarity_90: similarity_90, similar_user_90: similar_user_90,\
							similarity_91: similarity_91, similar_user_91: similar_user_91,\
							similarity_92: similarity_92, similar_user_92: similar_user_92,\
							similarity_93: similarity_93, similar_user_93: similar_user_93,\
							similarity_94: similarity_94, similar_user_94: similar_user_94,\
							similarity_95: similarity_95, similar_user_95: similar_user_95,\
							similarity_96: similarity_96, similar_user_96: similar_user_96,\
							similarity_97: similarity_97, similar_user_97: similar_user_97,\
							similarity_98: similarity_98, similar_user_98: similar_user_98,\
							similarity_99: similarity_99, similar_user_99: similar_user_99,\
							similarity_100: similarity_100, similar_user_100: similar_user_100,\
							similarity_101: similarity_101, similar_user_101: similar_user_101,\
							similarity_102: similarity_102, similar_user_102: similar_user_102,\
							similarity_103: similarity_103, similar_user_103: similar_user_103,\
							similarity_104: similarity_104, similar_user_104: similar_user_104,\
							similarity_105: similarity_105, similar_user_105: similar_user_105,\
							similarity_106: similarity_106, similar_user_106: similar_user_106,\
							similarity_107: similarity_107, similar_user_107: similar_user_107,\
							similarity_108: similarity_108, similar_user_108: similar_user_108,\
							similarity_109: similarity_109, similar_user_109: similar_user_109,\
							similarity_110: similarity_110, similar_user_110: similar_user_110,\
							similarity_111: similarity_111, similar_user_111: similar_user_111,\
							similarity_112: similarity_112, similar_user_112: similar_user_112,\
							similarity_113: similarity_113, similar_user_113: similar_user_113,\
							similarity_114: similarity_114, similar_user_114: similar_user_114,\
							similarity_115: similarity_115, similar_user_115: similar_user_115,\
							similarity_116: similarity_116, similar_user_116: similar_user_116,\
							similarity_117: similarity_117, similar_user_117: similar_user_117,\
							similarity_118: similarity_118, similar_user_118: similar_user_118,\
							similarity_119: similarity_119, similar_user_119: similar_user_119,\
							similarity_120: similarity_120, similar_user_120: similar_user_120,\
							similarity_121: similarity_121, similar_user_121: similar_user_121,\
							similarity_122: similarity_122, similar_user_122: similar_user_122,\
							similarity_123: similarity_123, similar_user_123: similar_user_123,\
							similarity_124: similarity_124, similar_user_124: similar_user_124,\
							similarity_125: similarity_125, similar_user_125: similar_user_125,\
							similarity_126: similarity_126, similar_user_126: similar_user_126,\
							similarity_127: similarity_127, similar_user_127: similar_user_127,\
							similarity_128: similarity_128, similar_user_128: similar_user_128,\
							similarity_129: similarity_129, similar_user_129: similar_user_129,\
							similarity_130: similarity_130, similar_user_130: similar_user_130,\
							similarity_131: similarity_131, similar_user_131: similar_user_131,\
							similarity_132: similarity_132, similar_user_132: similar_user_132,\
							similarity_133: similarity_133, similar_user_133: similar_user_133,\
							similarity_134: similarity_134, similar_user_134: similar_user_134,\
							similarity_135: similarity_135, similar_user_135: similar_user_135,\
							similarity_136: similarity_136, similar_user_136: similar_user_136,\
							similarity_137: similarity_137, similar_user_137: similar_user_137,\
							similarity_138: similarity_138, similar_user_138: similar_user_138,\
							similarity_139: similarity_139, similar_user_139: similar_user_139,\
							similarity_140: similarity_140, similar_user_140: similar_user_140,\
							similarity_141: similarity_141, similar_user_141: similar_user_141,\
							similarity_142: similarity_142, similar_user_142: similar_user_142,\
							similarity_143: similarity_143, similar_user_143: similar_user_143,\
							similarity_144: similarity_144, similar_user_144: similar_user_144,\
							similarity_145: similarity_145, similar_user_145: similar_user_145,\
							similarity_146: similarity_146, similar_user_146: similar_user_146,\
							similarity_147: similarity_147, similar_user_147: similar_user_147,\
							similarity_148: similarity_148, similar_user_148: similar_user_148,\
							similarity_149: similarity_149, similar_user_149: similar_user_149,\
							similarity_150: similarity_150, similar_user_150: similar_user_150,\
							similarity_151: similarity_151, similar_user_151: similar_user_151,\
							similarity_152: similarity_152, similar_user_152: similar_user_152,\
							similarity_153: similarity_153, similar_user_153: similar_user_153,\
							similarity_154: similarity_154, similar_user_154: similar_user_154,\
							similarity_155: similarity_155, similar_user_155: similar_user_155,\
							similarity_156: similarity_156, similar_user_156: similar_user_156,\
							similarity_157: similarity_157, similar_user_157: similar_user_157,\
							similarity_158: similarity_158, similar_user_158: similar_user_158,\
							similarity_159: similarity_159, similar_user_159: similar_user_159,\
							similarity_160: similarity_160, similar_user_160: similar_user_160,\
							similarity_161: similarity_161, similar_user_161: similar_user_161,\
							similarity_162: similarity_162, similar_user_162: similar_user_162,\
							similarity_163: similarity_163, similar_user_163: similar_user_163,\
							similarity_164: similarity_164, similar_user_164: similar_user_164,\
							similarity_165: similarity_165, similar_user_165: similar_user_165,\
							similarity_166: similarity_166, similar_user_166: similar_user_166,\
							similarity_167: similarity_167, similar_user_167: similar_user_167,\
							similarity_168: similarity_168, similar_user_168: similar_user_168,\
							similarity_169: similarity_169, similar_user_169: similar_user_169,\
							similarity_170: similarity_170, similar_user_170: similar_user_170,\
							similarity_171: similarity_171, similar_user_171: similar_user_171,\
							similarity_172: similarity_172, similar_user_172: similar_user_172,\
							similarity_173: similarity_173, similar_user_173: similar_user_173,\
							similarity_174: similarity_174, similar_user_174: similar_user_174,\
							similarity_175: similarity_175, similar_user_175: similar_user_175,\
							similarity_176: similarity_176, similar_user_176: similar_user_176,\
							similarity_177: similarity_177, similar_user_177: similar_user_177,\
							similarity_178: similarity_178, similar_user_178: similar_user_178,\
							similarity_179: similarity_179, similar_user_179: similar_user_179,\
							similarity_180: similarity_180, similar_user_180: similar_user_180,\
							similarity_181: similarity_181, similar_user_181: similar_user_181,\
							similarity_182: similarity_182, similar_user_182: similar_user_182,\
							similarity_183: similarity_183, similar_user_183: similar_user_183,\
							similarity_184: similarity_184, similar_user_184: similar_user_184,\
							similarity_185: similarity_185, similar_user_185: similar_user_185,\
							similarity_186: similarity_186, similar_user_186: similar_user_186,\
							similarity_187: similarity_187, similar_user_187: similar_user_187,\
							similarity_188: similarity_188, similar_user_188: similar_user_188,\
							similarity_189: similarity_189, similar_user_189: similar_user_189,\
							similarity_190: similarity_190, similar_user_190: similar_user_190,\
							similarity_191: similarity_191, similar_user_191: similar_user_191,\
							similarity_192: similarity_192, similar_user_192: similar_user_192,\
							similarity_193: similarity_193, similar_user_193: similar_user_193,\
							similarity_194: similarity_194, similar_user_194: similar_user_194,\
							similarity_195: similarity_195, similar_user_195: similar_user_195,\
							similarity_196: similarity_196, similar_user_196: similar_user_196,\
							similarity_197: similarity_197, similar_user_197: similar_user_197,\
							similarity_198: similarity_198, similar_user_198: similar_user_198,\
							similarity_199: similarity_199, similar_user_199: similar_user_199)
			end
		end
	end
end

# Adds user subreddits to the database
def add_subreddits(file)
	File.open(file) do |f|
		f.lines.each do |line|
			line_array = line.split

			# Change the integer strings into integers
			line_array.map! do |elem|
				if is_num?(elem)
					elem = elem.to_i
				else
					elem
				end
			end

			temp_array = []
			temp_array << line_array
			temp_array.each do |username, total_posts,\
								subreddit_0, num_posts_0,\
								subreddit_1, num_posts_1,\
								subreddit_2, num_posts_2,\
								subreddit_3, num_posts_3,\
								subreddit_4, num_posts_4,\
								subreddit_5, num_posts_5,\
								subreddit_6, num_posts_6,\
								subreddit_7, num_posts_7,\
								subreddit_8, num_posts_8,\
								subreddit_9, num_posts_9,\
								subreddit_10, num_posts_10,\
								subreddit_11, num_posts_11,\
								subreddit_12, num_posts_12,\
								subreddit_13, num_posts_13,\
								subreddit_14, num_posts_14,\
								subreddit_15, num_posts_15,\
								subreddit_16, num_posts_16,\
								subreddit_17, num_posts_17,\
								subreddit_18, num_posts_18,\
								subreddit_19, num_posts_19,\
								subreddit_20, num_posts_20,\
								subreddit_21, num_posts_21,\
								subreddit_22, num_posts_22,\
								subreddit_23, num_posts_23,\
								subreddit_24, num_posts_24,\
								subreddit_25, num_posts_25,\
								subreddit_26, num_posts_26,\
								subreddit_27, num_posts_27,\
								subreddit_28, num_posts_28,\
								subreddit_29, num_posts_29,\
								subreddit_30, num_posts_30,\
								subreddit_31, num_posts_31,\
								subreddit_32, num_posts_32,\
								subreddit_33, num_posts_33,\
								subreddit_34, num_posts_34,\
								subreddit_35, num_posts_35,\
								subreddit_36, num_posts_36,\
								subreddit_37, num_posts_37,\
								subreddit_38, num_posts_38,\
								subreddit_39, num_posts_39,\
								subreddit_40, num_posts_40,\
								subreddit_41, num_posts_41,\
								subreddit_42, num_posts_42,\
								subreddit_43, num_posts_43,\
								subreddit_44, num_posts_44,\
								subreddit_45, num_posts_45,\
								subreddit_46, num_posts_46,\
								subreddit_47, num_posts_47,\
								subreddit_48, num_posts_48,\
								subreddit_49, num_posts_49,\
								subreddit_50, num_posts_50,\
								subreddit_51, num_posts_51,\
								subreddit_52, num_posts_52,\
								subreddit_53, num_posts_53,\
								subreddit_54, num_posts_54,\
								subreddit_55, num_posts_55,\
								subreddit_56, num_posts_56,\
								subreddit_57, num_posts_57,\
								subreddit_58, num_posts_58,\
								subreddit_59, num_posts_59,\
								subreddit_60, num_posts_60,\
								subreddit_61, num_posts_61,\
								subreddit_62, num_posts_62,\
								subreddit_63, num_posts_63,\
								subreddit_64, num_posts_64,\
								subreddit_65, num_posts_65,\
								subreddit_66, num_posts_66,\
								subreddit_67, num_posts_67,\
								subreddit_68, num_posts_68,\
								subreddit_69, num_posts_69,\
								subreddit_70, num_posts_70,\
								subreddit_71, num_posts_71,\
								subreddit_72, num_posts_72,\
								subreddit_73, num_posts_73,\
								subreddit_74, num_posts_74,\
								subreddit_75, num_posts_75,\
								subreddit_76, num_posts_76,\
								subreddit_77, num_posts_77,\
								subreddit_78, num_posts_78,\
								subreddit_79, num_posts_79,\
								subreddit_80, num_posts_80,\
								subreddit_81, num_posts_81,\
								subreddit_82, num_posts_82,\
								subreddit_83, num_posts_83,\
								subreddit_84, num_posts_84,\
								subreddit_85, num_posts_85,\
								subreddit_86, num_posts_86,\
								subreddit_87, num_posts_87,\
								subreddit_88, num_posts_88,\
								subreddit_89, num_posts_89,\
								subreddit_90, num_posts_90,\
								subreddit_91, num_posts_91,\
								subreddit_92, num_posts_92,\
								subreddit_93, num_posts_93,\
								subreddit_94, num_posts_94,\
								subreddit_95, num_posts_95,\
								subreddit_96, num_posts_96,\
								subreddit_97, num_posts_97,\
								subreddit_98, num_posts_98,\
								subreddit_99, num_posts_99,\
								subreddit_100, num_posts_100,\
								subreddit_101, num_posts_101,\
								subreddit_102, num_posts_102,\
								subreddit_103, num_posts_103,\
								subreddit_104, num_posts_104,\
								subreddit_105, num_posts_105,\
								subreddit_106, num_posts_106,\
								subreddit_107, num_posts_107,\
								subreddit_108, num_posts_108,\
								subreddit_109, num_posts_109,\
								subreddit_110, num_posts_110,\
								subreddit_111, num_posts_111,\
								subreddit_112, num_posts_112,\
								subreddit_113, num_posts_113,\
								subreddit_114, num_posts_114,\
								subreddit_115, num_posts_115,\
								subreddit_116, num_posts_116,\
								subreddit_117, num_posts_117,\
								subreddit_118, num_posts_118,\
								subreddit_119, num_posts_119,\
								subreddit_120, num_posts_120,\
								subreddit_121, num_posts_121,\
								subreddit_122, num_posts_122,\
								subreddit_123, num_posts_123,\
								subreddit_124, num_posts_124,\
								subreddit_125, num_posts_125,\
								subreddit_126, num_posts_126,\
								subreddit_127, num_posts_127,\
								subreddit_128, num_posts_128,\
								subreddit_129, num_posts_129,\
								subreddit_130, num_posts_130,\
								subreddit_131, num_posts_131,\
								subreddit_132, num_posts_132,\
								subreddit_133, num_posts_133,\
								subreddit_134, num_posts_134,\
								subreddit_135, num_posts_135,\
								subreddit_136, num_posts_136,\
								subreddit_137, num_posts_137,\
								subreddit_138, num_posts_138,\
								subreddit_139, num_posts_139,\
								subreddit_140, num_posts_140,\
								subreddit_141, num_posts_141,\
								subreddit_142, num_posts_142,\
								subreddit_143, num_posts_143,\
								subreddit_144, num_posts_144,\
								subreddit_145, num_posts_145,\
								subreddit_146, num_posts_146,\
								subreddit_147, num_posts_147,\
								subreddit_148, num_posts_148,\
								subreddit_149, num_posts_149,\
								subreddit_150, num_posts_150,\
								subreddit_151, num_posts_151,\
								subreddit_152, num_posts_152,\
								subreddit_153, num_posts_153,\
								subreddit_154, num_posts_154,\
								subreddit_155, num_posts_155,\
								subreddit_156, num_posts_156,\
								subreddit_157, num_posts_157,\
								subreddit_158, num_posts_158,\
								subreddit_159, num_posts_159,\
								subreddit_160, num_posts_160,\
								subreddit_161, num_posts_161,\
								subreddit_162, num_posts_162,\
								subreddit_163, num_posts_163,\
								subreddit_164, num_posts_164,\
								subreddit_165, num_posts_165,\
								subreddit_166, num_posts_166,\
								subreddit_167, num_posts_167,\
								subreddit_168, num_posts_168,\
								subreddit_169, num_posts_169,\
								subreddit_170, num_posts_170,\
								subreddit_171, num_posts_171,\
								subreddit_172, num_posts_172,\
								subreddit_173, num_posts_173,\
								subreddit_174, num_posts_174,\
								subreddit_175, num_posts_175,\
								subreddit_176, num_posts_176,\
								subreddit_177, num_posts_177,\
								subreddit_178, num_posts_178,\
								subreddit_179, num_posts_179,\
								subreddit_180, num_posts_180,\
								subreddit_181, num_posts_181,\
								subreddit_182, num_posts_182,\
								subreddit_183, num_posts_183,\
								subreddit_184, num_posts_184,\
								subreddit_185, num_posts_185,\
								subreddit_186, num_posts_186,\
								subreddit_187, num_posts_187,\
								subreddit_188, num_posts_188,\
								subreddit_189, num_posts_189,\
								subreddit_190, num_posts_190,\
								subreddit_191, num_posts_191,\
								subreddit_192, num_posts_192,\
								subreddit_193, num_posts_193,\
								subreddit_194, num_posts_194,\
								subreddit_195, num_posts_195,\
								subreddit_196, num_posts_196,\
								subreddit_197, num_posts_197,\
								subreddit_198, num_posts_198,\
								subreddit_199, num_posts_199|
					
				UserSubreddits.create(username: username, total_posts: total_posts,\
									subreddit_0: subreddit_0, num_posts_0: num_posts_0,\
									subreddit_1: subreddit_1, num_posts_1: num_posts_1,\
									subreddit_2: subreddit_2, num_posts_2: num_posts_2,\
									subreddit_3: subreddit_3, num_posts_3: num_posts_3,\
									subreddit_4: subreddit_4, num_posts_4: num_posts_4,\
									subreddit_5: subreddit_5, num_posts_5: num_posts_5,\
									subreddit_6: subreddit_6, num_posts_6: num_posts_6,\
									subreddit_7: subreddit_7, num_posts_7: num_posts_7,\
									subreddit_8: subreddit_8, num_posts_8: num_posts_8,\
									subreddit_9: subreddit_9, num_posts_9: num_posts_9,\
									subreddit_10: subreddit_10, num_posts_10: num_posts_10,\
									subreddit_11: subreddit_11, num_posts_11: num_posts_11,\
									subreddit_12: subreddit_12, num_posts_12: num_posts_12,\
									subreddit_13: subreddit_13, num_posts_13: num_posts_13,\
									subreddit_14: subreddit_14, num_posts_14: num_posts_14,\
									subreddit_15: subreddit_15, num_posts_15: num_posts_15,\
									subreddit_16: subreddit_16, num_posts_16: num_posts_16,\
									subreddit_17: subreddit_17, num_posts_17: num_posts_17,\
									subreddit_18: subreddit_18, num_posts_18: num_posts_18,\
									subreddit_19: subreddit_19, num_posts_19: num_posts_19,\
									subreddit_20: subreddit_20, num_posts_20: num_posts_20,\
									subreddit_21: subreddit_21, num_posts_21: num_posts_21,\
									subreddit_22: subreddit_22, num_posts_22: num_posts_22,\
									subreddit_23: subreddit_23, num_posts_23: num_posts_23,\
									subreddit_24: subreddit_24, num_posts_24: num_posts_24,\
									subreddit_25: subreddit_25, num_posts_25: num_posts_25,\
									subreddit_26: subreddit_26, num_posts_26: num_posts_26,\
									subreddit_27: subreddit_27, num_posts_27: num_posts_27,\
									subreddit_28: subreddit_28, num_posts_28: num_posts_28,\
									subreddit_29: subreddit_29, num_posts_29: num_posts_29,\
									subreddit_30: subreddit_30, num_posts_30: num_posts_30,\
									subreddit_31: subreddit_31, num_posts_31: num_posts_31,\
									subreddit_32: subreddit_32, num_posts_32: num_posts_32,\
									subreddit_33: subreddit_33, num_posts_33: num_posts_33,\
									subreddit_34: subreddit_34, num_posts_34: num_posts_34,\
									subreddit_35: subreddit_35, num_posts_35: num_posts_35,\
									subreddit_36: subreddit_36, num_posts_36: num_posts_36,\
									subreddit_37: subreddit_37, num_posts_37: num_posts_37,\
									subreddit_38: subreddit_38, num_posts_38: num_posts_38,\
									subreddit_39: subreddit_39, num_posts_39: num_posts_39,\
									subreddit_40: subreddit_40, num_posts_40: num_posts_40,\
									subreddit_41: subreddit_41, num_posts_41: num_posts_41,\
									subreddit_42: subreddit_42, num_posts_42: num_posts_42,\
									subreddit_43: subreddit_43, num_posts_43: num_posts_43,\
									subreddit_44: subreddit_44, num_posts_44: num_posts_44,\
									subreddit_45: subreddit_45, num_posts_45: num_posts_45,\
									subreddit_46: subreddit_46, num_posts_46: num_posts_46,\
									subreddit_47: subreddit_47, num_posts_47: num_posts_47,\
									subreddit_48: subreddit_48, num_posts_48: num_posts_48,\
									subreddit_49: subreddit_49, num_posts_49: num_posts_49,\
									subreddit_50: subreddit_50, num_posts_50: num_posts_50,\
									subreddit_51: subreddit_51, num_posts_51: num_posts_51,\
									subreddit_52: subreddit_52, num_posts_52: num_posts_52,\
									subreddit_53: subreddit_53, num_posts_53: num_posts_53,\
									subreddit_54: subreddit_54, num_posts_54: num_posts_54,\
									subreddit_55: subreddit_55, num_posts_55: num_posts_55,\
									subreddit_56: subreddit_56, num_posts_56: num_posts_56,\
									subreddit_57: subreddit_57, num_posts_57: num_posts_57,\
									subreddit_58: subreddit_58, num_posts_58: num_posts_58,\
									subreddit_59: subreddit_59, num_posts_59: num_posts_59,\
									subreddit_60: subreddit_60, num_posts_60: num_posts_60,\
									subreddit_61: subreddit_61, num_posts_61: num_posts_61,\
									subreddit_62: subreddit_62, num_posts_62: num_posts_62,\
									subreddit_63: subreddit_63, num_posts_63: num_posts_63,\
									subreddit_64: subreddit_64, num_posts_64: num_posts_64,\
									subreddit_65: subreddit_65, num_posts_65: num_posts_65,\
									subreddit_66: subreddit_66, num_posts_66: num_posts_66,\
									subreddit_67: subreddit_67, num_posts_67: num_posts_67,\
									subreddit_68: subreddit_68, num_posts_68: num_posts_68,\
									subreddit_69: subreddit_69, num_posts_69: num_posts_69,\
									subreddit_70: subreddit_70, num_posts_70: num_posts_70,\
									subreddit_71: subreddit_71, num_posts_71: num_posts_71,\
									subreddit_72: subreddit_72, num_posts_72: num_posts_72,\
									subreddit_73: subreddit_73, num_posts_73: num_posts_73,\
									subreddit_74: subreddit_74, num_posts_74: num_posts_74,\
									subreddit_75: subreddit_75, num_posts_75: num_posts_75,\
									subreddit_76: subreddit_76, num_posts_76: num_posts_76,\
									subreddit_77: subreddit_77, num_posts_77: num_posts_77,\
									subreddit_78: subreddit_78, num_posts_78: num_posts_78,\
									subreddit_79: subreddit_79, num_posts_79: num_posts_79,\
									subreddit_80: subreddit_80, num_posts_80: num_posts_80,\
									subreddit_81: subreddit_81, num_posts_81: num_posts_81,\
									subreddit_82: subreddit_82, num_posts_82: num_posts_82,\
									subreddit_83: subreddit_83, num_posts_83: num_posts_83,\
									subreddit_84: subreddit_84, num_posts_84: num_posts_84,\
									subreddit_85: subreddit_85, num_posts_85: num_posts_85,\
									subreddit_86: subreddit_86, num_posts_86: num_posts_86,\
									subreddit_87: subreddit_87, num_posts_87: num_posts_87,\
									subreddit_88: subreddit_88, num_posts_88: num_posts_88,\
									subreddit_89: subreddit_89, num_posts_89: num_posts_89,\
									subreddit_90: subreddit_90, num_posts_90: num_posts_90,\
									subreddit_91: subreddit_91, num_posts_91: num_posts_91,\
									subreddit_92: subreddit_92, num_posts_92: num_posts_92,\
									subreddit_93: subreddit_93, num_posts_93: num_posts_93,\
									subreddit_94: subreddit_94, num_posts_94: num_posts_94,\
									subreddit_95: subreddit_95, num_posts_95: num_posts_95,\
									subreddit_96: subreddit_96, num_posts_96: num_posts_96,\
									subreddit_97: subreddit_97, num_posts_97: num_posts_97,\
									subreddit_98: subreddit_98, num_posts_98: num_posts_98,\
									subreddit_99: subreddit_99, num_posts_99: num_posts_99,\
									subreddit_100: subreddit_100, num_posts_100: num_posts_100,\
									subreddit_101: subreddit_101, num_posts_101: num_posts_101,\
									subreddit_102: subreddit_102, num_posts_102: num_posts_102,\
									subreddit_103: subreddit_103, num_posts_103: num_posts_103,\
									subreddit_104: subreddit_104, num_posts_104: num_posts_104,\
									subreddit_105: subreddit_105, num_posts_105: num_posts_105,\
									subreddit_106: subreddit_106, num_posts_106: num_posts_106,\
									subreddit_107: subreddit_107, num_posts_107: num_posts_107,\
									subreddit_108: subreddit_108, num_posts_108: num_posts_108,\
									subreddit_109: subreddit_109, num_posts_109: num_posts_109,\
									subreddit_110: subreddit_110, num_posts_110: num_posts_110,\
									subreddit_111: subreddit_111, num_posts_111: num_posts_111,\
									subreddit_112: subreddit_112, num_posts_112: num_posts_112,\
									subreddit_113: subreddit_113, num_posts_113: num_posts_113,\
									subreddit_114: subreddit_114, num_posts_114: num_posts_114,\
									subreddit_115: subreddit_115, num_posts_115: num_posts_115,\
									subreddit_116: subreddit_116, num_posts_116: num_posts_116,\
									subreddit_117: subreddit_117, num_posts_117: num_posts_117,\
									subreddit_118: subreddit_118, num_posts_118: num_posts_118,\
									subreddit_119: subreddit_119, num_posts_119: num_posts_119,\
									subreddit_120: subreddit_120, num_posts_120: num_posts_120,\
									subreddit_121: subreddit_121, num_posts_121: num_posts_121,\
									subreddit_122: subreddit_122, num_posts_122: num_posts_122,\
									subreddit_123: subreddit_123, num_posts_123: num_posts_123,\
									subreddit_124: subreddit_124, num_posts_124: num_posts_124,\
									subreddit_125: subreddit_125, num_posts_125: num_posts_125,\
									subreddit_126: subreddit_126, num_posts_126: num_posts_126,\
									subreddit_127: subreddit_127, num_posts_127: num_posts_127,\
									subreddit_128: subreddit_128, num_posts_128: num_posts_128,\
									subreddit_129: subreddit_129, num_posts_129: num_posts_129,\
									subreddit_130: subreddit_130, num_posts_130: num_posts_130,\
									subreddit_131: subreddit_131, num_posts_131: num_posts_131,\
									subreddit_132: subreddit_132, num_posts_132: num_posts_132,\
									subreddit_133: subreddit_133, num_posts_133: num_posts_133,\
									subreddit_134: subreddit_134, num_posts_134: num_posts_134,\
									subreddit_135: subreddit_135, num_posts_135: num_posts_135,\
									subreddit_136: subreddit_136, num_posts_136: num_posts_136,\
									subreddit_137: subreddit_137, num_posts_137: num_posts_137,\
									subreddit_138: subreddit_138, num_posts_138: num_posts_138,\
									subreddit_139: subreddit_139, num_posts_139: num_posts_139,\
									subreddit_140: subreddit_140, num_posts_140: num_posts_140,\
									subreddit_141: subreddit_141, num_posts_141: num_posts_141,\
									subreddit_142: subreddit_142, num_posts_142: num_posts_142,\
									subreddit_143: subreddit_143, num_posts_143: num_posts_143,\
									subreddit_144: subreddit_144, num_posts_144: num_posts_144,\
									subreddit_145: subreddit_145, num_posts_145: num_posts_145,\
									subreddit_146: subreddit_146, num_posts_146: num_posts_146,\
									subreddit_147: subreddit_147, num_posts_147: num_posts_147,\
									subreddit_148: subreddit_148, num_posts_148: num_posts_148,\
									subreddit_149: subreddit_149, num_posts_149: num_posts_149,\
									subreddit_150: subreddit_150, num_posts_150: num_posts_150,\
									subreddit_151: subreddit_151, num_posts_151: num_posts_151,\
									subreddit_152: subreddit_152, num_posts_152: num_posts_152,\
									subreddit_153: subreddit_153, num_posts_153: num_posts_153,\
									subreddit_154: subreddit_154, num_posts_154: num_posts_154,\
									subreddit_155: subreddit_155, num_posts_155: num_posts_155,\
									subreddit_156: subreddit_156, num_posts_156: num_posts_156,\
									subreddit_157: subreddit_157, num_posts_157: num_posts_157,\
									subreddit_158: subreddit_158, num_posts_158: num_posts_158,\
									subreddit_159: subreddit_159, num_posts_159: num_posts_159,\
									subreddit_160: subreddit_160, num_posts_160: num_posts_160,\
									subreddit_161: subreddit_161, num_posts_161: num_posts_161,\
									subreddit_162: subreddit_162, num_posts_162: num_posts_162,\
									subreddit_163: subreddit_163, num_posts_163: num_posts_163,\
									subreddit_164: subreddit_164, num_posts_164: num_posts_164,\
									subreddit_165: subreddit_165, num_posts_165: num_posts_165,\
									subreddit_166: subreddit_166, num_posts_166: num_posts_166,\
									subreddit_167: subreddit_167, num_posts_167: num_posts_167,\
									subreddit_168: subreddit_168, num_posts_168: num_posts_168,\
									subreddit_169: subreddit_169, num_posts_169: num_posts_169,\
									subreddit_170: subreddit_170, num_posts_170: num_posts_170,\
									subreddit_171: subreddit_171, num_posts_171: num_posts_171,\
									subreddit_172: subreddit_172, num_posts_172: num_posts_172,\
									subreddit_173: subreddit_173, num_posts_173: num_posts_173,\
									subreddit_174: subreddit_174, num_posts_174: num_posts_174,\
									subreddit_175: subreddit_175, num_posts_175: num_posts_175,\
									subreddit_176: subreddit_176, num_posts_176: num_posts_176,\
									subreddit_177: subreddit_177, num_posts_177: num_posts_177,\
									subreddit_178: subreddit_178, num_posts_178: num_posts_178,\
									subreddit_179: subreddit_179, num_posts_179: num_posts_179,\
									subreddit_180: subreddit_180, num_posts_180: num_posts_180,\
									subreddit_181: subreddit_181, num_posts_181: num_posts_181,\
									subreddit_182: subreddit_182, num_posts_182: num_posts_182,\
									subreddit_183: subreddit_183, num_posts_183: num_posts_183,\
									subreddit_184: subreddit_184, num_posts_184: num_posts_184,\
									subreddit_185: subreddit_185, num_posts_185: num_posts_185,\
									subreddit_186: subreddit_186, num_posts_186: num_posts_186,\
									subreddit_187: subreddit_187, num_posts_187: num_posts_187,\
									subreddit_188: subreddit_188, num_posts_188: num_posts_188,\
									subreddit_189: subreddit_189, num_posts_189: num_posts_189,\
									subreddit_190: subreddit_190, num_posts_190: num_posts_190,\
									subreddit_191: subreddit_191, num_posts_191: num_posts_191,\
									subreddit_192: subreddit_192, num_posts_192: num_posts_192,\
									subreddit_193: subreddit_193, num_posts_193: num_posts_193,\
									subreddit_194: subreddit_194, num_posts_194: num_posts_194,\
									subreddit_195: subreddit_195, num_posts_195: num_posts_195,\
									subreddit_196: subreddit_196, num_posts_196: num_posts_196,\
									subreddit_197: subreddit_197, num_posts_197: num_posts_197,\
									subreddit_198: subreddit_198, num_posts_198: num_posts_198,\
									subreddit_199: subreddit_199, num_posts_199: num_posts_199)
			end
		end
	end
end


add_users("db/9.txt")
add_subreddits("db/reddit_test.txt")

