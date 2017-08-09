#
# EDN or Extensible Data Notation (pronounced EEd-n, as in that one myth.)
# SEE: https://github.com/edn-format/edn
# HOME:

use v6;
package Grammar::EDN;





# This package is written in the Literate Programming style, in a practice
# for myself. It should be considered UNSAFE to use, and in no way correct.

grammar EDN {

# All things are things only insofar as we use them in relation to other things.
# This philosophical insight is found in Process studies (a favorite of mine) but
# also by computer scientists who have revolutionized (literally) the way we
# think about 'facts' and their atomic nature.

  token delemeters { <vector> <list> <map> }


#  The first thing we must define is how things can be grouped. Without this, we
#  would be unable to differentiate between what contains itself and what doesnt.
#  The three primary groupings are as follows: lists, vectors, and maps.
#
#  Before we talk about all the things which can be found in our representation of the world,
# we need to describe the structures and events that allow us to be in that representation. In
# this case, we are primarily concerned with things that _are_, but there are also things which
# _are_ only in respect to the whole and not the parts we wish to identify. Here we will describe
# specifically [whitespace] and [comments]

  token whitespace { \s }
  token comments { ";" <string> }

  token vector    { "[" <content> "]" }
  token list      { "(" <content> ")" }  ### NOTE that lists are not actually different from
  token map       { "{" <content> "}" }  ### different from vectors, except in the expectations
  token set       { "#{" <content> "}" } ### of how we treat them.

  token content { <nil> | <boolean> | <number> | <string> }

# content comes in units????


  token nil { "nil" }
  token boolean { "true" | "false" }


  token number { Int:D | Num:D }
  token string { "etcgoeshere" }

  token symbol { rx/[\w                         # words, or `alnum` in Perl6
                    . * + ! - _ ? $ % & = < >   # these characters
                    \/?                         # and UP TO 1 "/" (namespace char)
                    ]}

  token keyword { ":" ~~ <symbol> }

  token tag { "#" ~~ <symbol> }

  token discard {}
  token instant {}
  token uuid {}
}

class EDN {
method verify-set-elements-for-uniqueness() {
 as unique
}

method verify-list-utilization(&*function $list —> Bool:D) {}

	method verify-namespace-rules($keyword —> Bool:D)

}
