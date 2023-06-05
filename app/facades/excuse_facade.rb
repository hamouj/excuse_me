class ExcuseFacade
  def fetch_random_excuse
    data = ExcuserService.get_random_excuse
    Excuse.new(data[0])
  end
end