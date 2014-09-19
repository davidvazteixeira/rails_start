module ApplicationHelper
  def flash_message
    messages = ""
    [:success, :info, :warning, :danger].each {|type|
      if flash[type]
        #messages += "<p class=\"#{type}\">#{flash[type]}</p><hr/>"
        #messages += 'david' + flash[type] + 'okok'
        messages += '<div class="alert alert-' + type.to_s + '" role="alert">' + flash[type] + '</div>'
      end
    }

    messages.html_safe
  end
end

#~
#~ module ApplicationHelper
  #~ def flash_message
    #~ messages = ""
    #~ [:success, :info, :warning, :danger].each {|t|
      #~ if flash[t]
        #~ messages += '<div class="alert alert-' + t + '" role="alert">' + flash[t] + '</div>'
      #~ end
    #~ }
#~
    #~ messages.html_safe
#~
  #~ end
#~ end
