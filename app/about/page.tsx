export const dynamic = 'force-static';
import {profile} from '../site-content';
export const metadata={title:'About'};
export default function About(){return <><h1>About</h1><div className="bio">{profile.bio?<p>{profile.bio}</p>:<div className="empty"><p><strong>A little about me.</strong></p><p>More to come soon.</p></div>}<p>This is where I collect my <a href="/writing/">writing</a>, <a href="/speaking/">talks</a>, and <a href="/prototyping/">prototypes</a>.</p>{profile.email&&<p>Get in touch: <a href={`mailto:${profile.email}`}>{profile.email}</a></p>}</div></>}
