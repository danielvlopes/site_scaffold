function mark_for_destroy(element){
	$(element).siblings('.should_destroy').val(1);
	$(element).parents('.image_field').hide();
}