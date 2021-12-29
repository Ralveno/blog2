class Article < ApplicationRecord
    has_rich_text :content        
    belongs_to :user #campo adicional  nombre del modelo en minusculas en singular
end
