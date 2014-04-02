# books
exports.books = (req, res) ->
  res.json [
    {
      title: "Great Expectations"
      author: "Dickens"
    }
    {
      title: "Foundation Series"
      author: "Asimov"
    }
    {
      title: "Treasure Island"
      author: "Stephenson"
    }
  ]

# login
exports.login = (req, res) ->
  res.json message: "logging in!"

#logout
exports.logout = (req, res) ->
  res.json message: "logging out!"