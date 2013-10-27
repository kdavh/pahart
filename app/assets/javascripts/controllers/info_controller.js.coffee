Pah.InfoController = Ember.Controller.extend
  contactEmail: ->
    $('#email-sending-loader').removeClass('hidden')
    $('#contact-content .error').removeClass('error')
    contactAjaxRequest = $.post(
      "/contact", {
        name: @get("name"),

        # these two fields should be filled in by spam bots
        email: @get("email"),
        email1: @get("email1"),

        email2: @get("email2"),
        subject: @get("subject"),
        note: @get("note")
      }
    )

    contactAjaxFinished = contactAjaxRequest.then(
      (=> 
        $('#email-sending-loader').addClass('hidden')
        $('#contact-content input[type="text"], #contact-content textarea').val('')
        @set("contactSent", true)
        setTimeout (=> 
          $('.alert-box').fadeOut 500, =>
            @set("contactSent", false)
        ), 4000
      ), 

      ((data) => 
        $('#email-sending-loader').addClass('hidden')
        @set("contactFailed", true)
        $.each data.responseJSON.errors, (index, errorField) ->
          $(errorField).addClass('error')

        setTimeout (=> 
          $('.alert-box').fadeOut 500, =>
            @set("contactFailed", false)
        ), 4000
      )
    )
