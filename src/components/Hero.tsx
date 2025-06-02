import ReactLogo from '../assets/react.svg';

import './Hero.css';

export default function Hero() {
  return (
    <section className="hero">
      <div className="hero-container">
        {/* Text Section */}
        <div className="hero-text">
          <h1>Hi, I'm Thiago Vasconcelos</h1>
          <p>Full Stack Developer crafting modern, performant web applications.</p>

          {/* Social Icons */}
          <div className="social-links">
            <a href="https://github.com" target="_blank" rel="noopener noreferrer" aria-label="GitHub">
            <img className='white-icon' src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg" alt="Thiago Vasconcelos" width={32} height={32} />
            </a>
            <a href="https://linkedin.com" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn">
            <img className='white-icon' src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/linkedin/linkedin-plain.svg" alt="Thiago Vasconcelos" width={32} height={32} />
            </a>
          </div>
        </div>

        {/* Image Section */}
        <div className="hero-image">
          <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg" alt="Thiago Vasconcelos" width={400} height={400} />
        </div>
      </div>
    </section>
  );
}
