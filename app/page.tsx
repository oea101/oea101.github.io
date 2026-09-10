export const dynamic = 'force-static';
import {profile,writing} from './site-content';
import EntryList from './entry-list';
export default function Writing(){return <><h1>Writing</h1>{profile.substack&&<p className="intro">AI and business, from my newsletter <a href={profile.substack}>Coffee Break</a>.</p>}{writing.length?<EntryList entries={writing}/>:<div className="empty"><p><strong>A home for my writing.</strong></p><p>Articles will appear here soon.</p></div>}{profile.substack&&<p><a href={`${profile.substack.replace(/\/$/,'')}/subscribe`}>Subscribe on Substack →</a> · <a href={`${profile.substack}/archive`}>Full archive</a></p>}</>}
