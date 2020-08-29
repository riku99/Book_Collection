Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000', 'book_nginx'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete],
      credentials: true
    end
  end