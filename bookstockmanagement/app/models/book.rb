class Book < ApplicationRecord

    validates :bookName, :bookAuthor, presence: true, length: {in: 1..100}  , uniqueness: true
    validates :bookQuantity, numericality: {only_integer: true}, allow_blank: true

end