module ActionHelpers

  def go_to(view)
    click view
  end

  def tap_on(elem)
    click elem
  end

  private 

  def click(elem)
    if elem.instance_of?(String)
      elem = eval(elem)
    end

    elem.tap_element
    wait_for_ajax_portal
  end

end