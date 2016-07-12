get '/ask' do 
	erb :answer
end

post '/answer' do
	description = params[:answer_description]
	question_id = params[:question_id]
  puts description
  puts question_id
	answer = Answer.create(description: description, users_id: session[:id], questions_id: question_id)
	redirect to ('/questions')
end

get '/upvote/:q_id' do
  question_id = params[:q_id] 
  question =  Question.find(question_id)
  votes = question.votes + 1
  question.update(votes: votes)
  question.votes
end