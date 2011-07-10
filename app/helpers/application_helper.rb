module ApplicationHelper
  def link_to_download(background)
    brand_slug      = sluggify(background.brand.name)
    background_slug = sluggify(background.name)
    url   = "https://github.com/broccolini/background_downloads/raw/master/downloads/#{brand_slug}/#{background_slug}.png"
    link_to "Download", url
  end
end
