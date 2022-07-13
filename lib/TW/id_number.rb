# frozen_string_literal: true

CONVERSION_TABLE = {
  'A': '10',
  'B': '11',
  'C': '12',
  'D': '13',
  'E': '14',
  'F': '15',
  'G': '16',
  'H': '17',
  'J': '18',
  'K': '19',
  'L': '20',
  'M': '21',
  'N': '22',
  'P': '23',
  'Q': '24',
  'R': '25',
  'S': '26',
  'T': '27',
  'U': '28',
  'V': '29',
  'X': '30',
  'Y': '31',
  'W': '32',
  'Z': '33',
  'I': '34',
  'O': '35'
}.freeze

MULTIPLIER = [1, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1].freeze

module TW
  module IDNumber
    def self.generate
      id_number = String.new("#{[*'A'..'Z'].sample}#{%w[1 2].sample}#{8.times.map { rand(1..9) }.join}")
      return id_number if valid?(id_number)

      generate
    end

    def self.valid?(string)
      digitizing_number = CONVERSION_TABLE[string.chr.to_sym] + string.delete(string.chr)

      digits = digitizing_number.chars.map(&:to_i)

      special_sum = calculate_special_sum(digits)

      return true if (special_sum % 10).zero?

      false
    end

    def self.calculate_special_sum(digits)
      digits.map.with_index do |_digit, i|
        digits[i] * MULTIPLIER[i]
      end.sum
    end

    private_class_method :calculate_special_sum
  end
end
