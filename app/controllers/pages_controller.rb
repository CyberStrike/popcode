class PagesController < PublicController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if ENV['COMING_SOON'] == 'true'
    end
  end

  def coming_soon

  end

end
