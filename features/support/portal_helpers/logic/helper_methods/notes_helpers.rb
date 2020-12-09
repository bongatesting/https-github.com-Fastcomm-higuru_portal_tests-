module NotesHelpers
  def find_note(note)
    notes_table = note_add_modal_note_table.find_el
    if notes_table.find_element(:xpath, "//p[contains(text(), '#{note}')]")
      return true
    end
    raise "** Could not find Note: #{note}, inside the notes table **"
  end

  def find_no_note(note)
    notes_table = note_add_modal_note_table
    if notes_table.find_arr.count != 0
      if notes_table.find_el.find_elements(:xpath, "//p[contains(text(), '#{note}')]").count > 0
        raise "** Could not find Note: #{note}, inside the notes table **" 
      end
        return true
    else
      return true
    end
  end
end