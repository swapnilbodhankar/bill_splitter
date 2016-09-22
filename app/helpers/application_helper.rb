module ApplicationHelper

  def flash_class(level)
    case level
    when "success"
      "alert-success"
    when "error"
      "alert-danger"
    when "alert"
      "alert-warning"
    when "notice"
      "alert-info"
    else
      # flash_type.to_s
    end
  end
end
