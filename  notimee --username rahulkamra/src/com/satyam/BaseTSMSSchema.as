package com.satyam
{
	 import mx.rpc.xml.Schema
	 public class BaseTSMSSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseTSMSSchema():void
{		
			 var xsdXML0:XML = <s:schema xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
    <s:element name="Get_Associate_Tasks">
        <s:complexType>
            <s:sequence>
                <s:element name="AssoId" type="s:int"/>
                <s:element minOccurs="0" name="AccessKey" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Get_Associate_TasksResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="Get_Associate_TasksResult">
                    <s:complexType>
                        <s:sequence>
                            <s:element ref="s:schema"/>
                            <s:any/>
                        </s:sequence>
                    </s:complexType>
                </s:element>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Get_Activity_Categories">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="AssocID" type="s:string"/>
                <s:element minOccurs="0" name="strTaskId" type="s:string"/>
                <s:element minOccurs="0" name="AccessKey" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Get_Activity_CategoriesResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="Get_Activity_CategoriesResult">
                    <s:complexType>
                        <s:sequence>
                            <s:element ref="s:schema"/>
                            <s:any/>
                        </s:sequence>
                    </s:complexType>
                </s:element>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Save_Task">
        <s:complexType>
            <s:sequence>
                <s:element name="Associate_Id" type="s:int"/>
                <s:element name="Entry_Date" type="s:dateTime"/>
                <s:element minOccurs="0" name="TaskId" type="s:string"/>
                <s:element minOccurs="0" name="ActivityCategory_Id" type="s:string"/>
                <s:element name="HrsWorked" type="s:int"/>
                <s:element name="MinsWorked" type="s:int"/>
                <s:element name="POC" type="s:int"/>
                <s:element name="Remaining_Hrs" type="s:double"/>
                <s:element minOccurs="0" name="CustomField1" type="s:string"/>
                <s:element minOccurs="0" name="CustomField2" type="s:string"/>
                <s:element minOccurs="0" name="CustomField3" type="s:string"/>
                <s:element minOccurs="0" name="AccessKey" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Save_TaskResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="Save_TaskResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Save_TimeSheet_Header">
        <s:complexType>
            <s:sequence>
                <s:element name="Associate_Id" type="s:int"/>
                <s:element name="In_Time_Hrs" type="s:int"/>
                <s:element name="In_Time_Mins" type="s:int"/>
                <s:element name="Out_Time_Hrs" type="s:int"/>
                <s:element name="Out_Time_Mins" type="s:int"/>
                <s:element name="TimeSheetDate" type="s:dateTime"/>
                <s:element name="Location" type="s:int"/>
                <s:element name="Shift" type="s:int"/>
                <s:element minOccurs="0" name="AccessKey" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Save_TimeSheet_HeaderResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="Save_TimeSheet_HeaderResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Submit_TimeSheet">
        <s:complexType>
            <s:sequence>
                <s:element name="Associate_Id" type="s:int"/>
                <s:element name="Entry_Date" type="s:dateTime"/>
                <s:element minOccurs="0" name="AccessKey" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
    <s:element name="Submit_TimeSheetResponse">
        <s:complexType>
            <s:sequence>
                <s:element minOccurs="0" name="Submit_TimeSheetResult" type="s:string"/>
            </s:sequence>
        </s:complexType>
    </s:element>
</s:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://tempuri.org/'));
		}
	}
}