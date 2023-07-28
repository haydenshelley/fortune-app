class MyExamplesController < ApplicationController

  def tell_fortune 
    fortunes = ["You will win the lottery soon", "You will get a new car", "Good luck ahead"]
    fortune = fortunes.sample
    render json: {message: fortune}
  end

  def numbers 
    numbers = Array.new
    6.times do
      numbers << rand(1..60)
    end
    render json: {message: numbers}
  end

  def bottles
    num = 99
    song = Array.new
    100.times do 
      song << "#{num} bottles of beer on the wall, #{num} bottles of beer"
      num -= 1
      song << "Take one down, pass it around, #{num} bottles of beer on the wall"
    end
    # response = http.get(localhost:3000/song)
    # x = response.parse(:json)
    render json: {message: song}
  end

end