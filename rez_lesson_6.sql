-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
select COUNT(IF(gender='m',1,NULL)) m, COUNT(IF(gender='f',1,NULL)) f from likes l 
join profiles p on l.user_id = p.user_id ;

-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.
select COUNT(*) cl from likes
where user_id IN
(select user_id 
FROM(
	select *, row_number() over(order by bithday desc) rn FROM profiles
	)t where rn <=10
);

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

select from_user_id, COUNT(*) cmess from messages
group by from_user_id
order by cmess, created_at 
limit 10
;

