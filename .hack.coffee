# Check requests
checkRequest = (request) ->
  # Get headers from request
  headers = request["headers"]
    
  # Get the device from the header
  device  = headers["user-agent"]
  
  # Get the origin from the header
  origin  = headers["origin"]
  
  # Get the IP from the request
  ip      = request.headers['x-forwarded-for'] or request.connection.remoteAddress or request.socket.remoteAddress or request.connection.socket.remoteAddress
  
  # Return an object containing the user's information
  userInfo = 
    device : device
    origin: origin
    ip    : ip
  

# My exports
module.exports = checkRequest