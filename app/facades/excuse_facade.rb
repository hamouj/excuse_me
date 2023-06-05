class ExcuseFacade
  attr_reader :excuse, :topic

  def initialize(params)
    @excuse = params[:excuse]
    @topic = params[:excuse_topic]
  end

  def fetch_random_excuse
    data = ExcuserService.get_random_excuse
    Excuse.new(data[0])
  end

  def fetch_excuse_by_topic
    data = ExcuserService.get_topic_excuse(@topic.downcase)
    Excuse.new(data[0])
  end
end