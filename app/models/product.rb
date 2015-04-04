class Product < ActiveRecord::Base
def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      Product.all
    end
  end
end

