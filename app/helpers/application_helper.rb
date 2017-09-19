module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Sign Up", new_user_registration_path) +
      " ".html_safe +
      (link_to "Login", new_user_session_path)
    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Blogs'
      },
      {
        url: pages_police_path,
        title: 'Police'
      },
      {
        url: pages_destiny_path,
        title: 'Destiny'
      },
      {
        url: pages_hunter_path,
        title: 'Hunter'
      },
      {
        url: pages_titan_path,
        title: 'Titan'
      },
            {
        url: pages_worlock_path,
        title: 'Worlock'
      },
      {
        url: pages_shiny_path,
        title: 'Shiny'
      },
      {
        url: pages_this_path,
        title: 'This'
      },
      {
        url: pages_is_path,
        title: 'is'
      },
      {
        url: pages_sparta_path,
        title: 'SPARTA'
      },
      {
        url: pages_tiny_tim_path,
        title: 'Tiny Tim'
      },
    ]
  end
  def nav_items_row_2
    [
      {
        url: pages_crowbar_path,
        title: 'Crowbar'
      },
      {
        url: pages_cheetos_path,
        title: 'Cheetos'
      },
      {
        url: pages_lips_path,
        title: 'Lips'
      },
      {
        url: pages_stomach_path,
        title: 'Stomach'
      },
            {
        url: pages_about_path,
        title: 'About'
      },
      {
        url: pages_crowds_path,
        title: 'Crowds'
      },
      {
        url: pages_cakes_path,
        title: 'Cakes'
      },
      {
        url: pages_skin_dongle_path,
        title: 'Creepy Pastas'
      },
      {
        url: pages_sugars_path,
        title: 'Sugars'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def nav_helper_row_2 style, tag_type
    nav_links_2 = ''

    nav_items_row_2.each do |item|
      nav_links_2 << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links_2.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
