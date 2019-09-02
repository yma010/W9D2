class Artwork < ApplicationRecord
    validates :artist_id, uniqueness: {scope: :title}

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer

    # self.get_artworks(id)
        
    # end
end