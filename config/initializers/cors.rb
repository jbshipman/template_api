Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # this allow block provides access from localhost
  # all resources are available
  # any headers, and a broad range of methods
  # methods can be customized per application
  allow do
    origins "http://localhost:3001"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  # remove comment on below allow block when api is ready to deploy for production
  # update origin URL to match hosted
  # update methods to reflect api's needs
  # allow do
  #   origins "https://template_api.herokuapp.com"
  #   resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :optons, :head], credentials: true
  # end
end
