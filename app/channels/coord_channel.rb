class CoordChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'coord_channel'
  end

  def unsubscribed;
  end

  def create(opts)
    coord = opts['coordinate']
    Coordinate.create(
      colour: coord.fetch('colour'),
      x: coord.fetch('x'),
      y: coord.fetch('y'),
      user_id: coord.fetch('user_id')
    )
    coordinates = Coordinate.all
    coords_num = Coordinate.count
    oldestCoord = Coordinate.order('created_at ASC').limit(1)
    oldestCoord.destroy
    # if coords_num > 9000
    #   oldestCoords = Coordinate.order('created_at ASC').limit(100)
    # end
  end
end
