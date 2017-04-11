module ApplicationHelper
  def unsplash_image(keyword)
    image_tag "https://source.unsplash.com/featured?#{keyword}", class: 'full-width'
  end
end
