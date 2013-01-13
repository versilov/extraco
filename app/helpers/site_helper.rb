module SiteHelper
  def current_path_includes?(path)
    if path.length > 1
      request.path.start_with?(path) 
    else
      current_page?(path)
    end
  end

  def nav_link(link_text, link_path)
    class_name = current_path_includes?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
end
