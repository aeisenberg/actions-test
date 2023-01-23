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
  MethodCall mc
where testExtensible(i, b, f, s) and mc.getName() = "log"
select "Value: " + i + b + f + s, mc
