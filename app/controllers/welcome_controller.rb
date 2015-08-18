class WelcomeController < ApplicationController
  def index
  	@header_adj = [:irie, :ital, :rasta, :rootical].sample.capitalize
  	@commandment = ['Jah say, your bomboclaat band name should be ',
  		'Marcus Garvey prophesied that you would call your band ',
  		'Selassie say: name your band ',
  		'The conquering lion of the tribe of judah, "JAH, RASTAFARI" thinks you should name your band '].sample
  	@first_words = Word.where(position: 1).map(&:word)
  	@second_words = Word.where(position: 2).map(&:word) 
  	@bandname = @first_words.sample.to_s + " " + @second_words.sample.to_s

#    binding(pry)

  end
end
