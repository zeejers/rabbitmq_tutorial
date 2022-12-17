# RabbitmqTutorial

Hello World for RabbitMQ based on the guide from https://www.rabbitmq.com/tutorials/tutorial-one-elixir.html

## Installation

Make sure rabbitmq is installed locally, follow: https://www.rabbitmq.com/install-debian.html#apt-quick-start-cloudsmith

## Testing

Open two shells, and on each shell run iex -S mix

First, run the receiver in shell 1
Receiver:

```bash
Receiver.init()
```

Then, run the sender in shell 2
Sender:

```bash
Sender.send_hello()
```

You should see the message show up on the receiver screen!
