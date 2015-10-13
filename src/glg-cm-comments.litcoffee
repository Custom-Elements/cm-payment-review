# Overview

# The `glg-cm-comments` Element

    Polymer 'glg-cm-comments',

      created: ->

      ready: ->
        @payment_count = "..."

      attached: ->

      domReady: ->

      detached: ->

      onResponse: (e, response) ->
        @comment_count = response.response[0]["comment_count"]

      onError: (e, response) ->
        console.error "glg-cm-comments. error"
        @payment_count = "?"

      onComplete: ->
