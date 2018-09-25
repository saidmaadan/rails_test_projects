class BreedsController < ApplicationController

  def index
    dog = 'bulldog'
    @breed = dog
    @breed = params['breed'] unless !params['breed'] 
    
    @dog_url = ''
    begin
      @dog_url = JSON.parse(RestClient.get("https://dog.ceo/api/breed/#{@breed.gsub('-', '/')}/images/random").body)['message']
    rescue Object => e
    end
  end
end
