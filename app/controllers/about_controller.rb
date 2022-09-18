class AboutController < ApplicationController
    def about_action
      UserMailer.notifier(request.protocol, request.host_with_port).deliver
     end
  end


