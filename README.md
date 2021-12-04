# docker-serverless-python

A simple container for running serverless commands.

Fork of [docker-serverless](https://github.com/carlin-q-scott/docker-serverless)

## How to Use

Regardless of your OS (Linux, Windows), start by setting up environment variables for your Cloud Environment. I provide examples for AWS below but other environments will be similar.

You can also optionally supply the environment variables in the command at step #3 by appending `=your_key` to the end of each -e argument.

## Windows

1. Open the Windows Powershell.
2. Navigate to your source directory containing your serverless.yml configuration file.
3. Run this command, adding what serverless command you want to run on the end:

```ps
docker run -it --rm -v $env:USERPROFILE/.aws:/root/.aws -v $pwd/:/src carlin/serverless sls
```

## Linux

1. Open the Linux terminal.
2. Navigate to your source directory containing your serverless.yml configuration file.
3. Run this command, adding what serverless command you want to run on the end:

```sh
docker run -it --rm -v $HOME/.aws:/root/.aws -v $(pwd):/src carlin/serverless sls
```
