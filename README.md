# Api.ai + Web Speech API demonstration

This is a demonstration of using [Api.ai](http://api.ai) and the Web Speech APIs  (via the excellent [SpeechKITT library](https://github.com/TalAter/SpeechKITT)) to add a voice interface to a web application. In this case, that application is the [Spree e-commerce platform](https://spreecommerce.com).

You can watch [a presentation of this demo on YouTube](http://voxable.io/blog/2016/04/04/adding-a-voice-interface-to-a-web-application-video/).

## Getting started

In order to get this up and running, you'll need an account at Api.ai. Create a new agent, and upload the entities and intents found in [`app/assets/voice`](https://github.com/voxable-labs/spree-api-ai-demo/tree/demo/app/assets/voice). Then create a `.env` file and add the following line:

```text
API_AI_CLIENT_ACCESS_TOKEN=
```

Be sure to add your agent's client access token to the right of the `=`, obvs.

From there, it should just be the normal Rails app setup rigamarole.

## How it was accomplished

Check out [the diff between the demo and master branches](https://github.com/voxable-labs/spree-api-ai-demo/compare/master...demo?expand=1) to see what was done.

## Why CoffeeScript?

Great question! You're a smart one. The rest of Spree happens to be written in it, and the purpose of this exercise was to make-believe that they had hired [Voxable](http://voxable.io) to add a voice interface to their product. Rather than convincing them (and charging them) to completely rewrite their front-end into React in ES6, we fit the interface into their existing technology stack - the one their team is already familiar with.
