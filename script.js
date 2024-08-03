const titles = ["Software Developer", 
    "Computer Science Undergrad", 
    "C# Developer", 
    "Back End Developer"];

function animateText(selector, delay, interval, n, phrases) {
    const element = document.querySelector(selector);
    let currentTitle = element.textContent;
    const characters = '\\\"\'|;:/?.>,<[{]}=+-_0)9(8*7&6^5%4$3#2@1!`~/';

    function randomChar() {
        return characters.charAt(Math.floor(Math.random() * characters.length));
    }

    function getNextTitle() {
        return phrases[Math.floor(Math.random() * phrases.length)];
    }

    function animate() {
        let nextTitle = getNextTitle();
        let maxLength = Math.max(currentTitle.length, nextTitle.length);
        let currentText = currentTitle.padEnd(maxLength, ' ').split('');
        let nextText = nextTitle.padEnd(maxLength, ' ').split('');

        for (let i = 0; i < maxLength; i++) {
            setTimeout(() => {
                for (let j = 0; j < n && (i + j) < maxLength; j++) {
                    currentText[i + j] = randomChar();
                }
                element.textContent = currentText.join('');
            }, delay * i);

            setTimeout(() => {
                for (let j = 0; j < n && (i + j) < maxLength; j++) {
                    currentText[i + j] = nextText[i + j];
                }
                element.textContent = currentText.join('');
            }, delay * (i + 1));
        }

        currentTitle = nextTitle;
    }

    function startAnimation() {
        // Start the animation immediately
        animate();
        // Continue animating every interval
        intervalId = setInterval(animate, interval);
    }

    function stopAnimation() {
        // Stop the interval to avoid multiple animations at the same time
        clearInterval(intervalId);
    }

    let intervalId;
    element.addEventListener('mouseover', startAnimation);
    element.addEventListener('mouseout', stopAnimation);

    // Start the initial animation
    startAnimation();
}



animateText('#title', 50, 15000, 3, titles);
