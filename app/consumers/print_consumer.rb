# frozen_string_literal: true

# Consumer that includes some demo callbacks to show you how to use them
class PrintConsumer < ApplicationConsumer
  # Consumes given messages
  def consume
    Karafka.logger.info params_batch
  end
end
