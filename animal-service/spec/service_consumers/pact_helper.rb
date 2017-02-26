require 'pact/provider/rspec'

require_relative "provider_states"

Pact.service_provider 'Animal Service' do

  honours_pact_with "Zoo App" do
     pact_uri(File.dirname(__FILE__) + '/pacts/zoo_app-animal_service.json')
  end

end
