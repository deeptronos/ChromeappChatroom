# Dependencies
dependencies = 
  # Utilities
  path   : require 'path'
  fs     : require 'fs'
  process: require 'child_process'
  walk   : require 'fs-walk'
  watch  : require 'watch'
  colors : require 'colors'
  async  : require 'async'
  _      : require 'underscore'

  # Database
  database:
    postgres: require 'pg'
    neo4j   : require 'neo4j'
  
  # Web services
  express     : require 'express'
  http        : require 'http'
  session     : require 'express-session'
  morgan      : require 'morgan'
  cookieParser: require 'cookie-parser'
  bodyParser  : require 'body-parser'
  errorHandler: require 'express-error-handler'
  logger      : require 'express-logger'
  jade        : require 'jade'
  stylus      : require 'stylus'
  renderer    : require 'stylus-renderer'
  nib         : require 'nib'
  docco       : require 'docco'
  cheerio     : require 'cheerio'
  
  # Websockets
  io  : require 'socket.io'
  bone: require 'bone.io'
  dl  : require 'delivery'

module.exports = dependencies