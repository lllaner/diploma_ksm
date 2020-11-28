class ImportWorkersService
  require 'csv'
  attr_accessor :file, :errors, :csv_workers
  ALLOWED_ATTRIBUTES = %w[name phone].freeze

  def initialize(file)
    @file = file
    @errors = []
    @csv_workers = CSV.read(file.path, headers: true)
  end

  def import
    worker_params = Worker.new.attributes.keys

    @csv_workers.each do |row|
      parameters = {}
      row.to_hash.values.each_with_index do |item, index|
        parameters[worker_params[index]] = item
      end
      Worker.create(parameters)
    end

  end
end
