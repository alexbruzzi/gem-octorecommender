require 'predictor'
require 'octocore'

require 'octorecommender/recommenders'
require 'octorecommender/version'
require 'octorecommender/helpers'
require 'octorecommender/octohooks'
require 'octorecommender/scheduler'

module Octo

  # Override Octo's default connection to include
  #   connection to Predictor as well
  # See Octo#connect
  def self.connect(configuration)
    self._connect(configuration)
    Predictor.redis = Cequel::Record.redis
  end

end