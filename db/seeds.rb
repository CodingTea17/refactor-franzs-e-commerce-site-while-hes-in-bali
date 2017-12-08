User.destroy_all

class Seed
  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.conjure_admin
  end

  def generate_products
    20.times do |i|
      Product.create!(
              name: Faker::Lorem.word,
              price: rand(10...100),
              description: Faker::Lorem.sentence(5, false, 0).chop,
              image: URI.parse(Faker::LoremPixel.image("600x600")),
      )
    end
  end

  def conjure_admin
    User.create!(:name => "AddyAdmin", :email => "admin@admin.com", :password => "password", :admin => true)
  end
end

Seed.begin
