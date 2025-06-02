export type Position = {
    title: string;
    start: string;
    end: string | 'present';
    description: string;
  };
  
  export type ExperienceCompany = {
    company: string;
    logo: string;
    positions: Position[];
  };
  
  export const experiences: ExperienceCompany[] = [
    {
      company: 'TechNova',
      logo: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/react/react-original.svg',
      positions: [
        {
          title: 'Full Stack Developer',
          start: '2022-01',
          end: 'present',
          description: 'Developing scalable web apps with React, Node.js, and PostgreSQL. Focused on performance and UX.',
        },
        {
          title: 'Frontend Developer',
          start: '2020-06',
          end: '2021-12',
          description: 'Built UI components and improved SPA performance.',
        },
      ],
    },
    {
      company: 'DevStart',
      logo: 'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg',
      positions: [
        {
          title: 'Intern Developer',
          start: '2020-01',
          end: '2020-05',
          description: 'Contributed to frontend tasks and testing with React.',
        },
      ],
    },
  ];
  
  export function formatDateRange(start: string, end: string | 'present'): string {
    const startDate = new Date(`${start}-01`);
    const endDate = end === 'present' ? new Date() : new Date(`${end}-01`);
  
    const diffYears = endDate.getFullYear() - startDate.getFullYear();
    const diffMonths = endDate.getMonth() - startDate.getMonth();
  
    let months = diffYears * 12 + diffMonths;
    const years = Math.floor(months / 12);
    months %= 12;
  
    const durationParts = [];
    if (years > 0) durationParts.push(`${years} yr${years > 1 ? 's' : ''}`);
    if (months > 0) durationParts.push(`${months} mo${months > 1 ? 's' : ''}`);
  
    const formattedStart = startDate.toLocaleString('default', { month: 'short', year: 'numeric' });
    const formattedEnd = end === 'present'
      ? 'Present'
      : endDate.toLocaleString('default', { month: 'short', year: 'numeric' });
  
    return `${formattedStart} – ${formattedEnd} · ${durationParts.join(' ')}`;
  }
  