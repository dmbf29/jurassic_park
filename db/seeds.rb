# db/seeds.rb
Park.destroy_all if Rails.env.development?

park = Park.create!(
  name: "Jurassic Park",
  banner_url: "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555927186/shape/mentalfloss/0630_08_0.png"
)

Dinosaur.create!(
  name: "Yoshi",
  species: "chicken",
  image_url: "https://www.wikihow.com/images/thumb/3/36/Draw-Yoshi-from-Mario-Step-14.jpg/aid1511579-v4-728px-Draw-Yoshi-from-Mario-Step-14.jpg",
  park: park
)

Dinosaur.create!(
  name: "Barney",
  species: "t-rex",
  image_url: "https://static01.nyt.com/images/2017/04/09/arts/09BARNEY/09BARNEY-facebookJumbo.jpg",
  park: park
)

Dinosaur.create!(
  name: "Little Foot",
  species: 'brontisaurus',
  image_url: "https://i.imgur.com/tGMFnax.jpg",
  park: park
)

Food.destroy_all

foods = ['chicken', 'human', 'sandwich', 'leaves', 'curry', 'strong zero']
foods.each do |food|
  Food.create!(name: food)
end




