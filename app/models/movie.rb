class Movie < ActiveRecord::Base
    def self.create_with_title(a)
        self.create(title: a)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id id
        self.find(id)
    end

    def self.find_movie_with_attributes (yes)
        self.find_by(yes)
    end

    def self.find_movies_after_2002
        self.where(["release_date > ?",2002])
    end

    def update_with_attributes (x)
        self.update(x)
    end
    
    def self.update_all_titles (a)
        self.update(title: a)
    end

    def self.delete_by_id (a)
        self.destroy(a)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end