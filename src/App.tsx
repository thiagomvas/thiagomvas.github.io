import Experience from './components/Experience'
import Hero from './components/Hero'
import Skills from './components/Skills'
import "./index.css"


function App() {

  return (
    <>
      <Hero/>
      <div
        className="gradient-spacer"
        style={{
          background: "linear-gradient(to bottom, var(--hero-background), var(--experience-background))",
        }}
      ></div>
      <Experience/>
      <div
        className="gradient-spacer"
        style={{
          background: "linear-gradient(to bottom, var(--experience-background), var(--skills-background))",
        }}
      ></div>


      <Skills/>
    </>
  )
}

export default App
