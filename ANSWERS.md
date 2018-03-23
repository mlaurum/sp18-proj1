# Q0: Why is this error being thrown?
The error is thrown becaus the model doenst exist

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
this is defined in seed

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
button create a patch request with an id

# Question 3: What would you name your own Pokemon?
annie
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
root_path

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
we store the errors in flash[:error] after which we print it. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
