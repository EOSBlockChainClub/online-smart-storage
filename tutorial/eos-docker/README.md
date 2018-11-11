# EOS Docker Development Environment

I'm not promising this will all work on the first go, but if you read the scripts source they should be fairly clear on what they do.

## Setup

1. Copy `aliases.bash` to your `~/.bashrc` or `~/.zshrc`
2. Change the environment variables for `$EOS_HOME` and `$EOS_ACCOUNT`
3. Run `setup`

## Example Usage

1. `eosio-init`
2. `cd $EOS_HOME/contracts`
3. `mkdir hello`
4. `touch hello/hello.cpp` (and fill with code)
5. Run `eosio-install hello/hello` to compile and load contract through docker
