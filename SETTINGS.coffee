# Get the active client
activeClient = "simple"

# Clients
clients =
  simple:
    files: "websites/simple"
    port : 4000
  
# Return active server settings
module.exports = 
  client: clients[activeClient].files
  port  : clients[activeClient].port