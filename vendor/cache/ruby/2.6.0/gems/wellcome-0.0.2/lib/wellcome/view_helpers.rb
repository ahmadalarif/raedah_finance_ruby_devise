module Wellcome
  module ViewHelpers

    # <%= wellcome('My message') %>
    def wellcome(message = 'Welcome to my app!')
      message.html_safe
    end

  end
end