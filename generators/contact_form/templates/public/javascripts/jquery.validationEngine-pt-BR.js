(function($) {
	$.fn.validationEngineLanguage = function() {};
	$.validationEngineLanguage = {
		newLang: function() {
			$.validationEngineLanguage.allRules = {"required":{
						"regex":"none",
						"alertText":"* Este campo é obrigatório",
						"alertTextCheckboxMultiple":"* Escolha uma opção",
						"alertTextCheckboxe":"* Este campo é obrigatório"},
					"length":{
						"regex":"none",
						"alertText":"* Entre ",
						"alertText2":" e ",
						"alertText3":" carácteres obrigatórios"},
					"minCheckbox":{
						"regex":"none",
						"alertText":"* Excedeu o limite de carácteres"},
					"confirm":{
						"regex":"none",
						"alertText":"* Campos não conferem"},
					"telephone":{
						"regex":"/^[0-9\-\(\)\ ]+$/",
						"alertText":"* Número de telefone é inválido"},
					"email":{
						"regex":"/^[a-zA-Z0-9_\.\-]+\@([a-zA-Z0-9\-]+\.)+[a-zA-Z0-9]{2,4}$/",
						"alertText":"* Email inválido"},
					"date":{
							"regex":"/^[0-9]{4}\-\[0-9]{1,2}\-\[0-9]{1,2}$/",
								"alertText":"* Data inválida, formato deve ser YYYY-MM-DD"},
					"onlyNumber":{
						"regex":"/^[0-9\ ]+$/",
						"alertText":"* Apenas números"},
					"noSpecialCaracters":{
						"regex":"/^[0-9a-zA-Z]+$/",
						"alertText":"* Apenas carácteres"},
					"onlyLetter":{
						"regex":"/^[a-zA-Z\ \']+$/",
						"alertText":"* Apenas letras"}
				}
		}
	}
})(jQuery);

$(document).ready(function() {
	$.validationEngineLanguage.newLang()
});