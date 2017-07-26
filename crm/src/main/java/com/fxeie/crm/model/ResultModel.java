package com.fxeie.crm.model;

public class ResultModel<T> {
	private String reason;
	private T data;
	private Boolean state;
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	public Boolean getState() {
		return state;
	}
	public void setState(Boolean state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "ResultModel [reason=" + reason + ", data=" + data + ", state="
				+ state + "]";
	}
	public ResultModel(Boolean state,String reason, T data) {
		super();
		this.reason = reason;
		this.data = data;
		this.state = state;
	}
	public ResultModel() {
		super();
	}
}
