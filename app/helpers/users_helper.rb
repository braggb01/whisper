module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    default_gravatar = URI.encode_www_form_component('https://businessleads.com/images/avatar_placeholder.jpg')
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=#{default_gravatar}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end


