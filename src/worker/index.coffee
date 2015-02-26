global.Sabizan = require '../../node_modules/sabizan/lib/index'
global.proxy = new Sabizan location.origin+'/api'

self.onfetch = (event) ->
  console.log 'onfetch', event
  if proxy.isHandleScope event.request.url
    event.respondWith(proxy.createResponse(event.request))

importScripts('mz-opt.js')
importScripts('mz-launcher.js')
