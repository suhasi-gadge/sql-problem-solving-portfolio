SELECT DISTINCT (fr.post_id), fr.poster, fp.post_text, fp.post_keywords, fp.post_date 
FROM facebook_reactions as fr
JOIN facebook_posts as fp
ON fr.post_id = fp.post_id
WHERE fr.reaction = 'heart';