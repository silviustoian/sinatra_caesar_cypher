require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index


end

post '/' do
  @output=cipher(params[:input], params[:nr].to_i)
  erb :index
end

def cipher(string, number_for_cipher)

   result = ''
   string.each_char do |i|
     result+=(i.ord+number_for_cipher).chr
   end
   return result
end
