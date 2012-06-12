class CreateMovies < ActiveRecord::Migration
  def up
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.string 'description'
      t.datetime 'release_date'
      #Add fields that let Rails Automatically keep track of when  the movies was added/modified:
      t.timestamps
    end
  end

  def down
  drop_table 'movies' #this is used to delete if any old table is already present
  end
end
