# Q0: Why is this error being thrown?
The Pokemon Model has not been created yet. 
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The seed file gave us a table of pokemon, and random pokemon are pulled from there randomly by the home controller. The common factor is that they are all starter pokemon.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
So clicking on the button calls the capture_path, which is the patch route in the routes file. It passes in the parameter of the current pokemons id. 
# Question 3: What would you name your own Pokemon?
Bobagon
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in '/trainers/' + trainer.to_s. And trainer is the current trainer's page I'm on. It needed the id of the trainer. For redirecting to the home page, 
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
In our pokemon model, we specified that the prescence and uniqueness of a name must be true. So this checks the validation of the pokemon we try to create and notifies us whether or not the name is empty or already used. 
# Give us feedback on the project and decal below!
This was fun!!! Definitely should've started earlier but I enjoyed it because I learned a lot more about the MVC structure. Although in all honestly there is just so much information I'm learning that I'm having difficulty connecting it all. (it took me a while to figure out how everything connected, and I honestly feel like I might forget again soon)
# Extra credit: Link your Heroku deployed app
