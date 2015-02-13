# Allows for the use of Rails protect_from_forgery
DS.RESTAdapter.reopen
  headers: "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')
