Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'book_nginx'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete],
      credentials: true
    end
  end