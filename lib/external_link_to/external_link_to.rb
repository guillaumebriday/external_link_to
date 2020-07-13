# frozen_string_literal: true

require 'action_view'

module ExternalLinkTo # rubocop:disable Style/Documentation
  include ActionView::Helpers::UrlHelper

  def external_link_to(*args, &block)
    name = block_given? ? capture(&block) : args.shift
    options = args.shift || {}
    html_options = args.shift || {}

    url = url_for(options)

    html_options[:rel] ||= 'noopener noreferrer'
    html_options[:target] ||= '_blank'

    link_to(name, url, html_options)
  end
end

ActiveSupport.on_load :action_view do
  include ExternalLinkTo
end
