module InputHelpers
    
## Send Values ########################################################################
=begin 
The send_text_to_input method sends provided text to input field with given
element_warehouse_name
=end
    def send_text_to_input(element_warehouse_name, text)
        return eval(element_warehouse_name + ".send_text('" + text + "')")
    end

    def send_text_to_inputs(inputs, text)
        inputs.each { |single_input| send_text_to_input(single_input, text) }
    end

    def element(element_warehouse_name)
        return eval(element_warehouse_name)
    end

    def is_checked(checkbox)
        return checkbox.find_el.selected?
    end
#######################################################################################

  end