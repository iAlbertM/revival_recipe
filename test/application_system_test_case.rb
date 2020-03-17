require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
000000000000000000000000000000000000000000000000000000000000

=begin
# def full?(board)
#   result = false
#   if board.map(&:nil?) == false then
#     result = false
#   elsif board.map(&:empty?) == false then
#     result = false
#   else
#     result = true
#   end
#   result
# end


# def draw?(board)
# 	w = won?(board)
# 	f = full?(board)
# 	result = false
# 	if w == true || f == false then
# 		result = false
# 	end
# 	 if w == false && f == true then
# 		result = true
# 	end
# end
=end




irb(main):001:0> def position_taken?(board, indx)
irb(main):002:1> indx = indx.to_i
irb(main):003:1> if board[indx] == " " || board[indx].nil? then
irb(main):004:2* puts false
irb(main):005:2> else puts true
irb(main):006:2> end
irb(main):007:1> end
=> :position_taken?