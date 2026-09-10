export const dynamic = 'force-static';
import {prototypes} from '../site-content';
import EntryList from '../entry-list';
export const metadata={title:'Prototyping'};
export default function Prototyping(){return <><h1>Prototyping</h1>{prototypes.length?<EntryList entries={prototypes}/>:<div className="empty"><p><strong>Ideas, in working form.</strong></p><p>Experiments and projects will be shared here.</p></div>}</>}
