mongoose = require 'mongoose'
Schema = mongoose.Schema



UserSchema.plugin mongooseAuth,

  # Here, we attach your User model to every module
  everymodule:
    everyauth:
      User: ->
        User

  password:
    # THIS NEXT LINE IS THE ONLY ADDITION
    loginWith: "email"
    extraParams:
      name: String

    everyauth:
      getLoginPath: "/login"
      postLoginPath: "/login"
      loginView: "login.html"
      getRegisterPath: "/register"
      postRegisterPath: "/register"
      registerView: "register.html"
      loginSuccessRedirect: "/"
      registerSuccessRedirect: "/"
