# db/seeds.rb
Park.destroy_all if Rails.env.development?

Park.create!(
  name: "Jurassic Park",
  banner_url: "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555927186/shape/mentalfloss/0630_08_0.png"
)
