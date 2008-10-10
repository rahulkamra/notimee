
/**
 * BaseTSMSService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.satyam{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseTSMS extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseTSMSService:WSDLService;
		private var BaseTSMSPortType:WSDLPortType;
		private var BaseTSMSBinding:WSDLBinding;
		private var BaseTSMSPort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseTSMSSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseTSMS(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseTSMSSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseTSMSService = new WSDLService("BaseTSMSService");
			BaseTSMSPort = new WSDLPort("BaseTSMSPort",BaseTSMSService);
        	BaseTSMSBinding = new WSDLBinding("BaseTSMSBinding");
	        BaseTSMSPortType = new WSDLPortType("BaseTSMSPortType");
       		BaseTSMSBinding.portType = BaseTSMSPortType;
       		BaseTSMSPort.binding = BaseTSMSBinding;
       		BaseTSMSService.addPort(BaseTSMSPort);
       		BaseTSMSPort.endpointURI = "http://ontime.satyam.com/Webservices/TSMS.asmx";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseTSMSPort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
	        var responseMessage:WSDLMessage;
//define the WSDLOperation: new WSDLOperation(methodName)
            var Get_Associate_Tasks:WSDLOperation = new WSDLOperation("Get_Associate_Tasks");
				//input message for the operation
    	        requestMessage = new WSDLMessage("Get_Associate_Tasks");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AssoId"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AccessKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tempuri.org/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://tempuri.org/","Get_Associate_Tasks");
                
                responseMessage = new WSDLMessage("Get_Associate_TasksResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Get_Associate_TasksResult"),null,new QName("http://tempuri.org/","Get_Associate_TasksResult_type0")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tempuri.org/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://tempuri.org/","Get_Associate_Tasks");Get_Associate_Tasks.inputMessage = requestMessage;
	        Get_Associate_Tasks.outputMessage = responseMessage;
            Get_Associate_Tasks.schemaManager = this.schemaMgr;
            Get_Associate_Tasks.soapAction = "http://tempuri.org/Get_Associate_Tasks";
            Get_Associate_Tasks.style = "document";
            BaseTSMSService.getPort("BaseTSMSPort").binding.portType.addOperation(Get_Associate_Tasks);//define the WSDLOperation: new WSDLOperation(methodName)
            var Get_Activity_Categories:WSDLOperation = new WSDLOperation("Get_Activity_Categories");
				//input message for the operation
    	        requestMessage = new WSDLMessage("Get_Activity_Categories");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AssocID"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","strTaskId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AccessKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tempuri.org/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://tempuri.org/","Get_Activity_Categories");
                
                responseMessage = new WSDLMessage("Get_Activity_CategoriesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Get_Activity_CategoriesResult"),null,new QName("http://tempuri.org/","Get_Activity_CategoriesResult_type0")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tempuri.org/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://tempuri.org/","Get_Activity_Categories");Get_Activity_Categories.inputMessage = requestMessage;
	        Get_Activity_Categories.outputMessage = responseMessage;
            Get_Activity_Categories.schemaManager = this.schemaMgr;
            Get_Activity_Categories.soapAction = "http://tempuri.org/Get_Activity_Categories";
            Get_Activity_Categories.style = "document";
            BaseTSMSService.getPort("BaseTSMSPort").binding.portType.addOperation(Get_Activity_Categories);//define the WSDLOperation: new WSDLOperation(methodName)
            var Save_Task:WSDLOperation = new WSDLOperation("Save_Task");
				//input message for the operation
    	        requestMessage = new WSDLMessage("Save_Task");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Associate_Id"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Entry_Date"),null,new QName("http://www.w3.org/2001/XMLSchema","dateTime")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","TaskId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","ActivityCategory_Id"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","HrsWorked"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","MinsWorked"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","POC"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Remaining_Hrs"),null,new QName("http://www.w3.org/2001/XMLSchema","double")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","CustomField1"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","CustomField2"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","CustomField3"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AccessKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tempuri.org/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://tempuri.org/","Save_Task");
                
                responseMessage = new WSDLMessage("Save_TaskResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Save_TaskResult"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tempuri.org/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://tempuri.org/","Save_Task");Save_Task.inputMessage = requestMessage;
	        Save_Task.outputMessage = responseMessage;
            Save_Task.schemaManager = this.schemaMgr;
            Save_Task.soapAction = "http://tempuri.org/Save_Task";
            Save_Task.style = "document";
            BaseTSMSService.getPort("BaseTSMSPort").binding.portType.addOperation(Save_Task);//define the WSDLOperation: new WSDLOperation(methodName)
            var Save_TimeSheet_Header:WSDLOperation = new WSDLOperation("Save_TimeSheet_Header");
				//input message for the operation
    	        requestMessage = new WSDLMessage("Save_TimeSheet_Header");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Associate_Id"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","In_Time_Hrs"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","In_Time_Mins"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Out_Time_Hrs"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Out_Time_Mins"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","TimeSheetDate"),null,new QName("http://www.w3.org/2001/XMLSchema","dateTime")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Location"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Shift"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AccessKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tempuri.org/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://tempuri.org/","Save_TimeSheet_Header");
                
                responseMessage = new WSDLMessage("Save_TimeSheet_HeaderResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Save_TimeSheet_HeaderResult"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tempuri.org/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://tempuri.org/","Save_TimeSheet_Header");Save_TimeSheet_Header.inputMessage = requestMessage;
	        Save_TimeSheet_Header.outputMessage = responseMessage;
            Save_TimeSheet_Header.schemaManager = this.schemaMgr;
            Save_TimeSheet_Header.soapAction = "http://tempuri.org/Save_TimeSheet_Header";
            Save_TimeSheet_Header.style = "document";
            BaseTSMSService.getPort("BaseTSMSPort").binding.portType.addOperation(Save_TimeSheet_Header);//define the WSDLOperation: new WSDLOperation(methodName)
            var Submit_TimeSheet:WSDLOperation = new WSDLOperation("Submit_TimeSheet");
				//input message for the operation
    	        requestMessage = new WSDLMessage("Submit_TimeSheet");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Associate_Id"),null,new QName("http://www.w3.org/2001/XMLSchema","int")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Entry_Date"),null,new QName("http://www.w3.org/2001/XMLSchema","dateTime")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","AccessKey"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://tempuri.org/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://tempuri.org/","Submit_TimeSheet");
                
                responseMessage = new WSDLMessage("Submit_TimeSheetResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://tempuri.org/","Submit_TimeSheetResult"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://tempuri.org/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://tempuri.org/","Submit_TimeSheet");Submit_TimeSheet.inputMessage = requestMessage;
	        Submit_TimeSheet.outputMessage = responseMessage;
            Submit_TimeSheet.schemaManager = this.schemaMgr;
            Submit_TimeSheet.soapAction = "http://tempuri.org/Submit_TimeSheet";
            Submit_TimeSheet.style = "document";
            BaseTSMSService.getPort("BaseTSMSPort").binding.portType.addOperation(Submit_TimeSheet);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tempuri.org/","Get_Associate_TasksResult_type0"),com.satyam.Get_Associate_TasksResult_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://tempuri.org/","Get_Activity_CategoriesResult_type0"),com.satyam.Get_Activity_CategoriesResult_type0);}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param AssoId* @param AccessKey
		 * @return Asynchronous token
		 */
		public function get_Associate_Tasks(assoId:Number,accessKey:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["AssoId"] = assoId;
	            out["AccessKey"] = accessKey;
	            currentOperation = BaseTSMSService.getPort("BaseTSMSPort").binding.portType.getOperation("Get_Associate_Tasks");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param AssocID* @param strTaskId* @param AccessKey
		 * @return Asynchronous token
		 */
		public function get_Activity_Categories(assocID:String,strTaskId:String,accessKey:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["AssocID"] = assocID;
	            out["strTaskId"] = strTaskId;
	            out["AccessKey"] = accessKey;
	            currentOperation = BaseTSMSService.getPort("BaseTSMSPort").binding.portType.getOperation("Get_Activity_Categories");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param Associate_Id* @param Entry_Date* @param TaskId* @param ActivityCategory_Id* @param HrsWorked* @param MinsWorked* @param POC* @param Remaining_Hrs* @param CustomField1* @param CustomField2* @param CustomField3* @param AccessKey
		 * @return Asynchronous token
		 */
		public function save_Task(associate_Id:Number,entry_Date:Date,taskId:String,activityCategory_Id:String,hrsWorked:Number,minsWorked:Number,pOC:Number,remaining_Hrs:Number,customField1:String,customField2:String,customField3:String,accessKey:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["Associate_Id"] = associate_Id;
	            out["Entry_Date"] = entry_Date;
	            out["TaskId"] = taskId;
	            out["ActivityCategory_Id"] = activityCategory_Id;
	            out["HrsWorked"] = hrsWorked;
	            out["MinsWorked"] = minsWorked;
	            out["POC"] = pOC;
	            out["Remaining_Hrs"] = remaining_Hrs;
	            out["CustomField1"] = customField1;
	            out["CustomField2"] = customField2;
	            out["CustomField3"] = customField3;
	            out["AccessKey"] = accessKey;
	            currentOperation = BaseTSMSService.getPort("BaseTSMSPort").binding.portType.getOperation("Save_Task");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param Associate_Id* @param In_Time_Hrs* @param In_Time_Mins* @param Out_Time_Hrs* @param Out_Time_Mins* @param TimeSheetDate* @param Location* @param Shift* @param AccessKey
		 * @return Asynchronous token
		 */
		public function save_TimeSheet_Header(associate_Id:Number,in_Time_Hrs:Number,in_Time_Mins:Number,out_Time_Hrs:Number,out_Time_Mins:Number,timeSheetDate:Date,location:Number,shift:Number,accessKey:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["Associate_Id"] = associate_Id;
	            out["In_Time_Hrs"] = in_Time_Hrs;
	            out["In_Time_Mins"] = in_Time_Mins;
	            out["Out_Time_Hrs"] = out_Time_Hrs;
	            out["Out_Time_Mins"] = out_Time_Mins;
	            out["TimeSheetDate"] = timeSheetDate;
	            out["Location"] = location;
	            out["Shift"] = shift;
	            out["AccessKey"] = accessKey;
	            currentOperation = BaseTSMSService.getPort("BaseTSMSPort").binding.portType.getOperation("Save_TimeSheet_Header");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param Associate_Id* @param Entry_Date* @param AccessKey
		 * @return Asynchronous token
		 */
		public function submit_TimeSheet(associate_Id:Number,entry_Date:Date,accessKey:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["Associate_Id"] = associate_Id;
	            out["Entry_Date"] = entry_Date;
	            out["AccessKey"] = accessKey;
	            currentOperation = BaseTSMSService.getPort("BaseTSMSPort").binding.portType.getOperation("Submit_TimeSheet");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        {
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                decoder.resultFormat = "object";
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}