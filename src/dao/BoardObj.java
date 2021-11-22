package dao;

public class BoardObj {
	private String id;
	private String title;
	private String description;
	private String member;
	private String filename;
	private String date;

	public BoardObj(String id, String title, String description, String member, String filename, String date) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.member = member;
		this.filename = filename;
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getDescription() {
		return description;
	}

	public String getMember() {
		return member;
	}

	public String getFilename() {
		return filename;
	}

	public String getDate() {
		return date;
	}

}