protractor = require("protractor")
require "protractor/jasminewd"
describe "my angular app", ->
  ptor = undefined
  describe "visiting the books page", ->
    ptor = protractor.getInstance()
    beforeEach ->
      ptor.get "/list-of-books"
      return

    it "should show me a list of books", ->
      ptor.findElement(protractor.By.repeater("book in books").row(0)).getText().then (text) ->
        expect(text).toEqual "Great Expectations by Dickens"
        return

      ptor.findElement(protractor.By.repeater("book in books").row(1)).getText().then (text) ->
        expect(text).toEqual "Foundation Series by Asimov"
        return

      ptor.findElement(protractor.By.repeater("book in books").row(2)).getText().then (text) ->
        expect(text).toEqual "Treasure Island by Stephenson"
        return

      return

    return

  return

