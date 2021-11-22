package dao;

public class EventObj {

	private String eid;
	private String etitle;
	private String esubtitle;
	private String econtent;
	private String efilename;
	private String edate;

	public EventObj(String eid, String etitle, String esubtitle, String econtent, String efilename, String edate) {
		super();
		this.eid = eid;
		this.etitle = etitle;
		this.esubtitle = esubtitle;
		this.econtent = econtent;
		this.efilename = efilename;
		this.edate = edate;
	}

	public String getEid() {
		return eid;
	}

	public String getEtitle() {
		return etitle;
	}

	public String getEsubtitle() {
		return esubtitle;
	}

	public String getEcontent() {
		return econtent;
	}

	public String getEfilename() {
		return efilename;
	}

	public String getEdate() {
		return edate;
	}

}