use quanlysinhvien;

select *
from `subject`
where Credit = (select max(Credit) from `subject`);

select sub.SubID, sub.SubName, sub.Credit, sub.`status`, m.Mark
from `subject` sub
inner join mark m on sub.SubID = m.SubID
where Mark = (select max(Mark) from mark);

select student.StudentID, student.StudentName, student.Address, student.Phone, student.`status`, student.ClassID, avg(mark.mark) AS AveragePoint
from student 
inner join mark on mark.StudentID = student.StudentID
group by (student.StudentID)
order by (AveragePoint) DESC;