defmodule Rabbit do
  def connect(routing_key) do
    {:ok, conn} = AMQP.Connection.open()
    {:ok, channel} = AMQP.Channel.open(conn)
    AMQP.Queue.declare(channel, routing_key)
    {:ok, conn, channel}
  end

  def publish(channel, routing_key, data, opts \\ []) do
    AMQP.Basic.publish(channel, "", routing_key, data, opts)
  end

  def close(conn) do
    AMQP.Connection.close(conn)
  end
end
