module ApplicationHelper
  def link_to_download(background)
    slug  = background.name.downcase.gsub(/ |-/, "_")
    brand = background.brand.name.downcase.gsub(/ |-/, "_")
    url   = "https://github.com/broccolini/background_downloads/raw/master/downloads/#{brand}/#{slug}.png"
    link_to "Download", url
  end
end
