require 'sequel'

class ZooDB

    attr_reader :database
      
    def initialize
      @database = Sequel.sqlite

      @database.create_table :animals do
        primary_key :id
        String :name
        String :specie
      end
    end
end

DATABASE ||= ZooDB.new.database
