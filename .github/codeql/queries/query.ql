/**
 * @kind problem
 * @id test-internal-data-extensions
 */
import javascript

extensible predicate testExtensible(
  int i,
  boolean b,
  float f,
  string s);

from
  int i,
  boolean b,
  float f,
  string s,
  Module m
where testExtensible(i, b, f, s) and m.getName().length() > 0
select "Value: " + i + b + f + s, m
