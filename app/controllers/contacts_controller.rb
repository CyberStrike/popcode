class ContactsController < PublicController
  expose(:contacts){ Contact.order("id DESC").scoped{} }
  expose(:contact, attributes: :contact_params)

  def create
    if contact.save
      flash[:notice] = "Thank you, for interest. We will be in contact shortly."
      redirect_to contact_us_path
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(
      :first_name,
      :last_name,
      :email,
      :phone,
      :comment
    )
  end
end
