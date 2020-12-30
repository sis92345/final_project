$(document).ready(function () {


	$('.ui.dropdown').dropdown();
	$('.ui.dropdown').dropdown('show');
	
	$('.ui.form').form({
		on: 'blur',
    fields: {
      tag: {
        identifier: 'tag',
        rules: [
          {
            type   : 'empty',
            prompt : '태그가 없습니다'
          }
        ]
      },
      title: {
        identifier: 'title',
        rules: [
          {
            type   : 'empty',
            prompt : '제목이 없습니다'
          }
        ]
      },
      content: {
        identifier: 'content',
        rules: [
          {
            type   : 'empty',
            prompt : '내용이 없습니다'
          }
        ]
      }
    }
  });
	
	
});