# Lolize

Colorize your ruby output with rainbow :)

The colorize algorithm is based on [lolcat](https://github.com/busyloop/lolcat).

## Caution

* This is just a fun project
* Never use this in your production project!!!!
  * It will slow your console output
  * If something gets wrong within output hook, the program might crash silently

## How to lolize

Just require `lolize/auto`. it will automatically hook your `$stdout` and `$stderr`. 

### Bundler Gemfile

For example, you can do this in your rails project: 

    # Gemfile
    gem 'lolize', :require => 'lolize/auto'

![Rails with lolize](http://miaout17.github.com/lolize/lolize-rails.png)

### Any Ruby, Anywhere

    gem 'lolize'
    require 'lolize/auto'

You can even do this in your compass `config.rb`:

![Compass watch with lolize](http://miaout17.github.com/lolize/lolize-compass.png)

## Why lolize

Why ask? Just for fun LOL.

## Why not pipe with lolcat?

If you try this:

    rails c 2>&1 | lolcat

You will find that the last line won't be displayed forever.
It seems hard to solve this problem, some platform-dependent C-extension is needed. 

## License

MIT License
