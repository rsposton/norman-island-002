module SectionsHelper

  def editors(id)
    list = ""
    section = Section.find(id)
    section.editors.each do |editor|
      list.blank? ? list = editor.last_name : list = "#{list}, #{editor.last_name}"
    end
    list
  end

end
