require 'sinatra'
require 'erb'

# get '/' do
#     'Welcome to Sweet Cash where your cash feels at home'
# end

get '/' do
    
    erb :menu
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