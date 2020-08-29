Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000', 'riku_book_book_nginx_1'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete],
      credentials: true
    end
  end