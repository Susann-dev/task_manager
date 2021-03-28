class Task < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_by_name_and_description,
      against: [ :name, :description ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
end
