module ClientsHelper
  
  def band_helper(client)
    if client.band  
      content_tag(:li, 'The client is bringing their own band', class: "list-group-item")
    else
      content_tag(:li, 'The client will not be providing musicians.', class: "list-group-item")
    end
  end

  def drums_helper(client)
    if client.drums  
      content_tag(:li, 'The client will be bringing their own drums. Make sure to let them know to come early to set up!', class: "list-group-item")
    else
      content_tag(:li, 'The client will be using in house drums (if available).', class: "list-group-item")
    end
  end
end
