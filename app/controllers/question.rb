post '/create_question' do
	title = params[:question_title]
	description = params[:question_description]
	question = Question.create(title: title, description: description, users_id: session[:id])
	redirect to ("/questions")
end