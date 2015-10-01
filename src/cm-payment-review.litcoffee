# Overview

# The `cm-payment-review` Element

    Polymer 'cm-payment-review',

      getCookie: (name) ->
        nameEQ = name + "="
        ca = document.cookie.split(";")
        i = 0

        while i < ca.length
          c = ca[i]
          c = c.substring(1, c.length)  while c.charAt(0) is " "
          return c.substring(nameEQ.length, c.length)  if c.indexOf(nameEQ) is 0
          i++
        ""

      created: ->

      ready: ->
        @payment_count = "..."
        @lastReviewDate = @getCookie("cmpaymentlastreviewdate")

      attached: ->

      domReady: ->

      detached: ->

      onResponse: (e, response) ->
        console.log response.response[0][""]
        @payment_count = response.response[0][""]

      onError: (e, response) ->
        console.error "cm-payment-review. error"
        @payment_count = "?"

      onComplete: ->
