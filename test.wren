import "please" for Please
import "querystring" for QueryString

var query = QueryString.new()

Please.deepEqual(query.parse(""), {})
Please.deepEqual(query.parse("ugh"), {})
Please.deepEqual(query.parse("ugh="), {
  "ugh": ""
})
Please.deepEqual(query.parse("foo=boo"), {
  "foo": "boo"
})
Please.deepEqual(query.parse("foo=boo&"), {
  "foo": "boo"
})
Please.deepEqual(query.parse("foo=boo&bar=123"), {
  "foo": "boo",
  "bar": "123"
})
Please.deepEqual(query.parse("foo=boo&bar=123&bar=456"), {
  "foo": "boo",
  "bar": "123"
})

System.print("All tests pass!")
