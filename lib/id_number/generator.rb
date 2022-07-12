# frozen_string_literal: true

SURFACE = {
  'A': 10,
  'B': 11,
  'C': 12,
  'D': 13,
  'E': 14,
  'F': 15,
  'G': 16,
  'H': 17,
  'J': 18,
  'K': 19,
  'L': 20,
  'M': 21,
  'N': 22,
  'P': 23,
  'Q': 24,
  'R': 25,
  'S': 26,
  'T': 27,
  'U': 28,
  'V': 29,
  'X': 30,
  'Y': 31,
  'W': 32,
  'Z': 33,
  'I': 34,
  'O': 35
}

MULTIPLIER = [1,9,8,7,6,5,4,3,2,1,1].freeze

module IdNumber
  module Generator
    def self.id_number
      first_char = [*'A'..'Z'].sample
      second_char = ['1', '2'].sample
      last_chars = 8.times.map { rand(1..9) }.join
      id_number = first_char + second_char + last_chars
      return id_number if valid?(id_number)
      
      self.id_number
    end

    def self.valid?(string)
      id_number = SURFACE[string[0].to_sym].to_s + string.delete(string[0])
      
      digits = id_number.chars.map(&:to_i)

      special_sum = calculate_special_sum(digits)

      if special_sum % 10 == 0
        return true
      else
        return false
      end
    end

    def self.calculate_special_sum(digits)
      sum = 0
      11.times do |i|
        m = digits[i] * MULTIPLIER[i]
        sum += m
      end
      sum
    end
  end
end
