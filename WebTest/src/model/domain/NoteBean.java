package model.domain;

import java.io.Serializable;

public class NoteBean implements Serializable{
	private int noteNum;
	private String title;
	private String content;
	
	public NoteBean() {	}
	
	public NoteBean(int noteNum, String title, String content) {
		this.noteNum = noteNum;
		this.title = title;
		this.content = content;
	}
	
	public NoteBean(String title, String content) {
		this.title = title;
		this.content = content;
	}

	public int getNoteNum() {
		return noteNum;
	}

	public void setNoteNum(int noteNum) {
		this.noteNum = noteNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("NoteBean [noteNum=");
		builder.append(noteNum);
		builder.append(", title=");
		builder.append(title);
		builder.append(", content=");
		builder.append(content);
		builder.append("]");
		return builder.toString();
	}
}