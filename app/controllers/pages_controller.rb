class PagesController < ApplicationController
  def home
  end

  def rooms
    @rooms = Room.all
  end

  def admin
    @enquiries = Enquiry.all
  end

  def contact
  end

  def about
  end

  def enquiry
    @enquiry = Enquiry.new(enquiry_params)

      respond_to do |format|
        if @enquiry.save
          format.html { redirect_to root_path, notice: 'Enquiry successful!'}
        else
          format.html { render :contact }
          format.html { render json: @enquiry.errors, status: :unprocessable_entity }
        end
      end
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:name, :email, :phone, :room, :message)
  end

end
