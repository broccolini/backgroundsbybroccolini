module ApplicationHelper
  def link_to_download(background)
    slug  = background.name.downcase.gsub(/ |-/, "_")
    brand = background.brand.name
    url   = "https://github.com/broccolini/background_downloads/blob/master/downloads/#{brand}/#{slug}.png"
    link_to "Download", url
  end
end
