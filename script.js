const languages = {
    en: 'locales/en.json',
    pt: 'locales/pt.json'
};

let locale = {};
let titles = [];
let skills = [];
let projects = [];
let techs = [];

function getBrowserLanguage() {
    const lang = navigator.language || navigator.userLanguage;
    return lang.startsWith('pt') ? 'pt' : 'en';
}

function populateSkills() {
    const skillsContainer = document.getElementById('skills-tab');
    skillsContainer.innerHTML = skills.map(skill => skillDiv(skill.iconUrl, skill.name)).join('');
}

function populateTechs() {
    const techsContainer = document.getElementById('techs-tab');
    techsContainer.innerHTML = techs.map(tech => skillDiv(tech.iconUrl, tech.name)).join('');
}

function populateProjects() {
    const projectsContainer = document.getElementById('projects-tab');
    projectsContainer.innerHTML = projects.map(projectDiv).join('');
}

function skillDiv(iconUrl, name) {
    return `
        <div class="skill">
            <img src="${iconUrl}" alt="${name}">
            <p>${name}</p>
        </div>
    `;
}

function projectDiv(project) {
    return `
        <div class="project">
            <img src="${project.projectBannerUrl}" alt="${project.title}">
            <div class="project-info">
                <h3>${project.title}</h3>
                <p>${project.description}</p>
                <a href="${project.projectLink}" target="_blank">${locale.seemore}</a>
            </div>
        </div>
    `;
}

function loadLanguage(lang) {
    const url = languages[lang];
    console.log(`Loading language file from: ${url}`);

    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log(data);
            locale = data;
            titles = data.titles || [];
            skills = data.skills || [];
            projects = data.projects || [];
            techs = data.technologies || [];

            console.log("Loaded techs:", techs);

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