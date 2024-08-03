const titleSwapDelayMs = 5000;

let titles = [];
let skills = [];
let techs = [];
let projects = [];

let locale = "";

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
            locale = data;
            titles = data.titles;
            skills = data.skills;
            projects = data.projects;
            techs = data.technologies;
            console.log(techs);
            document.querySelectorAll('[data-localize]').forEach(element => {
                const key = element.getAttribute('data-localize');
                if (data[key]) {
                    element.textContent = data[key];
                }
            });
            populateSkills();
            populateTechs();
            populateProjects();
        })
        .catch(error => console.error('Error loading language file:', error));
}


function populateSkills() {
    const skillsContainer = document.getElementById('skills-tab');
    skillsContainer.innerHTML = '';

    skills.forEach(skill => {
        skillsContainer.innerHTML += skillDiv(skill.iconUrl, skill.name)
    });
}
function populateTechs() {
    const skillsContainer = document.getElementById('techs-tab');
    skillsContainer.innerHTML = '';

    techs.forEach(tech => {
        skillsContainer.innerHTML += skillDiv(tech.iconUrl, tech.name)
    });
}
function populateProjects()
{
    const projectsContainer = document.getElementById('projects-tab');
    projectsContainer.innerHTML = '';

    projects.forEach(project => {
        projectsContainer.innerHTML += projectDiv(project);
    })
}

function animateText(selector, delay, interval, n) {
    const element = document.querySelector(selector);
    let currentTitle = element.textContent;
    const characters = '\\\"\'|;:/?.>,<[{]}=+-_0)9(8*7&6^5%4$3#2@1!`~/';

    function randomChar() {
        return characters.charAt(Math.floor(Math.random() * characters.length));
    }

    function getNextTitle() {
        return titles[Math.floor(Math.random() * titles.length)];
    }

    function animate() {
        let nextTitle = getNextTitle();
        while(currentTitle == nextTitle)
        {
            nextText = getNextTitle()
        }
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
    animateText('#title', 30, titleSwapDelayMs, 3);
});


const skillDiv = (iconUrl, name) => {
    return `
        <div class="skill-container">
            <img src="${iconUrl}" alt="${name}" class="skill-icon">
            <div class="skill-title">${name}</div>
        </div>
    `;
}

const projectDiv = (project) => {
    return `
    <a href="${project.projectLink}" target="_blank" class="project-panel" style="background-image: url('${project.projectBannerUrl}'); object-fit: contain;">
                <div class="project-overlay">
                    <h2 class="project-title">${project.title}</h2>
                    <p class="project-description">${project.description}</p>
                </div>
            </a>`;
}