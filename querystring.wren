class QueryString {
  construct new() {}

  parse(str) {
    var result = {}

    var addingToKey = true
    var currentKey = ""
    var currentValue = ""
    for (c in str) {
      if (c == "&") {
        addKey_(result, currentKey, currentValue)
        currentKey = ""
        currentValue = ""
        addingToKey = true
      } else if (c == "=") {
        addingToKey = false
      } else if (addingToKey) {
        currentKey = currentKey + c
      } else {
        currentValue = currentValue + c
      }
    }

    if (!addingToKey) {
      addKey_(result, currentKey, currentValue)
    }

    return result
  }

  addKey_(result, key, value) {
    if ((key.count != 0) && !result.containsKey(key)) {
      result[key] = value
    }
    return result
  }
}
