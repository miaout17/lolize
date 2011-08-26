# Lolize

Colorize your ruby output with rainbow :)

The colorize algorithm is based on [lolcat](https://github.com/busyloop/lolcat).

## How to lolize

In your ruby code/irb:

    gem 'lolize'
    require 'lolize/auto'

Bundler Gemfile:

    gem 'lolize', :require => 'lolize/auto'

## Why lolize

Why ask? Just for fun LOL.

## Why not pipe with lolcat?

If you try this:

    rails c 2>&1 | lolcat

You will find that the last line won't be displayed forever.

## Caution

* This is just a fun project
* If something gets wrong within output hook, the program might crash silently
* Never use this in your production project!!!!

## License

MIT License
