<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--------------------------------------------------- content -------------------------------------------------->
<!-- 슬라이드쇼 -->
<div class="slideshow">
	<div class="slideshow-container">
		<div class="mySlides fadeslide">
			<img src="resources/images/slideshow02.png">
		</div>

		<div class="mySlides fadeslide">
			<img src="resources/images/slideshow0<c:url value="/resources/images/1.png" />">
		</div>

<!-- 		<div class="mySlides fadeslide">
			<img src="resources/images/slideshow03.png">
		</div> -->

		<a class="prevslide" onclick="plusSlides(-1)">&#10094;</a>
		<a class="nextslide" onclick="plusSlides(1)">&#10095;</a>
	</div>
	<br>

	<div class="dot-container">
		<span class="dot" onclick="currentSlide(1)"></span>
		<span class="dot" onclick="currentSlide(2)"></span>
		<!-- <span class="dot" onclick="currentSlide(3)"></span> -->
	</div>
</div>



<!-- best10 -->
<div class="listName">BEST 10</div>
<div class="post-preview-wrapper">
	<div class="post-preview mb-5">
		<a class="post-preview-img" href=""> <img class="post-preview-img"
			src="<c:url value="resources/images/slideFile2.jpg"/>">
		</a>
		<div class="post-title post-desc">title1</div>
		<div class="post-desc">nickname1</div>
		<div class="post-desc">theme1</div>
		<div class="post-desc">location1</div>
		<div class="post-desc">how long1</div>
		<div class="post-desc">end collect date1</div>
	</div>
	<div class="post-preview mb-5">
		<a class="post-preview-img" href=""> <img class="post-preview-img"
			src="<c:url value="resources/images/slideFile2.jpg"/>">
		</a>
		<div class="post-title post-desc">title2</div>
		<div class="post-desc">nickname2</div>
		<div class="post-desc">theme2</div>
		<div class="post-desc">location2</div>
		<div class="post-desc">how long2</div>
		<div class="post-desc">end collect date2</div>
	</div>
	<div class="post-preview mb-5">
		<a class="post-preview-img" href=""> <img class="post-preview-img"
			src="<c:url value="resources/images/slideFile2.jpg"/>">
		</a>
		<div class="post-title post-desc">title3</div>
		<div class="post-desc">nickname3</div>
		<div class="post-desc">theme3</div>
		<div class="post-desc">location3</div>
		<div class="post-desc">how long3</div>
		<div class="post-desc">end collect date3</div>
	</div>
</div>

<!-- new10 -->
<div class="listName">NEW 10</div>
<div class="post-preview-wrapper">
	<div class="post-preview mb-5">
		<a class="post-preview-img" href=""> <img class="post-preview-img"
			src="<c:url value="resources/images/slideFile2.jpg"/>">
		</a>
		<div class="post-title post-desc">title1</div>
		<div class="post-desc">nickname1</div>
		<div class="post-desc">theme1</div>
		<div class="post-desc">location1</div>
		<div class="post-desc">how long1</div>
		<div class="post-desc">end collect date1</div>
	</div>
	<div class="post-preview mb-5">
		<a class="post-preview-img" href=""> <img class="post-preview-img"
			src="<c:url value="resources/images/slideFile2.jpg"/>">
		</a>
		<div class="post-title post-desc">title2</div>
		<div class="post-desc">nickname2</div>
		<div class="post-desc">theme2</div>
		<div class="post-desc">location2</div>
		<div class="post-desc">how long2</div>
		<div class="post-desc">end collect date2</div>
	</div>
	<div class="post-preview mb-5">
		<a class="post-preview-img" href=""> <img class="post-preview-img"
			src="<c:url value="resources/images/slideFile2.jpg"/>">
		</a>
		<div class="post-title post-desc">title3</div>
		<div class="post-desc">nickname3</div>
		<div class="post-desc">theme3</div>
		<div class="post-desc">location3</div>
		<div class="post-desc">how long3</div>
		<div class="post-desc">end collect date3</div>
	</div>
</div>

<!--------------------------------------------------- content -------------------------------------------------->

<!-- 툴팁 -->
<script>
   $(function () {
      $('[data-toggle="tooltip"]').tooltip()
   })
</script>

<!-- 슬라이드쇼 -->
<script type="text/javascript">
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
