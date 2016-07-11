get '/ask' do 
	erb :answer
end

post '/answer' do
	description = params[:answer_description]
	question_id = params[:question_id]
	answer = Answer.create[description: description, users_id: session[:id], questions_id: question_id]
	redirect_to '/questions'
end

