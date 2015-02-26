require 'whatwg-fetch'
window.addEventListener 'load', =>
  navigator.serviceWorker.register 'sw.js', scope: '.'
  .then (r) ->
    console.log('service-worker registered')

  .catch (err) ->
    console.error('fail to register', err)
