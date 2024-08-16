
<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
     <link
     href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
      rel="stylesheet"/>
    <title>Website  Portfolio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>

.container-fluid {
    padding-bottom: 50px;
}

        main.flex-shrink-0 {
            background: rgb(171,111,68);
background: -moz-linear-gradient(119deg, rgba(171,111,68,1) 0%, rgba(255,191,145,1) 98%);
background: -webkit-linear-gradient(119deg, rgba(171,111,68,1) 0%, rgba(255,191,145,1) 98%);
background: linear-gradient(119deg, rgba(171,111,68,1) 0%, rgba(255,191,145,1) 98%);
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#ab6f44",endColorstr="#ffbf91",GradientType=1);
}

.scroll-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 50px;
            height: 50px;
            border: none;
            border-radius: 50%;
            background-color: #007bff;
            color: white;
            font-size: 24px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
        }
    

        .scroll-btn:hover {
            background-color: #0056b3;
        }

        #scroll-up {
            bottom: 80px; /* Adjust based on your layout */
        }

        #scroll-down {
            bottom: 20px;
        }
           body {
            font-family: 'Poppins', sans-serif;
           
        }

        /* Navbar */
        .navbar {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }

        footer a {
            color: #adb5bd;
            transition: color 0.2s ease-in-out;
        }

        footer a:hover {
            color: white;
        }

        .social-link {
    margin: 0 10px;
    display: inline-block;
    position: relative;
    transition: transform 0.4s cubic-bezier(0.42, 0, 0.58, 1), color 0.4s cubic-bezier(0.42, 0, 0.58, 1);
}

.social-icon {
    transition: transform 0.4s cubic-bezier(0.42, 0, 0.58, 1), color 0.4s cubic-bezier(0.42, 0, 0.58, 1);
}

.social-link:hover .social-icon {
    transform: scale(1.3);
    color: #000; /* Color change on hover */
}
.circle-transition {
            position: absolute;
            width: 0px;
            height: 0px;
            border-radius: 50%;
            background: #007bff;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1000;
            transition: width 0.5s ease, height 0.5s ease;
            pointer-events: none;
        }
        @font-face {
  font-family: 'Caveat';
  src: url('fonts/Caveat-VariableFont_wght.ttf') format('truetype');
  font-weight: normal;
  font-style: normal;
}
/* Define a CSS class for the bold font */
.brandy {
    font-family: 'Caveat', cursive;
    font-weight: bold;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
  color: aliceblue;
}


    </style>
    </head>
    <body> 
    <div class="circle-transition" id="circle"></div>
      
      <main class="flex-shrink-0">

      <nav class="navbar navbar-expand-lg   ">
        <div class="container">
        <h2 class="brandy">Russel Escultura</h2>
            <a class="navbar-brand" href="index.php"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                <li class="nav-item">
                        <a class="nav-link" href="pages/resume.php">Resume</a>
                    </li>
                <li class="nav-item">
                        <a class="nav-link" href="pages/seminars.php">Projects</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/contact.php">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="login-link" href="dashboard/login.php">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

      <div class="container-fluid">
        <div class="row scroll-animation" id="custom-row">
          <div class="col-sm-6 text-black 1 ">
          <span class="badge rounded-pill badge-gradient">DESIGN · DEVELOPMENT · MARKETING</span>
            <div class="col-sm-12  text-white 2">I can help your bussines to
            </div>
            <div class="col-sm-12 text-white 3">Get online and 
            </div>
            <div class="col-sm-12  text-white 4">grow fast
            </div>
            <br></br>
            <div class="col-sm-12  text-black">
            <button type="button" class="btn btn-primary btn-lg" id="resume-button">Resume</button>
                <button type="button" class="btn btn-outline-primary btn-lg" id="seminar-button">Seminars</button>
            </div>
        </div>
          
          <div class="col-md-6  text-white position-relative">
            <div class="background-image">
              <img src="images/Background.png" alt="Background">
            </div>
            <div class="background-image" id="bg2">
              <img src="images/Backgroundarrow.png" alt="Background">
            </div>
            <div class="background-image" id="bg3">
              <img src="images/CIRCLE.png" alt="Background">
            </div class = "parent-container">
            <img src="images/profile (1).png"  class="responsives"alt="Responsive Image">
          </div>
        </div>
      </div>
         <div class = "container-fluid ">
          <div class="row scroll-animation" id= "about">
            <div class="col-sm-12 bg-BLACK text-black  text-center "id= "aboutme">About Me 
            </div>
            <div class="col-sm-12 bg-BLACK text-black  text-center "id= "me">My name is Start Bootstrap and I help brands grow. <br></br>
            </div>
            <div class="col-sm-12 bg-BLACK text-black  text-center "id= "details">Lorem ipsum dolor sit amet, consectetur elit. Fugit dolorum itaque qui unde quisquam<br> consequatur autem. Eveniet quasi nobis aliquid cumque officiis sed rem iure ipsa! Praesentium ratione <br>atque dolorem?
            </div>
            <div class="col-sm-12 text-center scroll-animation" id="details2">
    <a href="https://www.facebook.com/karen.hagupit" target="_blank" class="social-link">
        <i class="fab fa-facebook-f fa-2x social-icon" style="color: #3b5998;"></i>
    </a>
    <a href="https://www.linkedin.com/in/karen-hagupit-2314752ab/" target="_blank" class="social-link">
        <i class="fab fa-linkedin-in fa-2x social-icon" style="color: #0082ca;"></i>
    </a>
    <a href="http://m.me/karen.hagupit" target="_blank" class="social-link">
    <i class="fab fa-facebook-messenger fa-2x social-icon" style="color: #0884e2;"></i>
    </a>
</div>

          </div>
         </div>
         
      </main>
      <footer class="bg-dark py-4 mt-auto">
        <div class="container px-5">
            <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                <div class="col-auto"><div class="small m-0">Copyright © www.russelescultura.online 2024</div></div>
                <div class="col-auto">
                    <a class="small" href="#!">Privacy</a>
                    <span class="mx-1">·</span>
                    <a class="small" href="#!">Terms</a>
                    <span class="mx-1">·</span>
                    <a class="small" href="#!">Contact</a>
                </div>
            </div>
        </div>
    </footer>
    <button id="scroll-up" class="scroll-btn">&#9650;</button>
    <button id="scroll-down" class="scroll-btn">&#9660;</button>
    <script src="js/animations.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
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
document.addEventListener('DOMContentLoaded', function() {
    const navLinks = document.querySelectorAll('.nav-link');

    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const href = this.getAttribute('href');

            // Create a new div element for the circle effect
            const circle = document.createElement('div');
            circle.classList.add('circle-transition');
            document.body.appendChild(circle);

            // Start the circle animation
            setTimeout(() => {
                circle.style.width = '300vmax';
                circle.style.height = '300vmax';
            }, 10); // Slight delay to trigger animation

            // Navigate to the next page after the animation
            setTimeout(() => {
                window.location.href = href;
            }, 500); // Match the timeout with the transition duration
        });
    });
});




document.addEventListener('DOMContentLoaded', function() {
    const scrollElements = document.querySelectorAll('.scroll-animation');

    const elementInView = (el, dividend = 1) => {
        const elementTop = el.getBoundingClientRect().top;
        return (
            elementTop <= (window.innerHeight || document.documentElement.clientHeight) / dividend
        );
    };

    const displayScrollElement = (element) => {
        element.classList.add('scrolled');
    };

    const handleScrollAnimation = () => {
        scrollElements.forEach((el) => {
            if (elementInView(el, 1.25)) {
                displayScrollElement(el);
            }
        });
    };

    window.addEventListener('scroll', () => { 
        handleScrollAnimation();
    });

    // Trigger the animation for elements already in view on page load
    handleScrollAnimation();
});
document.addEventListener('DOMContentLoaded', function () {
            const scrollUpButton = document.getElementById('scroll-up');
            const scrollDownButton = document.getElementById('scroll-down');

            scrollUpButton.addEventListener('click', function () {
                window.scrollBy({
                    top: -window.innerHeight, // Scroll up by one viewport height
                    behavior: 'smooth'
                });
            });

            scrollDownButton.addEventListener('click', function () {
                window.scrollBy({
                    top: window.innerHeight, // Scroll down by one viewport height
                    behavior: 'smooth'
                });
            });
        });



        
    </script>
  </body>
</html>