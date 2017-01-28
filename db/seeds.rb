# Seed add you the ability to populate your db.
# We provide you a basic shell for interaction with the end user.
# So try some code like below:
#
#   name = shell.ask("What's your name?")
#   shell.say name
#
development = shell.ask "Is this a development environment (yes/no)?"
development = development == "yes" ? true : false

if development
  email     = "test@example.com"
  password  = "password"
else
  email      = shell.ask "Which email do you want use for logging into admin?"
  password   = shell.ask "Tell me the password to use:", :echo => false
end

shell.say ""

account = Account.new(:email => email, :name => "Foo", :surname => "Bar", :password => password, :password_confirmation => password, :role => "admin")

if account.valid?
  account.save
  shell.say "================================================================="
  shell.say "Account has been successfully created, now you can login with:"
  shell.say "================================================================="
  shell.say "   email: #{email}"
  shell.say "   password: #{?* * password.length}"
  shell.say "================================================================="
else
  shell.say "Sorry, but something went wrong!"
  shell.say ""
  account.errors.full_messages.each { |m| shell.say "   - #{m}" }
end

if development
  shell.say "================================================================="
  shell.say "Generating model data"
  shell.say "================================================================="

  lorem_ipsum_short=<<-TEXT
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean porta semper sapien quis auctor. Pellentesque sit amet iaculis orci. Phasellus sit amet tempus orci. Duis elit lectus, aliquet id egestas in, lobortis quis dui. Mauris eu fermentum urna, non interdum mauris. Sed a ante sapien. Pellentesque elementum risus et laoreet lacinia. Cras tempus blandit lacus, in pulvinar sem interdum ac. Etiam at gravida lorem. Cras auctor porta lacus, et fermentum urna fermentum quis. Ut cursus, lectus eget hendrerit porttitor, nisi justo aliquet ante, pulvinar vestibulum mauris sem vitae arcu. Donec scelerisque tincidunt tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque eu velit enim. Aenean placerat tincidunt dui, vel sollicitudin lectus porta sit amet.
  TEXT

  lorem_ipsum_long=<<-TEXT
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean porta semper sapien quis auctor. Pellentesque sit amet iaculis orci. Phasellus sit amet tempus orci. Duis elit lectus, aliquet id egestas in, lobortis quis dui. Mauris eu fermentum urna, non interdum mauris. Sed a ante sapien. Pellentesque elementum risus et laoreet lacinia. Cras tempus blandit lacus, in pulvinar sem interdum ac. Etiam at gravida lorem. Cras auctor porta lacus, et fermentum urna fermentum quis. Ut cursus, lectus eget hendrerit porttitor, nisi justo aliquet ante, pulvinar vestibulum mauris sem vitae arcu. Donec scelerisque tincidunt tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque eu velit enim. Aenean placerat tincidunt dui, vel sollicitudin lectus porta sit amet.

  Phasellus ut accumsan sem, sed finibus nisl. Sed vehicula felis eu convallis feugiat. Maecenas efficitur mollis dapibus. Curabitur eget nibh scelerisque, hendrerit lectus vitae, venenatis eros. Etiam efficitur neque consectetur, fringilla purus sit amet, ultrices ligula. Vestibulum non porttitor odio, sed sollicitudin eros. Integer augue felis, commodo sit amet venenatis congue, viverra eget urna. Cras id justo non dolor gravida hendrerit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras sed aliquet ligula. In tincidunt ultricies nunc, nec vehicula metus egestas nec. Pellentesque ac elit nisi. Cras sagittis at nibh sit amet porta. Suspendisse sit amet lacus cursus, dapibus magna sed, commodo mauris. In consectetur massa a purus aliquam viverra.
  TEXT

  20.times.each { |i| Post.new(title: "Example blog post #{i}", body: lorem_ipsum_short).save! }
end

shell.say ""
