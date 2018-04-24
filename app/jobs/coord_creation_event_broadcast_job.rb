class CoordCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(coord)

    ActionCable
      .server
      .broadcast('coord_channel',
                 colour: coord.colour,
                 x: coord.x,
                 y: coord.y,
                 user_id: coord.user_id)
  end
end