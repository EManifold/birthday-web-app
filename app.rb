require 'sinatra/base'
require 'date'
require './lib/todays_date'
require './lib/time_difference'

class Birthday < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/details' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/greeting'
  end

  get '/greeting' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    @todays_month = TodaysDate.new.convert_to_month(Date.today.to_s.split(' ').join.split('-')[1])
    @todays_day = Date.today.to_s.split(' ').join.split('-')[2]
    @time_difference = TimeDifference.new(@month, @day)
    erb :greeting
  end

  run! if app_file == $0
end
