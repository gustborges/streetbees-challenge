class HomeController < ApplicationController
  def index
    private_key = '74dacf9f4a4f820049334bad1231a821615a191c'
    public_key = '51bbf0561206ec37552ca4edc8931466'

    connection =
      Faraday.new(
        url: 'https://gateway.marvel.com:443/v1/public/comics',
        params: {
          orderBy: 'focDate',
          apikey: public_key,
          ts: Time.now.to_i.to_s,
          hash:
            Digest::MD5.hexdigest(Time.now.to_i.to_s + private_key + public_key)
        },
        headers: {
          'Content-Type' => 'application/json'
        }
      )

    response = connection.get
    @comics = JSON.parse(response.body, object_class: OpenStruct).data.results
  end
end
