class Categorium < ActiveRecord::Base
    has_and_belongs_to_many :articulos
end
