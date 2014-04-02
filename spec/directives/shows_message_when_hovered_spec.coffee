describe "directive: shows-message-when-hovered (vanilla jasmine, coffeescript)", ->
  beforeEach ->
    module "app"
    return

  beforeEach inject(($rootScope, $compile) ->
    @directiveMessage = "ralph was here"
    @html = "<div shows-message-when-hovered message='" + @directiveMessage + "'></div>"
    @scope = $rootScope.$new()
    @scope.message = @originalMessage = "things are looking grim"
    @elem = $compile(@html)(@scope)
    return
  )
  describe "when a user mouses over the element", ->
    it "sets the message on the scope to the message attribute of the element", ->
      @elem.triggerHandler "mouseenter"
      expect(@scope.message).toBe @directiveMessage
      return

    return

  describe "when a users mouse leaves the element", ->
    it "restores the message to the original", ->
      @elem.triggerHandler "mouseleave"
      expect(@scope.message).toBe @originalMessage
      return

    return

  return

