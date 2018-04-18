class ContactController < ApplicationController

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to  contact_index_path, notice: 'Thanks for Contact us' }
      else
        render 'index'
      end
    end
  end

  private
  def contact_params
    params.require(:contact).permit!
  end

end
