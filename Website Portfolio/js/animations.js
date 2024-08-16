

function myFunction() {
var x = document.getElementById("myTopnav");
if (x.className === "topnav") {
x.className += " responsive";
} else {
x.className = "topnav";
}
}

document.addEventListener("DOMContentLoaded", function() {
    const bgImage = document.querySelector('.background-image img');
    bgImage.style.animation = 'none';
    bgImage.offsetHeight;
    bgImage.style.animation = null;
  });
  document.addEventListener("DOMContentLoaded", function() {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.style.animation = 'none';
          entry.target.offsetHeight; 
          entry.target.style.animation = null; 
        }
      });
    });
  
    const backgroundImage = document.getElementById('bg2');
    observer.observe(backgroundImage);
  });
  
  
  document.getElementById('resume-button').addEventListener('click', function (event) {
    console.log('Resume button clicked');
    event.preventDefault();

    // Create a new div element for the slide effect
    const slideDiv = document.createElement('div');
    slideDiv.classList.add('slide-in');
    document.body.appendChild(slideDiv);

    // Redirect to the resume page after the animation ends
    slideDiv.addEventListener('animationend', function () {
        console.log('Animation ended for resume');
        window.location.href = 'pages/resume.php';
    });
});

document.getElementById('seminar-button').addEventListener('click', function (event) {
    console.log('Seminar button clicked');
    event.preventDefault();

    // Create a new div element for the slide effect
    const slideDiv = document.createElement('div');
    slideDiv.classList.add('slide-in');
    document.body.appendChild(slideDiv);

    // Redirect to the seminar page after the animation ends
    slideDiv.addEventListener('animationend', function () {
        console.log('Animation ended for seminar');
        window.location.href = 'pages/seminars.php';
    });
});




