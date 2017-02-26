require "animal_service/db"
require 'sequel'

Pact.provider_states_for "Zoo App" do

  set_up do
    DATABASE[:animals].truncate
  end

  provider_state "an alligator exists" do
    set_up do
      DATABASE[:animals].insert(name: "Betty", specie: "Alligator")       
    end
  end
  
end
