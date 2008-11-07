// ActionScript file
import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;

public var allIdCollection:ArrayCollection=new ArrayCollection();
[Bindable]
public var currentSelected:Object;


public function afterLoginStateInit():void{
	/*
	 * This is for the accordian effect 
	 */
	allIdCollection.removeAll();
	allIdCollection.addItem(tv);
	allIdCollection.addItem(ac);
	/*
	 * end here
	 */
	 
	 
	
}
public function handleBaseElementClick(event:MouseEvent):void{
	afterLoginStateInit();
	currentSelected=event.currentTarget.parent.parent
	//Alert.show(allIdCollection.getItemAt(0).toString())
	var tempArray:ArrayCollection=new ArrayCollection()
	var index:int=allIdCollection.getItemIndex(event.currentTarget.parent.parent)
	for(var i:int=0;i<allIdCollection.length;i++){
		if(i==index){
			continue;
		}else{
			tempArray.addItem(allIdCollection[i])
		}
	}
	
	allminimize.targets=tempArray.toArray();
 	newAccordian.play()
	
	
}
