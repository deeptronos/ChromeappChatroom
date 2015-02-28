hack = require "#{process.env.PWD}/.hack"

# Get settings
settings = require "#{process.env.PWD}/SETTINGS"

# Get dependencies
dependencies = require "#{process.env.PWD}/.dependencies"
colors       = dependencies.colors
express      = dependencies.express

# Set client folder
client       = express.static settings.client

# Create a server
server = express().use(client).use((request, response) ->
  # Pass the request to the hack function
  userInfo = hack request
  
  response.statusCode = 404
  response.end "404 - We know who you are! #{userInfo.ip}"
).listen settings.port

# Say hello
console.log "SERVER:".cyan, "Running on port", "#{settings.port}".yellow
