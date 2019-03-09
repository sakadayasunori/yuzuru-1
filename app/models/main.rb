class Main < ApplicationRecord
  def self.search(search)
     if search
       Main.where(['content LIKE ?', "%#{search}%"])
     else
       Main.all
     end
  end
end
