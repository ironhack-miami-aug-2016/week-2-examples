# lib/string_calculator.rb

class StringCalculator

  def add(string_of_numbers = "")
    #  0 1 2
    # "8 , 4"

    first_number = string_of_numbers[0].to_i
    second_number = string_of_numbers[2].to_i

    first_number + second_number


    #  0
    # "6"
    # string_of_numbers[0]  ->  "6".to_i  ->  6
    # string_of_numbers[2]  ->  nil.to_i  ->  0


    # ""
    # string_of_numbers[0]  ->  nil.to_i  ->  0
    # string_of_numbers[2]  ->  nil.to_i  ->  0
  end

end
