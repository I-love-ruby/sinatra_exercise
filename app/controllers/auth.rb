get '/' do
  erb :index
end

get '/allstudents' do
  @students = Student.all
  erb :allstudents
end

post '/allstudents' do
  Student.create(params)
  redirect '/allstudents'
end

get '/allstudents/:id' do
    @student = Student.find(params[:id])
    erb :show
end

delete '/allstudents' do
  student = Student.find(params[:student_id])
  student.destroy
  redirect '/allstudents'
end

put '/allstudents/:id' do |id|
  student = Student.find(id)
  student.update_attributes(params[:user])
  redirect "/allstudents/#{id}"
end

get '/allstudents/:id/edit' do
  @student = Student.find(params[:id])
  erb :edit
end

