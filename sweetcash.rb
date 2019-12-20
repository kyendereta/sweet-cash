require 'sinatra'
require 'erb'

get '/' do
    
    erb :menu
end

get '/deposit' do
    erb :deposit
end

get '/send' do
  erb :send
end

post '/deposit' do
  "Deposited #{params[:amount]}"
end

post '/send' do
  "Send #{params[:amount]}"
end

__END__
@@menu
<h1>Menu</h1>
<ul>
<li>Deposit Cash</li>
<li>Withdraw Cash</li>
<li>Send Cash</li>
<li>Check Balance</li>
<li>Save with Sweet Cash</li>
<li>Previous Page</li>
<li>Feedback</li>
<li>Log Out</li>
</ul>

@@deposit
<h1>Deposit Cash</h1>
<body>
<form  method="post" target="_blank">
  Deposit Amount: <input type="number"><br>
  Account Number: <input type="number"><br>
  <input type="submit" value="Save">
  <input type="submit" value="Cancel">
</form>
</body>


@@send
<h1>Send Cash</h1>
<body>
<form method="post" target="_blank">
Send Amount: <input type="number"><br>
Account Number: <input type ="number"><br>
<input type="submit" value="Save">
<input type="submit" value="Cancel">
</form>
</body>
