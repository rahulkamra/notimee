// ActionScript file


		import mx.controls.Alert;
		import mx.effects.Resize;
		import mx.rpc.events.FaultEvent;
		import mx.rpc.events.ResultEvent;
		
		/*
		Changes the State of the UI
		*/
		public function changeState():void{
			var resize:Resize=new Resize();
			resize.heightTo=446;
			resize.widthTo=472;
			resize.target=this
			resize.play(null);
			this.currentState='afterLogin';
		}
		
		
		/*
		 * Send the Login details to the respective web service
		 */
		public function sendLoginDetails():void{
			Alert.show('Calling')
			webService.Get_Associate_Tasks.send()
		}
		
		/*
		 *It handle the above request respose 
		 */
		public function handleLoginResponse(event:ResultEvent):void{
			if(XMLList(event.result).children().children().children()[1].children().children()=="Access Key is not valid"){
				Alert.show('Invalid Access Key'); 
				
				if(rememberPass.selected){
					clearTable(); //If person has remembered password and if the credentials are wrong all the enteries should b deleted
				} 
			
				return;
			}
			if(Boolean(rememberPass.selected.toString())){
				saveLoginDetails();
				Alert.show('Databse insertion')
			}
			var temp1:XMLList=XMLList(event.result).children().children().children()[1].Table
		    taskData.removeAll();
		    for(var count:String in temp1){
		    	Alert.show(temp1[count].Task_Name)
		    	taskData.addItem({myLabel:temp1[count].Task_Name,id:temp1[count].Task_Name})
		    }
		    changeState()
		}
		
		/*
		 *It handle the error ,if thrown by the above request 
		 */
		 
		public function invalidLogin(event:FaultEvent):void{
			Alert.show('Invalid Username'); 
			
			if(rememberPass.selected){
				clearTable(); //If person has remembered password and if the credentials are wrong all the enteries should b deleted
			}
		}
		
		/*
		 * It retreive all the rows it will always  b one from the database
		 */
		 
		public function databaseOpened(event:SQLEvent):void{
			var statement:SQLStatement = new SQLStatement();
			statement.sqlConnection = connection;
			statement.text = "select * from userInfo";
			statement.execute();
			/* if we get a result it means somebody has saved in db so call the appropiate data */
			var temp:Object=statement.getResult().data;
			if(temp==null){
				Alert.show('Zzzz')
				return;
			}
			
			if(temp.length.toString()=='1'){
			userName.text=temp[0].userID;
			password.text=temp[0].accessKey;
			rememberPass.selected=true;
			if(int(temp[0].autoLogin)==1){
				autoLogin.selected=true;
				sendLoginDetails();
				}
			}
		}
		/*
		 *If the database is not found this function is called 
		 */
		
		public function databaseNotFound():void{
			Alert.show('Error in installing please contact Administrator');
		}
		
		/*
		 *if the person hit the save login checkbox it will call this function and the details are stored 
		 */
		public function saveLoginDetails():void{
			clearTable();
			var statement:SQLStatement = new SQLStatement();
			statement.sqlConnection = connection;
			statement.text = "insert into userInfo values(" + "'" + userName.text + "'" + ",'" + password.text+"'," + rememberPass.selected.toString()+")";
			statement.execute();
		}
		
		/*
		 *Delete all the roes from the table 
		 */
		public function clearTable():void{
			var statement:SQLStatement = new SQLStatement();
			statement.sqlConnection = connection;
			statement.text = "delete from userInfo where 1==1";
			statement.execute();
		}
		
		public function saveInDb():void{
			
		}
		