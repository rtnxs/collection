# frozen_string_literal: true

module ApplicationHelper
  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
