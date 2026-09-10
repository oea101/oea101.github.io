import type { Metadata } from 'next';
import './globals.css';
import SiteNav from './site-nav';
import {profile} from './site-content';
export const metadata: Metadata={title:{default:'Writing · Manny Akintayo',template:'%s · Manny Akintayo'},description:'Manny Akintayo — writing on AI and business, speaking, and prototypes.',icons:{icon:'/favicon.svg'}};
export default function RootLayout({children}:{children:React.ReactNode}){return <html lang="en"><body><a href="#content" className="skip">Skip to content</a><div className="site"><header className="header"><a href="/" className="name">{profile.name}</a><SiteNav/></header><main id="content">{children}</main><footer className="footer"><p>© {new Date().getFullYear()} {profile.name}{profile.substack&&<> · <a href={profile.substack}>Substack</a></>}{profile.github&&<> · <a href={profile.github}>GitHub</a></>}</p></footer></div></body></html>}
