$(document).ready(function()
{
	 
	$("#date1").datepicker({});
	$("#date2").datepicker({});
	
    $('.__count_range input[count_range]').click(function(e)
    {
        e.preventDefault();
        var type = $(this).attr('count_range');
        var $count = $(this).parent().children('input.count');
        var count_val = $count.val();
        if(type=='m')
        {
            if(count_val<2)
            {
                return;
            }
            $count.val(parseInt(count_val)-1);
            $('#countAlert').hide();
        }
        else if(type=='p')
        {
        	if(count_val>9)
        	{
        		$('#countAlert').show();
        		return;
        	}
        	$count.val(parseInt(count_val)+1);
        	$('#countAlert').hide();
        }
    });
    
    
    $('input:checkbox[name=loc]').click(function()
    {
		if($(this).is(':checked'))
		{
			$(this).parent('label').css('color', '#2E64FE');
		}
		else
		{
			$(this).parent('label').css('color', '#848484');
		}
	});
    
    
    $('.checkAll').click(function()
    {
    	if($('.checkAll').prop('checked'))
    	{
    		$('.age').prop('checked', false);
    		$('input:checkbox[name=age]').parent('label').css('color', '#848484');
    		$(this).parent('label').css('color', '#2E64FE');
    	}
    	else
    	{
    		$('.age').prop('checked', false);
    		$('input:checkbox[name=age]').parent('label').css('color', '#848484');
    		$(this).parent('label').css('color', '#848484');
    	}
	});
    

    $('input:checkbox[name=age]').on('click', function()
    {

		if($(this).is(':checked'))
		{
			$(this).parent('label').css('color', '#2E64FE');
			$('input:checkbox[name=ageAll]').prop("checked", false);
			$('input:checkbox[name=ageAll]').parent('label').css('color', '#848484');
		}
		else
		{
			$(this).parent('label').css('color', '#848484');
			$('input:checkbox[name=ageAll]').prop("checked", false);
			$('input:checkbox[name=ageAll]').parent('label').css('color', '#848484');
		}
    	
    });
    
    
    $('input:radio[name=gender]').on('click', function()
	{
		if($(this).is(':checked'))
		{
			$('input:radio[name=gender]').parent('label').css('color', '#848484');
			$(this).parent('label').css('color', '#2E64FE');
		}	
    });
    
    
    $('#upload').on('click', function()
    {
    	if($('#subject').val() == "")
    	{
    		$('#subjectAlert').show();
    	}
    	else
    	{
    		$('#subjectAlert').hide();
    	}
    	
    	if(($("#loc:checked").length) == 0)
    	{
    		$('#locationAlert').show();
    	}
    	else
    	{
    		$('#locationAlert').hide();
    	}
    	
    	if(($("#ageAll:checked").length) == 0)
    	{
    		$('#ageAlert').show();
    	}
    	else
    	{
    		$('#ageAlert').hide();
    	}
    	
    	if(($("#gender:checked").length) == 0)
    	{
    		$('#genderAlert').show();
    	}
    	else
    	{
    		$('#genderAlert').hide();
    	}   	
    });
    
   var num = 1;
    
    $(document).on('click', '.traffic', function()
    {
    	$(this).parent().parent().parent().parent().append("<tr><td class=\"icon\"><i class=\"faStyle fa fa-car fa-2x\"></i></td><td><input type=text class=\"form-control\" id=\"traffic" + num + "\"></td></tr>");
    });
    
    $(document).on('click', '.pay', function()
    {
    	$(this).parent().parent().parent().parent().append("<tr><td class=\"icon\"><i class=\"faStyle fa fa-won-sign fa-2x\"></i></td><td><input type=text class=\"optionInsert form-control\" id=\"pay" + num + "\"></td></tr>");
	});
    
    $(document).on('click', '.time', function()
    {
    	$(this).parent().parent().parent().parent().append("<tr><td class=\"icon\"><i class=\"faStyle fa fa-stopwatch fa-2x\"></i></td><td><input type=text class=\"form-control\" id=\"time" + num + "\"></td></tr>");
	});
    
    $(document).on('click', '.else', function()
    {
    	$(this).parent().parent().parent().parent().append("<tr><td class=\"icon\"><i class=\"faStyle fa fa-calendar-check fa-2x\"></i></td><td><input type=text class=\"form-control\" id=\"else" + num + "\"></td></tr>");
	});
    
    
    $('#moreInf').click(function()
    {
    	num++;
    	
    	$('.plans').append(
    	
			'<tr>'+
				'<th>'+
				'</th>'+
				'<th>'+
					'<h3>Step' + num + '.</h3>'+
				'</th>'+
				'<td>'+
					'<table class="table">'+
						'<tr>'+
							'<th>'+
								'<h4>주소입력</h4>'+
							'</th>'+
							'<td class="input-group-prepend">'+
								'<input type="text" placeholder="내용을 입력해주세요." class="form-control">'+
								'<button type="button" class="btn btn-secondary" onclick="document.getElementById(\'modal\').style.display=\'block\'">'+
									'<i class="fa fa-search"></i>주소 검색'+
								'</button>'+
							'</td>'+
						'</tr>'+
						'<tr>'+
							'<th>'+
								'<h4>설명</h4>'+
							'</th>'+
							'<td>'+
								'<textarea rows="8" class="form-control noresize" placeholder="내용을 입력해주세요."></textarea>'+
							'</td>'+
						'</tr>'+
						'<tr>'+
							'<th></th>'+
							'<td>'+
								'<button type="button" class="traffic btn btn-outline-secondary"><i class="fa fa-car"></i> 교통수단</button>'+
								'<button type="button" class="pay btn btn-outline-secondary"><i class="fas fa-won-sign"></i> 비용</button>'+
								'<button type="button" class="time btn btn-outline-secondary"><i class="fas fa-stopwatch"></i> 소요시간</button>'+
								'<button type="button" class="else btn btn-outline-secondary"><i class="fas fa-calendar-check"></i> 기타</button>'+
							'</td>'+
						'</tr>'+
					'</table>'+
			'</tr>'
    	
    	);
	});

});







