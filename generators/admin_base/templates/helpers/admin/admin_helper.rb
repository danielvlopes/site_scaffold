module Admin::AdminHelper

  def admin_page_header(text)
    content_for(:page_header){text}
  end

  def niceditor
    javascript_tag "bkLib.onDomLoaded(nicEditors.allTextAreas({buttonList : ['bold','italic','underline','link','ol','ul']}));"
  end

end
