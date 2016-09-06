package online;

import org.omg.CORBA.Request;

import com.opensymphony.xwork2.ActionSupport;

public class updateinsert extends ActionSupport{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
String size;

public String getSize() {
	return size;
}

public void setSize(String size) {
	this.size = size;
}
public String execute(){

	return "success";
}
}
