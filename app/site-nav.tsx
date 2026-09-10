'use client';
import { usePathname } from 'next/navigation';
const pages = ['Writing', 'Speaking', 'Prototyping', 'About'];
export default function SiteNav(){const pathname=usePathname();return <nav aria-label="Main navigation">{pages.map(page=>{const href=`/${page.toLowerCase()}/`;return <a key={page} href={href} aria-current={pathname.replace(/\/$/,'')===href.replace(/\/$/,'')||(pathname==='/'&&page==='Writing')?'page':undefined}>{page}</a>})}</nav>}
