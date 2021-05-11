defmodule PagedQuery.Factory do
  use ExMachina.Ecto, repo: PagedQuery.TestRepo

  def blog_factory do
    %PagedQuery.Blog{
      title: sequence(:title, &"Blog Post #{&1}"),
      body: """
      I'm baby ethical adaptogen tilde, four dollar toast VHS affogato man braid etsy
      pok pok. Ugh drinking vinegar mixtape art party. Neutra bushwick normcore air
      plant whatever. Drinking vinegar cloud bread pork belly, meditation lyft ennui
      squid distillery you probably haven't heard of them banjo next level +1 cray
      meggings. Quinoa pork belly everyday carry you probably haven't heard of them ugh.
      """
    }
  end
end
