<%*
const today = tp.date.now("YYYY-MM-DD");
const shortDate = tp.date.now("MMM-DD").toLowerCase();
const slug = `learning-${shortDate}`;
const filename = `${today}-${slug}`;
await tp.file.rename(filename);
const title = `Learning ${tp.date.now("MMM DD")}`;

tR = `---
layout: post
title: "${title}"
date: ${today}
categories: [blog]
---
`;
%>
<%* tR %>

