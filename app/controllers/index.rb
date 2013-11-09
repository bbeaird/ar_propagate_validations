get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  erb :create_event
end

post '/events/create' do
  p Event.all
  p params
  @event = Event.create(params)
  p @event
  p @event.date
  p @event.date.year
  # p date.month
  # p date.day
  redirect '/'
end
