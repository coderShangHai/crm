package com.fxeie.crm.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PageResult<T> {
	private Integer total;
	private List<T> rows;
	private Integer page;
	private Integer pageSize;
	private Integer min;
	public Integer getMin() {
		return min;
	}
	public void setMin(Integer min) {
		this.min = min;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public PageResult(){}
	public PageResult(Map<String,Object> params){
		params = params==null?new HashMap<String,Object>():params;
		Integer _page = 1;
		Integer _pageSize = 10;
		_page = params.containsKey("page")?Integer.valueOf(""+params.get("page")):1;
		if(params.containsKey("pageSize")){
			_pageSize = Integer.valueOf(""+params.get("pageSize"));
		}else if(params.containsKey("rows")){
			_pageSize = Integer.valueOf(""+params.get("rows"));
		}
		setPage(_page);
		setPageSize(_pageSize);
		params.put("min", (_page-1)*_pageSize);
		params.put("pageSize", getPageSize());
	}
	@Override
	public String toString() {
		return "PageResult [total=" + total + ", rows=" + rows + ", page="
				+ page + ", pageSize=" + pageSize + ", min=" + min + "]";
	}
}
