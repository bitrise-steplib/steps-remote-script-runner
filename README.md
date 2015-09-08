# Remote Script Runner

The new Remote Script Runner step.

Step that downloads the content of the input url and runs it as a bash script.
For example you can provide a Gist raw url.

This Step is part of the [Open StepLib](http://www.steplib.com/), you can find its StepLib page [here](http://www.steplib.com/step/remote-bash-script-runner)


Can be run directly with the [bitrise CLI](https://github.com/bitrise-io/bitrise),
just `git clone` this repository, `cd` into it's folder in your Terminal/Command Line
and call `bitrise run test`.

*Check the `bitrise.yml` file for required inputs which have to be
added to your `.bitrise.secrets.yml` file!*


# Input Environment Variables
- script_url
