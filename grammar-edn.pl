#
# EDN or Extensible Data Notation (pronounced EEd-n, as in that one myth.)
# https://github.com/edn-format/edn
use v6;
package Grammar::EDN;

# 888               888 888
# 888               888 888
# 888               888 888
# 88888b.   .d88b.  888 888  .d88b.
# 888 "88b d8P  Y8b 888 888 d88""88b
# 888  888 88888888 888 888 888  888
# 888  888 Y8b.     888 888 Y88..88P
# 888  888  "Y8888  888 888  "Y88P"  



# This package is written in the Literate Programming style, in a practice
# for myself. It should be considered UNSAFE to use, and in no way correct.

grammar EDN {

# All things are things only insofar as we use them in relation to other things.
# This philisophical insight is found in Process studies (a favorite of mine) but
# also by computer scientists who have revolutionized (literally) the way we
# think about 'facts' and their atomic nature.

  token delimeters { <vector> <list> <map> }

# The first thing we must define is how things can be grouped. Without this, we
# would be unable to differentiate between what contains itself and what doesn't.
# The three primary groupings are as follows: lists, vectors, and maps.

  token whitespace { \s }
  token comments { ";" <string> }

  token vector    { "[" <content> "]" }
  token list      { "(" <content> ")" }
  token map       { "{" <content> "}" }
  token set       { "#{" <content> "}" }

  token content { <nil> | <boolean> | <number> | <string> }

  token nil { "nil" }
  token boolean { "true" | "false" }
  token number { Int:D | Num:D }
  token string { "etcgoeshere" }

  token symbol { rx/[\w                         # words, or `alnum` in Perl6
                    . * + ! - _ ? $ % & = < >   # these characters
                    \/?                         # and UP TO 1 "/"
                    ]}

  token keyword { ":" ~~ <symbol> }

  token tag { "#" ~~ <symbol> }

  token discard {}
  token instant {}
  token uuid {}
}
