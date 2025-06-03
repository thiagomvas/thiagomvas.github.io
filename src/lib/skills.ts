export type Skill = {
    name: string;
    icon: string; // Can be local path or external URL
    color?: string; // Optional hex or class for color accent
  };
  
  export type SkillCategory = {
    label: string;
    skills: Skill[];
    background?: string; // Optional background color or image
  };

export const skillCategories: SkillCategory[] = [
  {
    label: 'Languages',
    skills: [
      { name: 'C#', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/csharp/csharp-original.svg' },
      { name: 'JavaScript', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg' },
      { name: 'TypeScript', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/typescript/typescript-original.svg' },
      { name: 'Java', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/java/java-original.svg' },
      { name: 'C++', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/cplusplus/cplusplus-original.svg' },
      { name: 'Python', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/python/python-original.svg' },
      { name: 'Dart', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/dart/dart-original.svg' },

    ],
    background: '#8e44ad'
  },
  {
    label: 'Frameworks & Libraries',
    skills: [
        { name: '.NET', icon: '/dotnet.svg' },
        { name: 'ASP.NET Core', icon: '/dotnet.svg' },
      { name: '.NET Aspire', icon: '/aspire.svg' },
      { name: 'React', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/react/react-original.svg' },
      { name: 'Node.js', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nodejs/nodejs-original.svg' },
      { name: 'Express', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/express/express-original.svg' },
      { name: 'Next.js', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nextjs/nextjs-original.svg' },
      { name: 'Blazor', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/blazor/blazor-original.svg' },
      { name: 'Flutter', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/flutter/flutter-original.svg' },
    ],
    background: '#2c3e50'
  },
  {
    label: 'Cloud & Infrastructure',
    skills: [
      { name: 'Azure', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/azure/azure-original.svg' },
      { name: 'Firebase', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/firebase/firebase-original.svg' },
      { name: 'Redis', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/redis/redis-original.svg' },
      { name: 'RabbitMQ', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/rabbitmq/rabbitmq-original.svg' },
    ],
    background: '#16a085'
  },
  {
    label: 'Databases',
    skills: [
      { name: 'PostgreSQL', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original.svg' },
      { name: 'MongoDB', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mongodb/mongodb-original.svg' },
      { name: 'SQLite', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/sqlite/sqlite-original.svg' },
    ],
    background: '#c0392b'
  },
];
