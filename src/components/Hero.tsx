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
              <span className="label">GitHub</span>
            </a>
            <a href="https://linkedin.com" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn">
              <span className="label">LinkedIn</span>
            </a>
            <a href="https://twitter.com" target="_blank" rel="noopener noreferrer" aria-label="Twitter">
              <span className="label">Twitter</span>
            </a>
          </div>
        </div>

        {/* Image Section */}
        <div className="hero-image">
          <img src="/logo-softeam.svg" alt="Thiago Vasconcelos" width={400} height={400} />
        </div>
      </div>
    </section>
  );
}
