require 'sinatra'

MESSAGES = ["Why kill time when you can make it work for you. Give feedback today! #F.I.T",
	    "Everyday is feedback day. Give feedback today! #F.I.T",
	    "Feedback in time, helps the team shine. Give feedback today! #F.I.T",
	    "Hungry for food? thirsty for water? Everyone is eager for feedback. Give feedback today! #F.I.T",
	    "It is time to get F.I.T. Give feedback today! ",
	    "Everyone likes filled feedback sheets. Give feedback today! #F.I.T",
	    "You will never know till you ask. Ask for feedback today! #F.I.T",
	    "Feedback clock is ticking. Share feedback today! #F.I.T",
	    "Did you check your feedback sheet today? Read feedback today!  #F.I.T",
	    "Did you give feedback lately? Give feedback today! #F.I.T",
	    "Feedback is the breakfast of champions. Give feedback today! #F.I.T"]

get '/' do
  message = MESSAGES[rand(MESSAGES.length)]
  `curl -X POST -d '{"text":"#{message}"}' -H "Content-Type:application/json;charset=UTF-8" https://api.flock.co/hooks/sendMessage/b30eaef8-7127-4715-b22b-30db909999fc`
end

