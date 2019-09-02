class ArtworksController < ApplicationController
    def index
        user = User.find(params[:user_id])
        render json: user.artworks
    end

    def create
        artwork = Artwork.new(artwork_params)

        if artwork.save
            render json: artwork
        else
            render json: Artwork.errors.full_messages, status: :unprocessable_entity
        end  
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render json: artwork
    end

    def update
        artwork = Artwork.find(params[:id])
         if artwork.update(artwork_params)
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end  
    end

    private

    def artwork_params
       params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
 
end

#Schema

# create_table "artworks", force: :cascade do |t|
#     t.string "title", null: false
#     t.string "image_url", null: false
#     t.integer "artist_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["artist_id", "title"], name: "index_artworks_on_artist_id_and_title", unique: true
#   end