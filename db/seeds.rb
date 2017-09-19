10.times do |blog|
  Blog.create!(
    title: "Blog Post # #{blog +1}",
    body: "Today we are making some cake. do you like cake? I love cake, but not really. I kinda hate cake to be honest. Today we will murder cake"
    )
end