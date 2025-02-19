class AboutController < ApplicationController
  def about_action
    UserMailer.notifier(request.protocol, request.host_with_port).deliver
  end

  def al_raedah_financing
    # Your logic here
    render 'al_raedah_financing' # Renders /
  end
end
