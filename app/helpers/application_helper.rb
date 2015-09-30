module ApplicationHelper
  def cache_key_for(model_class, label="")
    class_name = model_class.name.downcase.pluralize
    count = model_class.count
    max_timestamp = model_class.maximum(:updated_at).try(:utc)
    [label, class_name, count, max_timestamp].join("-")
  end
end
