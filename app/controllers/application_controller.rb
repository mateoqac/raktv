class ApplicationController < ActionController::API

  def render_errors(*resources)
    options = resources.extract_options!
    json = {
      message: options.fetch(:message, 'Validation failed'),
      errors: collect_errors(resources)
    }
    render json: json, status: options.fetch(:status, :unprocessable_entity)
  end

  def collect_errors(resources)
    Array(resources).each_with_object({}) do |resource, hash|
      next if resource.nil?
      resource.errors.details.each do |key,value|
        camelize_errors(hash, key, value)
      end
    end.deep_symbolize_keys
  end

  def camelize_errors(hash, key, values)
    hash[key.to_s.camelize(:lower)] = values.map {|e| e[:error_code].to_s.camelize(:lower)}
  end
end
