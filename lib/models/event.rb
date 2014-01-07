class Event < ActiveRecord::Base
  belongs_to :conference
  has_many :recordings

  def get_poster_path
    if self.poster_filename
      "/media/#{self.poster_filename}"
    end
  end

end
