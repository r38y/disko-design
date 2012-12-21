module ApplicationHelper
  def gravatar_image_tag(email, options = {})
    size = options[:size].blank? ? 80 : options[:size]
    options[:width] = options[:height] = size
    image_tag( "https://secure.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.strip.downcase)}?s=#{size}".html_safe, options)
  end
end
