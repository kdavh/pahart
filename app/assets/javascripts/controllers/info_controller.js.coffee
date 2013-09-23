Pah.InfoController = Ember.Controller.extend
  contactEmail: ->
    $.post(
      "/contact", {
        name: @get("name"),

        # these two fields should be filled in by spam bots
        email: @get("email"),
        email: @get("email1"),

        email2: @get("email2"),
        subject: @get("subject"),
        note: @get("note")
      }
    ).then(
      (=> 
        @set("contactSent", true)
      ), 
      (=> 
        @set("contactFailed", true)
      )
    )
