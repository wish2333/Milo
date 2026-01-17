'use strict';



// element toggle function
const elementToggleFunc = function (elem) { elem.classList.toggle("active"); }



// sidebar variables
const sidebar = document.querySelector("[data-sidebar]");
const sidebarBtn = document.querySelector("[data-sidebar-btn]");

// sidebar toggle functionality for mobile
sidebarBtn.addEventListener("click", function () { elementToggleFunc(sidebar); });



// testimonials variables
const testimonialsItem = document.querySelectorAll("[data-testimonials-item]");
const modalContainer = document.querySelector("[data-modal-container]");
const modalCloseBtn = document.querySelector("[data-modal-close-btn]");
const overlay = document.querySelector("[data-overlay]");

// modal variable
const modalImg = document.querySelector("[data-modal-img]");
const modalTitle = document.querySelector("[data-modal-title]");
const modalText = document.querySelector("[data-modal-text]");

// modal toggle function
const testimonialsModalFunc = function () {
  modalContainer.classList.toggle("active");
  overlay.classList.toggle("active");
}

// add click event to all modal items
for (let i = 0; i < testimonialsItem.length; i++) {

  testimonialsItem[i].addEventListener("click", function () {

    modalImg.src = this.querySelector("[data-testimonials-avatar]").src;
    modalImg.alt = this.querySelector("[data-testimonials-avatar]").alt;
    modalTitle.innerHTML = this.querySelector("[data-testimonials-title]").innerHTML;
    modalText.innerHTML = this.querySelector("[data-testimonials-text]").innerHTML;

    testimonialsModalFunc();

  });

}

// add click event to modal close button
modalCloseBtn.addEventListener("click", testimonialsModalFunc);
overlay.addEventListener("click", testimonialsModalFunc);



// custom select variables
const select = document.querySelector("[data-select]");
const selectItems = document.querySelectorAll("[data-select-item]");
const selectValue = document.querySelector("[data-selecct-value]");
const filterBtn = document.querySelectorAll("[data-filter-btn]");

select.addEventListener("click", function () { elementToggleFunc(this); });

// add event in all select items
for (let i = 0; i < selectItems.length; i++) {
  selectItems[i].addEventListener("click", function () {

    let selectedValue = this.innerText.toLowerCase();
    selectValue.innerText = this.innerText;
    elementToggleFunc(select);
    filterFunc(selectedValue);

  });
}

// filter variables
const filterItems = document.querySelectorAll("[data-filter-item]");

const filterFunc = function (selectedValue) {

  for (let i = 0; i < filterItems.length; i++) {

    if (selectedValue === "all") {
      filterItems[i].classList.add("active");
    } else if (selectedValue === filterItems[i].dataset.category) {
      filterItems[i].classList.add("active");
    } else {
      filterItems[i].classList.remove("active");
    }

  }

}

// add event in all filter button items for large screen
let lastClickedBtn = filterBtn[0];

for (let i = 0; i < filterBtn.length; i++) {

  filterBtn[i].addEventListener("click", function () {

    let selectedValue = this.innerText.toLowerCase();
    selectValue.innerText = this.innerText;
    filterFunc(selectedValue);

    lastClickedBtn.classList.remove("active");
    this.classList.add("active");
    lastClickedBtn = this;

  });

}



// contact form variables
const form = document.querySelector("[data-form]");
const formInputs = document.querySelectorAll("[data-form-input]");
const formBtn = document.querySelector("[data-form-btn]");

// add event to all form input field
for (let i = 0; i < formInputs.length; i++) {
  formInputs[i].addEventListener("input", function () {

    // check form validation
    if (form.checkValidity()) {
      formBtn.removeAttribute("disabled");
    } else {
      formBtn.setAttribute("disabled", "");
    }

  });
}



// page navigation variables
const navigationLinks = document.querySelectorAll("[data-nav-link]");
const sections = document.querySelectorAll("article[id]");

// Smooth scroll to section on nav link click
for (let i = 0; i < navigationLinks.length; i++) {
  navigationLinks[i].addEventListener("click", function (event) {
    event.preventDefault();

    // Get target section ID from href
    const targetId = this.getAttribute("href").substring(1);
    const targetSection = document.getElementById(targetId);

    if (targetSection) {
      // Scroll to section with smooth behavior
      targetSection.scrollIntoView({
        behavior: "smooth",
        block: "start"
      });

      // Update active state
      navigationLinks.forEach(link => link.classList.remove("active"));
      this.classList.add("active");
    }
  });
}

// Scroll spy: Update active nav based on scroll position
const observerOptions = {
  root: null,
  rootMargin: "-20% 0px -70% 0px", // Trigger when section is in upper part of viewport
  threshold: 0
};

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      // Remove active from all links
      navigationLinks.forEach(link => link.classList.remove("active"));

      // Add active to corresponding link
      const activeLink = document.querySelector(`[href="#${entry.target.id}"]`);
      if (activeLink) {
        activeLink.classList.add("active");
      }
    }
  });
}, observerOptions);

// Observe all sections
sections.forEach(section => observer.observe(section));

// Navbar sticky behavior for desktop (>= 1024px)
const navbar = document.querySelector('.navbar');
const mainContent = document.querySelector('.main-content');

function updateNavbarPosition() {
  if (window.innerWidth >= 1024 && navbar && mainContent) {
    const scrollY = window.scrollY;

    if (scrollY >= 60) {
      // Scroll past 60px: fix navbar to top
      navbar.classList.add('sticky');

      // Calculate navbar position: align with main-content's right edge
      const mainContentRect = mainContent.getBoundingClientRect();
      const navbarRect = navbar.getBoundingClientRect();
      const navbarLeft = mainContentRect.right - navbarRect.width;
      navbar.style.left = navbarLeft + 'px';
      navbar.style.right = 'auto';
    } else {
      // Before 60px: navbar scrolls with content
      navbar.classList.remove('sticky');
      navbar.style.left = 'auto';
      navbar.style.right = '0';
    }
  } else if (navbar) {
    // Reset for mobile/tablet
    navbar.classList.remove('sticky');
    navbar.style.left = 'auto';
    navbar.style.right = 'auto';
  }
}

// Update on load, scroll, and resize
window.addEventListener('load', updateNavbarPosition);
window.addEventListener('scroll', updateNavbarPosition);
window.addEventListener('resize', updateNavbarPosition);
