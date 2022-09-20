require "wellcome/version"
require "wellcome/view_helpers"

module Wellcome
  # Your code goes here...
end

ActionView::Base.send :include, Wellcome::ViewHelpers

