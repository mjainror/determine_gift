class Gift
  attr_accessor :total_tests, :test_cases

  def initialize(opts={})
    @errors = []
    @test_cases = []
  end

  def number_of_tests
    total_tests.to_i
  end

  def determine_and_get_result!
    @total_tests = gets.chomp
    
    if valid_total_tests?
      number_of_tests.times do |test_index|
        gift_case = GiftCase.case(gets.chomp)
        gift_case.valid? ? puts(gift_case.case_result) : puts("Invalid Test Case!") 
      end
    else
      puts("Invalid input number of tests!")
    end
  end

  protected

  def valid_total_tests?
    total_tests.to_i.to_s == total_tests && number_of_tests >= 1 && number_of_tests <= 1000
  end
end

class GiftCase
  class << self
    def case(input_val)
      gift_case = new(input_val)
      gift_case.calculate!

      gift_case
    end
  end

  attr_accessor :input, :current_amount, :require_amount, :days_left, :case_result, :errors

  def initialize(input_val)
    @input  = input_val
    @errors = []
    @current_amount, @require_amount, @days_left = validate_and_get_input
  end

  def validate_and_get_input
    @res = input.to_s.split
    validate!

    valid? ? @res.map{|r| r.to_i } : []
  end

  def calculate!
    return nil unless valid?

    @case_result = (current_amount + (days_left * (days_left + 1)) / 2 >= require_amount) ? "YES" : "NO"
  end

  def valid?
    !errors.any?
  end

  def validate!
    unless @res.to_a.size == 3 && @res.all? { |r| r.to_i.to_s == r && r.to_i >= 0 && r.to_i <= 100000 }
      add_error("Invalid test case!")
    end
  end

  protected

  def add_error(message)
    @errors.push(message)
  end
end

Gift.new.determine_and_get_result!
