
#!/bin/bash
read -p "Post title: " title
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
date=$(date +%F)
filename="_posts/${date}-${slug}.md"

cat > "$filename" <<EOF
---
layout: post
title: "$title"
date: $date
related_posts: false
categories: [blog]
---

Start writing here.
EOF

echo "Created $filename"
