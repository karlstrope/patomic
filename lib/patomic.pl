
package patomic;

=begin comment

The data model in Datomic is based around atomic facts called datoms. A datom
is an ordered 5-tuple consisting of
    (1) Entity ID
    (2) Database ID
    (3) Attribute
    (4) Value
    (5) Transaction ID

You can think of the database as a flat set of datoms of the form:

[<entity-id> <database-id> <attribute> <value> <transaction-id>]

Mostly we are concerned with the Attribute and Value pairs, as those reflect
some correspondence between our database and the external world which
is being represented within. The Entity ID and Transaction ID are integers which
auto-increment by the software, and should never be directly accessed by users.

'' literal
"" string
[] = list or vector
{} = map {k1 v1 ...}
() grouping
| choice
? zero or one
+ one or more


=end comment

method assert {
  verify_state ->
  write_new_state
};

method read;

method accumulate;

method retract;

method index {
  sub EAVT;
  sub AEVT;
  sub AVET;
  sub VAET;
};
