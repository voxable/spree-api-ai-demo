class SpreeVoice
  constructor: ->
    @recognition = new webkitSpeechRecognition()
    @speechKITT = window.SpeechKITT

  # Initialize and configure Web Speech, SpeechKITT, and Api.ai
  init: ->
    @_configureSpeechKITT()
    @_configureWebSpeech()
    @_displaySpeechKITT()

  # Configure SpeechKITT
  _configureSpeechKITT: ->
    @speechKITT.setStartCommand => @recognition.start()
    @speechKITT.setAbortCommand => @recognition.abort()
    @speechKITT.setStylesheet('//cdnjs.cloudflare.com/ajax/libs/SpeechKITT/0.3.0/themes/flat-midnight-blue.css');
    @speechKITT.setSampleCommands ['Show me completed orders', 'Display orders placed before last Thursday']

  # Configure Web Speech API
  _configureWebSpeech: ->
    @recognition.addEventListener 'start', @speechKITT.onStart
    @recognition.addEventListener 'end', @speechKITT.onEnd
    @recognition.addEventListener 'result', @_handleRecognitionResult

  # Display the SpeechKITT UI
  _displaySpeechKITT: ->
    SpeechKITT.render()
    $speechKITToggle = $('#skitt-ui');
    $speechKITToggle.show()

  _handleRecognitionResult: (event) ->
    transcript = event.results[0][0].transcript
    console.log 'recognized speech:', transcript

$ ->
  voice = new SpreeVoice()
  voice.init()












