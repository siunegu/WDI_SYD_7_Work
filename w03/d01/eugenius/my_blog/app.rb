require "sinatra"
require "sinatra/reloader"
require "pg"
require "pry"

#Create connection to database 'eug_blog'
def run_sql(sql)
  con = PG.connect(dbname: 'my_blog', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
	@posts = run_sql("SELECT * FROM posts;")
	erb :home
end

get '/posts/new' do
	erb :new_post
end

get '/posts/:id' do
	post_id = params[:id]
	@posts = run_sql("SELECT * FROM posts WHERE id=#{post_id}").first
	erb :posts
end

post '/posts' do
	@posts = run_sql("
		INSERT INTO posts
		(title, content, date, author) 
		VALUES 
		(
			'#{params["title"]}',
			'#{params["content"]}',
			'#{params["date"]}',
			'#{params["author"]}'
		)
	")
	redirect "/"
end		