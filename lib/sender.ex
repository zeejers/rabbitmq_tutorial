defmodule Sender do
  def send_hello do
    {:ok, conn, channel} = Rabbit.connect("hello")
    res = Rabbit.publish(channel, "hello", "hi there")
    Rabbit.close(conn)
    res
  end
end
