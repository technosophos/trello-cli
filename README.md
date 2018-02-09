# trello-cli Dockerfile

This is a Dockerfile for the [trello-cli](https://github.com/mheap/trello-cli)
commandline client for [Trello](https://trello.com/).

## Building

To build this:

```
make docker-build
```

To push to a registry:

```
make docker-push
```

## Configuration

You will need to setup your API keys to access your Trello boards. To get your
keys, head [over here](https://trello.com/app-key).

The easest way to configure credentials is to set the environment variable `$APIKEY`
to the API Key Trello gives you, then generate a token and add it as the env
var `$TOKEN`.

From there run `env2creds` in the container to generate the credentials.

_You are strongly encouraged to run `trello refresh` before doing anything_

In brigade, it looks like this:

```javascript

```
