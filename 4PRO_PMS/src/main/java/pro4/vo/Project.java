package pro4.vo;

  
public class Project {
	
	private int project_no;
	private String pcategory;
	private String progress;
	private String pname;
	private String content;
	private String filename;
	
	private PrjList prjList;
	
	public Project() {
		// TODO Auto-generated constructor stub
	}
	public Project(int project_no, String pcategory, String progress, String pname, String content, String filename) {
		this.project_no = project_no;
		this.pcategory = pcategory;
		this.progress = progress;
		this.pname = pname;
		this.content = content;
		this.filename = filename;
	}	
	
	public int getProject_no() {
		return project_no;
	}
	public void setProject_no(int project_no) {
		this.project_no = project_no;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public PrjList getPrjList() {
		return prjList;
	}
	public void setPrjList(PrjList prjList) {
		this.prjList = prjList;
	}
	
	
}
