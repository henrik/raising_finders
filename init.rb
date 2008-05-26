module RaisingFinders
  def method_missing(name, *args)
    return super unless name.to_s =~ /^(find(_.+)?)!$/
    returning send($1, *args) do |result|
      raise ActiveRecord::RecordNotFound if result.blank?
    end
  end
end

class << ActiveRecord::Base
  include RaisingFinders
end
