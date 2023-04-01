class MessagesController < ApplicationController

  def new

  end

  def create
    message = Message.new(message_params)
    if message.save
      redirect_to root_path
    else
      render "pages/home", status: :unprocessable_entity
    end
  end

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:first_name, :last_name, :date, :guests, :email_address, :phone_number, :message)
  end
end
