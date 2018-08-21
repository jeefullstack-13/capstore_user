<div id="image">
	<h2>White Shoes</h2>

	<img id="myImg" src=".\resources\images\1.jpg" alt="Shoe"
		style="width: 100%; max-width: 300px">

	<!-- The Modal -->
	<div id="myModal" class="modal">
		<span class="close">&times;</span>

		<div id="slides">
			<div class="slideshow-container">

				<div class="mySlides fade">
					<div class="numbertext">1 / 4</div>
					<img src=".\resources\images\1.jpg" style="width: 100%"
						height="700" align="middle">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">2 / 4</div>
					<img src=".\resources\images\3.jpg" style="width: 100%"
						height="700" align="middle">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">3 / 4</div>
					<img src=".\resources\images\2.jpg" style="width: 100%"
						height="700" align="middle">
				</div>
				
					<div class="mySlides fade">
					<div class="numbertext">4 / 4</div>
					<img src=".\resources\images\4.jpg" style="width: 100%"
						height="700" align="middle">
				</div>

				<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
					class="next" onclick="plusSlides(1)">&#10095;</a>

			</div>
		

		</div>
	</div>
	
	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg');

		var modalSlides = document.getElementById("slides");
		modalSlides.display = "block";

		img.onclick = function() {
			modal.style.display = "block";
			modalSlides.src = this.src;

		}

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

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
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}
	</script>
	
	</div>