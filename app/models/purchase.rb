class Purchase < ApplicationRecord
  # Constant
  KEYS = { new: 'new',
           prepared: 'prepared',
           running: 'running',
           suspended: 'suspended',
           concluded: 'concluded',
           cancelled: 'cancelled',
           closed: 'closed',
           annulled: 'annulled' }.freeze

  # MetaProgramming Methods
  Purchase::KEYS.each_value do |status_name|
    define_method("#{status_name}?") do |*_args| # or even |*args|
      status == status_name
    end
  end
end
