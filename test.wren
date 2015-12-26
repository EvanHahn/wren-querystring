import "please" for Please
import "querystring" for QueryString

var query = QueryString.new()

Please.deepEqual(query.parse(""), {})

System.print("All tests pass!")
