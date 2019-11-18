module Types
  class QueryType < Types::BaseObject
    field :books, [Types::BookType], null: false

    def books
      Book.all
    end

    field :book, Types::BookType, null: false do
      #take an argument
      argument :id, ID, required: true
    end

    def book(id:)
      Book.find(id)
    end

    field :stores, [Types::StoreType], null: false

    def stores
      Store.all
    end

  

  end
end
