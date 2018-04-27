class ChatMessagesController < ApplicationController
  before_action :set_chat_message, only: [:show, :edit, :update, :destroy]

  def index
    @latest_messages = ChatMessage.order('created_at DESC').limit(10).reverse
    @msgs_num = ChatMessage.count
    @msgs = ChatMessage.all
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
