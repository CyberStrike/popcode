class ContactController < PublicController
  protect_from_forgery with: :exception

  def index
    @contact = Contact.new(params[:client])
  end
end
