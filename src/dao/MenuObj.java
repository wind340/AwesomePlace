package dao;

public class MenuObj {

	private String mtitle;
	private String mname;
	private String mprice;
	private String mdescription;
	private String mfile;
	
	public MenuObj(String mtitle, String mname, String mprice, String mdescription, String mfile) {
		super();
		this.mtitle = mtitle;
		this.mname = mname;
		this.mprice = mprice;
		this.mdescription = mdescription;
		this.mfile = mfile;
	}

	public String getMtitle() {
		return this.mtitle;
	}

	public String getMname() {
		return this.mname;
	}

	public String getMprice() {
		return mprice;
	}

	public String getMdescription () {
		return this.mdescription;
	}

	public String getMfile() {
		return this.mfile;
	}
	
	
	
	
}
