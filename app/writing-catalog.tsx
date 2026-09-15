"use client";
import {useState} from 'react';
import type {Entry} from './site-content';
import EntryList from './entry-list';
export default function WritingCatalog({entries}:{entries:Entry[]}) {
  const [selected,setSelected]=useState('All');
  const topics=Array.from(new Set(entries.flatMap(entry=>entry.tags??[]))).sort();
  const visible=selected==='All'?entries:entries.filter(entry=>entry.tags?.includes(selected));
  return <><div className="topic-filters" role="group" aria-label="Filter articles by topic">{['All',...topics].map(topic=><button key={topic} type="button" className="topic-pill" aria-pressed={selected===topic} onClick={()=>setSelected(topic)}>{topic}</button>)}</div><p className="topic-count" role="status">{selected==='All'?`${visible.length} articles`:`${visible.length} ${visible.length===1?'article':'articles'} · ${selected}`}</p><EntryList entries={visible} onTag={setSelected} activeTag={selected}/></>;
}
