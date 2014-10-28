module ApplicationHelper
  def link_to(title, path)
    '<a href="' + path + '">' + title + '</a>'
  end
end
