(() => {

    // hero js
    document.addEventListener("DOMContentLoaded", function () {
        const textHeroElement = document.querySelector(".text-hero");
        const h1Text = "Hello!";
        // const h2Text = "I’m";
        // const staticText = "I’m ";
        const phrases = ["Leila Akbari", "a UI/UX designer", "a Developer"];
        const el = document.querySelector("#typing");

        const pText = "I'm an artist and designer based in Canada, who instead of traditional tools like pens or brushes, use code as a creative tool.  I love crafting designs that are not only visually stunning but also functional, each one tailored to fit the unique vibes of my clients. Living for that aha moment when someone interacts with my creations, I'm always learning and pushing my boundaries.";
    
        loadInfo(textHeroElement.querySelector("h1"), h1Text);
        loadInfo(textHeroElement.querySelector("p"), pText);
        // loadInfo(textHeroElement.querySelector("h2"), h2Text);
        writeLoop(el, phrases);
        // writeLoop(el, staticText, phrases);
        // loadImage(textHeroElement.querySelector("img"), imageSrc);
    });

    // project scroll
    const prev = document.querySelector('.prev');
    const next = document.querySelector('.next');
    const slider = document.querySelector('.scroll-images');
    
    prev.addEventListener('click', scrollLeft);
    next.addEventListener('click', scrollRight);
    // project scroll

    document.addEventListener("DOMContentLoaded", function () {
        const textHeroElement = document.querySelector(".text-about");
        const h1Text = "Welcome!";
        const h2Text = "Here you can read more about me:";
        
        const pText = "I’m a UI/UX designer passionate about creating engaging, impactful product experiences. I have been immersed in the world of art and design for the past 10 years after receiving my diploma in graphic design and my bachelor’s degree in textile design. At the same time, I became very interested in being able to advance my art in the direction of the digital space, and this became the beginning for me to learn and work in the field of website design. I am also very interested in nature and sometimes I take pictures and paint for fun. If you think that I would be a great fit for your team as a UI/UX designer, let’s discuss more!";

        loadInfo(textHeroElement.querySelector("h1"), h1Text);
        loadInfo(textHeroElement.querySelector("h2"), h2Text);
        loadInfo(textHeroElement.querySelector("p"), pText);
    });


    let sleepTime = 140;
    let curPhraseIndex = 0;
    
    function loadInfo(element, text) {
        element.textContent = text;
    }

    // function sleep(ms) {
    //     return new Promise((resolve) => setTimeout(resolve, ms));
    // }
    function sleep(ms) {
        // console.log(`Sleeping for ${ms} milliseconds`);
        return new Promise((resolve) => setTimeout(resolve, ms));
    }


    const writeLoop = async (el, phrases) => {
        while (true) {
            let curWord = phrases[curPhraseIndex];
    
            for (let i = 0; i < curWord.length; i++) {
                el.innerText = curWord.substring(0, i + 1);
                await sleep(sleepTime);
            }
    
            await sleep(sleepTime + 10);
    
            for (let i = curWord.length; i > 0; i--) {
                el.innerText = curWord.substring(0, i - 1);
                await sleep(sleepTime);
            }
    
            await sleep(sleepTime + 5);
    
            if (curPhraseIndex === phrases.length - 1) {
                curPhraseIndex = 0;
            } else {
                curPhraseIndex++;
            }
        }
    };

    writeLoop();

    // projects scroll
    function scrollLeft() {
        console.log("called");
        slider.scrollLeft -= 300;
    }
    
    function scrollRight() {
        console.log("called");
        slider.scrollLeft += 300;
    }
    
    
  
})();