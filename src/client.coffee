$ ->
  $body = $('#timeline')
  $lsit_body = $('#list')
  url = location.href.replace(/^.*:\/\//, 'ws://')
  console.log url
  socket = io.connect(url)
  socket.on 'tweet', (data) ->
    tweet = JSON.parse data
    $body.prepend($('<p>').append(tweet.text).fadeIn('normal'))
  socket.on 'tweet_list', (data) ->
    tweet = JSON.parse data
    $body.prepend($('<p>').append(tweet.text).fadeIn('normal'))
