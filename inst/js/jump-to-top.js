

// When the user scrolls down 20px from the top of the document,
//     show the button for 5 seconds
window.onscroll = function() {scrollFunction()};

function hideJump() {
  //Get the button:
  mybutton = document.getElementById("jumpToTop");

  mybutton.style.display = "none";
}

function scrollFunction() {
  //Get the button:
  mybutton = document.getElementById("jumpToTop");

  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
    setTimeout(hideJump, 5000);
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
