require 'sequel'
require_relative 'db'

module AnimalService
  class AnimalRepository

    def self.find_alligator
      DATABASE[:animals].where(specie: "Alligator").single_record
    end

  end
end
