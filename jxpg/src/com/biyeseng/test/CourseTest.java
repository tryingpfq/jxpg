package com.biyeseng.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.biyeseng.pojo.Course;
import com.biyeseng.service.CourseService;
import com.biyeseng.utils.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:spring/applicationContext-dao.xml",
		"classpath:spring/applicationContext-service.xml",
		"classpath:spring/applicationContext-transaction.xml",
		"classpath:mybatis/sqlMapConfig.xml" })
public class CourseTest {
	@Autowired
	private CourseService courseService;

	@Test
	public void test() throws Exception {
		// Integer count=courseService.findCount();
		Page<Course> page = courseService.queryPage(3);
		System.out.println(page.getList().size());
	}

	@Test
	public void test1() throws Exception {
		Course course = new Course();
		// course.setCourseNo("03");
		course.setCourseName("java");
		Integer count = courseService.findCountQuery(course);
		System.out.println(count);
	}

	@Test
	public void queryTest() throws Exception {
		Course course = new Course();
		// course.setCourseName("03");
		course.setCourseNo("03");
		Page<Course> page = courseService.query(course, 1);
		System.out.println(page.getCount());
	}

	@Test
	public void addTest() throws Exception {
		Course course = new Course();
		course.setCourseName("专业英语");
		course.setCourseNo("123543");
		course.setScore(3);
		course.setRemark("英语专业学生选择");
		course.setTeacherId(7);
		courseService.addCourse(course);
	}

	@Test
	public void deleteTest() throws Exception {
		courseService.deleteCourse(72);
	}

	@Test
	public void update() throws Exception {
		Course course = new Course();
		course.setCourseName("地理课");
		course.setCourseNo("125968");
		course.setId(75);
		course.setRemark("尽快学习");
		courseService.update(course);
	}
}
