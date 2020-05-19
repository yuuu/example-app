# frozen_string_literal: true

namespace :waterdrop do
  desc 'Generates messages to Kafka server'
  task :send do
    3.times do
      message = "test message"
      WaterDrop::SyncProducer.call(message, topic: 'test_topic')
    end
  end
end
