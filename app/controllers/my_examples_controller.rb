class MyExamplesController < ApplicationController

  def fortune_one
    def day_fortune
      fortune = ["It will be a good day.", "You will win something today.", "Try again tomorrow"]
      generator = rand(0..2)
      return fortune[generator]
    end
    def lotto
      lotto_array = []
      6.times do
        lotto_array << rand(0...10)
      end
      return lotto_array.join('')
    end
    render json: {fortune: "#{day_fortune}", lotto: "Since my fortunes stink, heres lotto numbers: #{lotto}"}
  end

  def nine_nine_bottles
    
    render  json: {greet: "hello"}
  end
end
