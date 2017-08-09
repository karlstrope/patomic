# Journal 1, August 8, 2017

The first thing I should say is that I have absolutely no idea what I am doing.
In some ways I could claim that I know _what_ I want, but if I have no idea
_how_ to accomplish these things. This is the difference between knowing 'that'
and knowing 'how'. With that being said, here's my basic thinking.

## EDN

Yesterday I started with a very rough grammar based on the [
EDN 'spec'](https://github.com/edn-format/edn) published
by Rich Hickey on github. I believe an actually working implementation is found
in the Clojure language [here](https://github.com/clojure/clojure/blob/964232c7bf442787740fa0200b289b3495b1ec09/src/jvm/clojure/lang/EdnReader.java)
but I'm not well-versed enough to understand it quite yet. Mostly what I'm working
from is the documentation provided from [Datomic](http://www.datomic.com) and
the great [Learn Datalog Today](http://www.learndatalogtoday.org). Today I'll
download an instance of Datomic to start getting a feel for how I use it. I like
EDN because it corresponds nicely to my understanding of Atomic Facts (in
the philosophical sense explored in the beginning of the 20th century), and
eventually I want this software to be _useful_ for actually reasoning about the
real world, but I need more work before I'm even close to accomplishing anything
along those lines.
