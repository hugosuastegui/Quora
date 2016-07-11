before '/questions' do
  unless session[:id]
    redirect to "/"
  end
end

get '/' do
    erb :index
end

get '/questions' do
  # u = User.find(params[:id])
  @all_questions = Question.all
  erb :secret
end


post '/register' do
  name = params[:name]
  email = params[:email]
  password = params[:password]
  u = User.new(name: name, email: email, password: password)
  if u.save 
    @bulean = true
    session[:id] = u.id
    redirect to ("/questions")
  end
end

post '/login' do
  @error_message = ""
  email = params[:email]
  password = params[:password]
#buscar sio existe el usuario
  user = User.authenticate(email, password)
  if user 
      session[:id] = user.id
      redirect to ("/questionsser.id}")
  else
#obtener id y email para crear sesión
  @error_message = "Usuario Inválido"
    erb :index
  end
end


get '/logout' do
  session.clear
  @bulean2 = true
  erb :index
end
