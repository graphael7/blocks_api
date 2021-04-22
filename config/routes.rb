Rails.application.routes.draw do
  root "x_blocks#admin"

  get    '/admin',           to: 'x_blocks#admin',            as: :admin
  get    '/xblocks',           to: 'x_blocks#index'
  post   '/xblocks',           to: 'x_blocks#create'
  get    '/xblocks/new',       to: 'x_blocks#new',              as: :new_user
  get    '/xblocks/:id/edit',  to: 'x_blocks#edit',             as: :edit_user
  get    '/xblocks/:id',       to: 'x_blocks#show',             as: :user
  patch  '/xblocks/:id',       to: 'x_blocks#update'
  put    '/xblocks/:id',       to: 'x_blocks#update'
  delete '/xblocks/:id',       to: 'x_blocks#destroy'

end
