json.extract! book, :id, :title, :image, :description, :genre, :author, :length, :created_at, :updated_at
json.url book_url(book, format: :json)
