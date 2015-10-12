# Overview

# The `cm-payment-review` Element

    Polymer 'cm-payment-review',

      created: ->

      ready: ->
        @payment_count = "..."

      attached: ->

      domReady: ->

      detached: ->

      onResponse: (e, response) ->
        @payment_count = response.response[0]["payment_count"]

      onError: (e, response) ->
        console.error "cm-payment-review. error"
        @payment_count = "?"

      onComplete: ->
