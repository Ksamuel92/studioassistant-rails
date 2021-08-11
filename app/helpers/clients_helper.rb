module ClientsHelper
  
  def band_helper(client)
    if client.band  
      content_tag(:p, 'The client is bringing their own band')
    else
      content_tag(:p, 'The client will not be providing musicians.')
    end
  end

  def drums_helper(client)
    if client.drums  
      'The client will be bringing their own drums. Make sure to let them know to come early to set up!'
    else
      'The client will be using in house drums (if available).'
    end
  end
end
