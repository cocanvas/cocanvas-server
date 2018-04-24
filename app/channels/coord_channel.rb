class CoordChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'coord_channel'
  end

  def unsubscribed;
  end

  def create(opts)
    coord = opts['coordinate']
    Coordinate.create(colour: coord.fetch('colour'),
                      x: coord.fetch('x'),
                      y: coord.fetch('y'),
                      user_id: coord.fetch('user_id')

    )
  end
end