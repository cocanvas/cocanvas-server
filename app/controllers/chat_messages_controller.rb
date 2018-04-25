class ChatMessagesController < ApplicationController
  before_action :set_chat_message, only: [:show, :edit, :update, :destroy]

  def index
    @latest_messages = ChatMessage.order('created_at DESC').limit(10).reverse
    render json: @latest_messages.to_json
  end

  def create
    @chat_message = ChatMessage.new(chat_message_params)
    respond_to do |format|
      if @chat_message.save

        format.json { render json: @chat_message.to_json }

      else
        format.html { render :new }
        format.json { render json: @coordinate.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chat_message
    @chat_message = ChatMessage.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def chat_message_params
    params.require(:chat_message).permit(:content, :user_id)
  end
end
