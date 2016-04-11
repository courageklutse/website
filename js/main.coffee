$ ->

  video = $('#hero-video')[0]

  $('.hero').bind "click", ->
    if !video.paused
      video.pause()
      $('.overlay').hide().fadeIn()


  $('.resume').bind "click", (e) ->
    e.preventDefault()
    console.log "lala"
    if video.paused
      video.play()
      $('.overlay').fadeOut()


  $('video.fullscreen').bind "ended", ->
    console.log "I'm done"