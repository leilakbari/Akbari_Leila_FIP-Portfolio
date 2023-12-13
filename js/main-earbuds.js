
(() => {
  console.log("IIFE Fired");
  
  // hotspots variables
  const model = document.querySelector("#model");
  const hotSpots = document.querySelectorAll(".Hotspot");

  const infoBoxes = [
    {
      title: 'Comfortable Rubber',
      text: 'Comfortable Rubber is a silicone material that helps to keep the earbuds in the ear and at the same time it feels very comfortable and prevents them from falling.',
      image: 'images/rubber-earbuds.png'
    },
    {
      title: 'Silver Plating',
      text: 'Silver Plating is a shiny Silver plate surface that places around the earbuds and protects the earbuds body from damage.',
      image: 'images/silver.png'
    },
    {
      title: 'Green Body',
      text: 'Green Body is the other part of the earbuds surface which the color reminds us of nature. Because nature is the first source for hearing beautiful and incredible sounds.',
      image: 'images/earbuds.png'
    },
    {
      title: 'Speaker',
      text: 'Speaker part places around the earbuds surface and with its high technology, it creates a three-dimensional listening experience.',
      image: 'images/speaker.png'
    },
    {
      title: 'Charging Port',
      text: 'Charging Port is a part of earbuds that charges them by placing them in their box.',
      image: 'images/wireless-charging.png'
    },
    {
      title: 'Finger Holder',
      text: 'Finger Holder is at the upper part of the earbuds, which helps to hold and place them in the ear more easily with its indentation.',
      image: 'images/placeholder.png'
    },
  ]


  // hotspots functions
  function modelLoaded() {
    hotSpots.forEach(hotspot => {
      hotspot.style.display = "block";
    });
  }

  function loadInfo() {

    //Roughed in code not functional

      infoBoxes.forEach((infoBox, index) => {
   
      let selected = document.querySelector(`#hotspot-${index+1}`);

      const titleElement = document.createElement('h2');
      titleElement.textContent = infoBox.title;

      const textElement = document.createElement('p');
      textElement.textContent = infoBox.text;

      const imageElement = document.createElement('img');
      imageElement.src = infoBox.image;

      selected.appendChild(imageElement);
      selected.appendChild(titleElement);
      selected.appendChild(textElement);
    });
  }
  loadInfo();

  function showInfoOnMouseOver(e) {
    let selected = document.querySelector(`#${this.slot}`);
    gsap.to(selected, 1, { autoAlpha: 1 });
  }

  function hideInfoOnMouseOut(e) {
    let selected = document.querySelector(`#${this.slot}`);
    gsap.to(selected, 1, { autoAlpha: 0 });
  }

  //Event listeners
  model.addEventListener("load", modelLoaded);

  hotSpots.forEach(function (hotspot) {
    hotspot.addEventListener("mouseenter", showInfoOnMouseOver);
    hotspot.addEventListener("mouseleave", hideInfoOnMouseOut);
  });




  // x-ray variables
  window.onload = function () {
    let imageCon = document.getElementById('imageCon');
    let drag = document.querySelector('.image-drag');
    let left = document.querySelector('.image-left');
    let dragging = false;
    let min = 0;
    let max = imageCon.offsetWidth;

  // x-ray functions
  function onDown() {
    dragging = true;
  }

  function onUp() {
    dragging = false;
  }

  function onMove(event) {
    if (dragging) {
      let x = event.clientX - imageCon.getBoundingClientRect().left;

      if (x < min) {
        x = min;
      } else if (x > max) {
        x = max - 10;
      }

      drag.style.left = x + 'px';
      left.style.width = x + 'px';
    }
  }

  drag.addEventListener('mousedown', onDown);
  document.body.addEventListener('mouseup', onUp);
  document.body.addEventListener('mousemove', onMove);
};


})();

