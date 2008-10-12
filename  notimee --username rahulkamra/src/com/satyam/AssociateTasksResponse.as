package com.satyam
{
	public class AssociateTasksResponse
	{
		public function AssociateTasksResponse()
		{
		}
		
		private String project_Id
		private String task_Id
		private String task_Name
		private String po_Name
		private String pro_Task_Name
		
		public function getProject_Id():String{
			return project_Id;
		}
		
		public function setProject_Id(project_Id:String):void{
			this.project_Id=project_Id;
		}
		
		//
		
		
		public function getTask_Id():String{
			return task_Id;
		}
		
		public function setTask_Id(task_Id:String):void{
			this.task_Id=task_Id;
		}
		
		
		//
		public function getTask_Name():String{
			return task_Name;
		}
		
		public function setTask_Name(task_Name:String):void{
			this.task_Name=task_Name;
		}
		
		//
		public function getPo_Name():String{
			return po_Name;
		}
		
		public function setPo_Name(po_Name:String):void{
			this.po_Name=po_Name;
		}
		
		//
		public function getPro_Task_Name():String{
			return pro_Task_Name;
		}
		
		public function setPro_Task_Name(pro_Task_Name:String):void{
			this.pro_Task_Name=pro_Task_Name;
		}

	}
}