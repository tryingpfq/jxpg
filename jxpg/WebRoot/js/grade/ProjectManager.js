function clickAddProject(){
	$.ajax({
		type : 'post',
		url : 'project/add',
		data : 'name='+$("#projectName").val()+'&remark='+$("#projectRemark").val(),
		async : false,
		dataType : 'html',
		success: function(data){
			if(data=='2000'){
				alert("成功保存");
				location.href="gradeManager/gradeList.jsp";
			}
		}
	});
}

function clickUpdateProject(){
	$.ajax({
		type : 'post',
		url : 'project/update',
		data : 'id='+localStorage.getItem("projectId")+'&name='+$("#projectName").val()+'&remark='+$("#projectRemark").val(),
		async : false,
		dataType : 'html',
		success: function(data){
			if(data=='2000'){
				alert("成功保存");
				location.href="gradeManager/gradeList.jsp";
			}
		}
	});
}

$(function(){
	if(localStorage.getItem("projectType")=="update"){
		$.ajax({
			type : 'post',
			url : 'project/findById',
			data : 'id='+localStorage.getItem("projectId"),
			async : false,
			dataType : 'json',
			success: function(data){
				$("#projectName").val(data.name);
				$("#projectRemark").val(data.remark);
			}
		});
	}
});