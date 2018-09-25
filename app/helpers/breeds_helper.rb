module BreedsHelper
    def get_breeds
    begin
      breeds = {}
      breeds_pool = JSON.parse(RestClient.get("https://dog.ceo/api/breeds/list/all").body)["message"] 
      breeds_pool.keys.each do |k|
      	breeds[k] = k
      	breeds_pool[k].each do |b|
      		breed = [k, b].join('-')
      		breeds[breed] = breed
      	end
      end
      breeds
    rescue Object => e
      []
    end
  end
end
