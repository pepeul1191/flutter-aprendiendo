require 'sinatra'
require 'sequel'
require 'sqlite3'

# conexión a base de datos
Sequel::Model.plugin :json_serializer
DB = Sequel.connect('sqlite://demo.db')

# clases ORM
class Departamento < Sequel::Model(DB[:departamentos])
end

# aplicación sinatra
before do
  #headers['Access-Control-Allow-Origin'] = '*'
  #headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
  #headers['Content-type'] = 'text/html; charset=UTF-8'
  #headers['server'] = 'Ruby, Ubuntu'
end

get '/test/conexion' do
  'Ok'
end

get '/' do
  status 500
  'Error: Url Vacía'
end

get '/departamento/listar' do
  Departamento.all.to_a.to_json
end

post '/login/acceder' do
  #data = JSON.parse(params[:data])
  'hola mundo'
end