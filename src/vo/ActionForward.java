package vo;

public class ActionForward {
	private boolean isRedirect=false;
	private String path=null;
	private boolean redirect;
	
	public ActionForward() {}
	
	public ActionForward(String path , boolean redirect) {
		this.path=path;
		this.redirect = redirect;
	}
	
	public boolean isRedirect(){
		return isRedirect;
	}
	
	public String getPath(){
		return path;
	}
	
	public void setRedirect(boolean b){
		isRedirect=b;
	}
	
	public void setPath(String string){
		path=string;
	}
}