# Api.ai + Web Speech API demonstration

This is a demonstration of using [Api.ai](http://api.ai) and the Web Speech APIs  (via the excellent [SpeechKITT library](https://github.com/TalAter/SpeechKITT)) to add a voice interface to a web application. In this case, that application is the [Spree e-commerce platform](https://spreecommerce.com).

## Getting started

In order to get this up and running, you'll need an account at Api.ai. Create a new agent, and upload the entities and intents found in [`app/assets/voice`](https://github.com/voxable-labs/spree-api-ai-demo/tree/demo/app/assets/voice). Then create a `.env` file and add the following line:

```text
API_AI_CLIENT_ACCESS_TOKEN=
```

Be sure to add your agent's client access token to the right of the `=`, obvs.

From there, it should just be the normal Rails app setup rigamarole.

## How it was accomplished

Check out [the diff between the demo and master branches](https://github.com/voxable-labs/spree-api-ai-demo/compare/master...demo?expand=1) to see what was done.
