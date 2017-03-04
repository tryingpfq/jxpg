package com.biyeseng.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.biyeseng.pojo.Project;
import com.biyeseng.service.ProjectService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext-dao.xml","classpath:spring/applicationContext-service.xml","classpath:spring/applicationContext-transaction.xml","classpath:mybatis/sqlMapConfig.xml"})
public class ProjectTest {

	@Autowired
	private ProjectService projectService;
	
	@Test
	public void projectTest(){
		System.out.println(projectService.findProjectListPage(1, 10).toString());
	}
	
	@Test
	public void addProjectTest(){
		Project project = new Project();
		project.setId(1);
		project.setName("tingl掌控能力");
		project.setRemark(" dfd");
		projectService.updateProject(project);
	}
	
	@Test
	public void deleteById(){
		projectService.deleteById(2);
	}
	
	@Test
	public void find(){
		System.out.println(projectService.findById(1));
	}
	
	
}
