Review3App::Application.routes.draw do

  # Routes for the Book resource:
  # CREATE
  get '/books/new', controller: 'books', action: 'new', as: 'new_book'
  post '/books', controller: 'books', action: 'create'

  # READ
  get '/books', controller: 'books', action: 'index', as: 'books'
  get '/books/:id', controller: 'books', action: 'show', as: 'book'

  # UPDATE
  get '/books/:id/edit', controller: 'books', action: 'edit', as: 'edit_book'
  put '/books/:id', controller: 'books', action: 'update'

  # DELETE
  delete '/books/:id', controller: 'books', action: 'destroy'
  #------------------------------

end
