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
  puts "*" * 50
  p "inside upvote/:q_id"
  p request.xhr?

  p question_id = params[:q_id]
  p question_id.class
  p question =  Question.find(question_id)
  p votes = question.votes + 1
  p question.update(votes: votes)
  puts "*" * 50
  total_votes = question.votes
  total_votes.to_s
end