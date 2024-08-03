let titles = [
    "Software Developer", 
    "Computer Science Undergrad", 
    "C# Developer", 
    "Back End Developer"
];

const languages = {
    en: 'locales/en.json',
    pt: 'locales/pt.json'
};

function getBrowserLanguage() {
    const lang = navigator.language || navigator.userLanguage;
    return lang.startsWith('pt') ? 'pt' : 'en';
}

function loadLanguage(lang) {
    const url = languages[lang];
    console.log(`Loading language file from: ${url}`);
    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            titles = data.titles;
            document.querySelectorAll('[data-localize]').forEach(element => {
                const key = element.getAttribute('data-localize');
                if (data[key]) {
                    element.textContent = data[key];
                }
            });
        })
        .catch(error => console.error('Error loading language file:', error));
}

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
        animate();
        intervalId = setInterval(animate, interval);
    }

    function stopAnimation() {
        clearInterval(intervalId);
    }

    let intervalId;
    element.addEventListener('mouseover', startAnimation);
    element.addEventListener('mouseout', stopAnimation);

    startAnimation();
}

document.addEventListener('DOMContentLoaded', () => {
    const userLang = getBrowserLanguage();
    loadLanguage(userLang);
    animateText('#title', 50, 15000, 3, titles);
});
