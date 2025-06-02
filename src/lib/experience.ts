import SofteamLogo from "/softeam.png";
import JetsalesLogo from "/jetsales.png";

export type Position = {
    title: string;
    type: 'Full-time' | 'Part-time' | 'Internship' | 'Contract' | 'Freelance'; // added
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
      company: 'JetSales Brasil',
      logo: JetsalesLogo,
      positions: [
        {
          title: 'Jr. Web Developer',
          type: 'Internship',           // added
          start: '2025-06',
          end: 'present',
          description: 'Automating internal workflows using n8n and ActiveCampaign, integrating multiple third-party services to streamline business processes and improve operational efficiency.',
        },
      ],
    },
    {
      company: 'SofTeam - Empresa Júnior de Computação da UFS',
      logo: SofteamLogo,
      positions: [
        {
            title: 'Project Manager',
            type: 'Internship',          // added
            start: '2025-03',
            end: 'present',
            description: 'Directly collaborate with clients to define project scope and requirements. Organize and oversee teams to execute contracts efficiently, handling contract writing and service pricing. Act as a Scrum Master, facilitating agile practices, backlog planning, and sprint execution. Promote team development through training initiatives, ensuring continuous growth and project success.',
        },
        {
          title: 'Full-Stack Developer',
          type: 'Internship',          // added
          start: '2023-12',
          end: '2025-02',
          description: 'Developed software while managing teams and collaborating directly with clients to align project goals. Led contract negotiations, service pricing, and project execution to ensure successful deliveries..',
        },
      ],
    },
  ];
  
  // You can display it in your component like:
  // <h3>{position.title} <span className="type">({position.type})</span> <span className="period">— {formatDateRange(position.start, position.end)}</span></h3>
  
  
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
  