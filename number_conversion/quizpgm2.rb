require 'benchmark'

class Number

  def lettercom(numbers)
  begin_time = Time.now
	if numbers == 0 || numbers == 1
		return 0
	else
    		letters = {"2" => ["a", "b", "c"],
			"3" => ["d", "e", "f"],
			"4" => ["g", "h", "i"],
			"5" => ["j", "k", "l"],
			"6" => ["m", "n", "o"],
			"7" => ["p", "q", "r", "s"],
			"8" => ["t", "u", "v"],
			"9" => ["w", "x", "y", "z"]
			}
    dict = []

    IO.foreach( "dictionary.txt" ) do |word|
      dict<< word.chop.to_s.downcase
	end
   end

    keys = numbers.to_s.chars.map{|dig| letters[dig]}

    res = {}
    total_number = keys.length - 1
 
    for i in (2..total_number)
      f_array = keys[0..i]
      s_array = keys[i + 1..total_number]
      next if f_array.length < 3 || s_array.length < 3
      f_comb = f_array.shift.product(f_array).map(&:join)
      next if f_comb.nil?
      s_comb = s_array.shift.product(ns_array).map(&:join)
      next if s_comb.nil?
      res[i] = [(f_comb & dict), (s_comb & dict)] 
    end

    final_value = []

    res.each do |key, com|
      next if com.first.nil? || com.last.nil?
      com.first.product(com.last).each do |combo_words|
        final_value.push(combo_words)
      end
    end
   
    final_value << (keys.shift.product(*keys).map(&:join) & dict).join(", ")
	end_time= Time.now
	puts "Time taken is #{end_time-begin_time}."
    final_value
  end


end
n1=gets.chomp().to_i
final_value = Number.new().lettercom(n1)
puts "\n#{final_value}\n"

