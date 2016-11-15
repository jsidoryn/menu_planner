module ApplicationHelper
  def present(model)
    klass = "#{model.class}Presenter".constantize
    presenter = klass.new(model, self)
    yield(presenter) if block_given?
  end

  # Render source code
  def render_source(code)
    @html_encoder ||= HTMLEntities.new
    raw(@html_encoder.encode(code))
  end

  # Change a country code to a human-readable country
  # Eg: AU = Australia
  def country_name(country_code)
    country = ISO3166::Country[country_code]
    country.name
  end

  # Yes or no, turns true/false in to yes/no
  def yes_or_no(value = false)
    value ? "Yes" : "No"
  end

  # Format share descriptions a bit nicer by converting <br> and
  # <br /> to spaces.
  def share_description(value)
    raw(value).gsub("<br>", " ").gsub("<br />", " ")
  end

  # Link helper
  # takes a URL and outputs a link with a custom label with http
  # and www stripped out
  def link_helper(url)
    # set up another variable for the link
    link = url

    # add http if missing from url
    if !url.include?("http://") && !url.include?("https://")
      url = "http://" + url
    end

    # strip out http/https from link
    if link.include?("http://") || link.include?("https://")
      link = link.split("://")[1]
    end

    # strip out the www from the link
    link = link.split("www.")[1] if link.include?("www.")

    # remove trailing slash
    link = link[0..(link.length - 2)] if link[link.length - 1].eql?("/")

    # return a link_to with the final link and url
    link_to(link, url)
  end

  # Icon Helper
  # <%= icon("close", width: 24, height: 24, stroke: "#BADA55", fill: "purple") -%>
  def icon(icon_path, options = {})
    options[:width] = 24 unless options[:width].present?
    options[:height] = 24 unless options[:height].present?
    options[:stroke] = "#000000" unless options[:stroke].present?
    options[:fill] = "#000000" unless options[:fill].present?
    options[:class] = "" unless options[:class].present?
    render("shared/icons/#{icon_path}", options: options)
  end

  # SVG Image Helper
  # Converts a dragonfly-stored SVG image to inline SVG with a missing
  # asset fallback.
  def svg_image(image)
    raw image.data
  rescue Dragonfly::Job::Fetch::NotFound
    "Image missing"
  end
end
