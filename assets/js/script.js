let hamburger = document.querySelector("#hamburger");
hamburger.onclick = function() {
    console.log("Registered menu click");
    // Toggle dropdown menu
    let dropdown = document.querySelector("nav.dropdown");

    if (dropdown.style.display == "block") {
        dropdown.style.display = "none";
        hamburger.style.opacity = 1;
    } else {
        dropdown.style.display = "block";
        hamburger.style.opacity = 0.5;
    }
};
