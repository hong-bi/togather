$(document).ready(function()
{
	// 테마별 메뉴 디자인
	$('.themaBtn').hover(function()
	{
		$('.themaBtn').css('background-color', '#f1f1f1');
		$('.themaBtn').css('color', '#3C7F44');
		$('.categoryMenu').css('height', '244px');
		$('.themaMenu').css('background-color', '#f1f1f1');
		
	}, function()
	{
		$('.themaBtn').css('background-color', 'white');
		$('.themaBtn').css('color', 'black');
		$('.categoryMenu').css('height', 'auto');
		
	});
	
	$('.themaMenu').hover(function()
	{
		$('.themaBtn').css('background-color', '#f1f1f1');
		$('.categoryMenu').css('height', '244px');
	}, function()
	{
		$('.categoryMenu').css('height', 'auto');
		$('.themaBtn').css('background-color', 'white');
	});

	// 지역 메뉴 디자인
	$('.regionBtn').hover(function()
	{
		$('.regionBtn').css('background-color', '#f1f1f1');
		$('.regionBtn').css('color', '#3C7F44');
		$('.categoryMenu').css('height', '684px');
		$('.regionMenu').css('background-color', '#f1f1f1');
	}, function()
	{
		$('.regionBtn').css('background-color', 'white');
		$('.regionBtn').css('color', 'black');
		$('.categoryMenu').css('height', 'auto');
	});
	
	$('.regionMenu').hover(function()
	{
		$('.regionBtn').css('background-color', '#f1f1f1');
		$('.categoryMenu').css('height', '684px');
	}, function()
	{
		$('.categoryMenu').css('height', 'auto');
		$('.regionBtn').css('background-color', 'white');
	});
	
	// 기간별 메뉴 디자인
	$('.timeBtn').hover(function()
	{
		$('.timeBtn').css('background-color', '#f1f1f1');
		$('.timeBtn').css('color', '#3C7F44');
		$('.categoryMenu').css('height', '204px');
		$('.timeMenu').css('background-color', '#f1f1f1');
	}, function()
	{
		$('.timeBtn').css('background-color', 'white');
		$('.timeBtn').css('color', 'black');
		$('.categoryMenu').css('height', 'auto');	
		
	});
	
	$('.timeMenu').hover(function()
	{
		$('.timeBtn').css('background-color', '#f1f1f1');
		$('.categoryMenu').css('height', '204px');
	}, function()
	{
		$('.categoryMenu').css('height', 'auto');
		$('.timeBtn').css('background-color', 'white');
	});


});