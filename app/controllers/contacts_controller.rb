class ContactsController < PublicController
  expose(:contacts)
  expose(:contact)

  def create
    if contact.save
      flash[:notice] = t(:we_will_contact_you_shortly)
      redirect_to contact_us_path
    else
      render :new
    end
  end
end
