defmodule Receiver do
  def wait_for_messages do
    receive do
      {:basic_deliver, payload, _meta} ->
        IO.puts(" [x] Received #{payload}")
        wait_for_messages()
    end
  end

  def init do
    {:ok, conn, channel} = Rabbit.connect("hello")

    AMQP.Basic.consume(
      channel,
      "hello",
      # consumer process, defaults to self()
      nil,
      no_ack: true
    )

    wait_for_messages()
  end
end
