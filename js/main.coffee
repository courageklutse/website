$ ->

  video = $('#hero-video')[0]

  $('.hero').bind "click", ->
    if !video.paused
      video.pause()
      $('.overlay').hide().fadeIn()


  $('.resume').bind "click", (e) ->
    e.preventDefault()
    if video.paused
      video.play()
      $('.overlay').fadeOut()


  $('video.fullscreen').bind "ended", ->
    $('.overlay').hide().fadeIn()
