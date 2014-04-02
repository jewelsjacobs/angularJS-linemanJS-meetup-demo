describe "controller: LoginController ($httpBackend.expect().respond, vanilla jasmine, javascript)", ->
  beforeEach ->
    module "app"
    return

  beforeEach inject(($controller, $rootScope, $location, AuthenticationService, $httpBackend) ->
    @$location = $location
    @$httpBackend = $httpBackend
    @scope = $rootScope.$new()
    @redirect = spyOn($location, "path")
    $controller "LoginController",
      $scope: @scope
      $location: $location
      AuthenticationService: AuthenticationService

    return
  )
  afterEach ->
    @$httpBackend.verifyNoOutstandingRequest()
    @$httpBackend.verifyNoOutstandingExpectation()
    return

  describe "successfully logging in", ->
    it "should redirect you to /home", ->
      @$httpBackend.expectPOST("/login", @scope.credentials).respond 200
      @scope.login()
      @$httpBackend.flush()
      expect(@redirect).toHaveBeenCalledWith "/home"
      return

    return

  return

