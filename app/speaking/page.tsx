export const dynamic = 'force-static';
import {speaking} from '../site-content';
import EntryList from '../entry-list';
export const metadata={title:'Speaking and Media'};
export default function Speaking(){return <><h1>Speaking and Media</h1>{speaking.length?<EntryList entries={speaking}/>:<div className="empty"><p><strong>Talks and conversations.</strong></p><p>Upcoming appearances and recordings will be shared here.</p></div>}<p className="intro">More conversations to come.</p></>}
