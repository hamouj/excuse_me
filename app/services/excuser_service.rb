class ExcuserService
  def self.get_random_excuse
    get_url('/v1/excuse')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://excuser-three.vercel.app/')
  end

end