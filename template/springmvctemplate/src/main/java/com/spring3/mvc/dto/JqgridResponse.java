package com.spring3.mvc.dto;

import java.io.Serializable;
import java.util.List;

/**
 * A POJO representing a jQgrid's jsonReader property.
 * 
 * @see <a
 *      href="http://www.trirand.com/jqgridwiki/doku.php?id=wiki:retrieving_data#json_data">JSON
 *      Data</a>
 */
public class JqgridResponse<T extends Serializable> {

	/**
	 * Current page
	 */
	private int page;

	/**
	 * Total pages
	 */
	private int total;

	/**
	 * Total number of records
	 */
	private int records;

	/**
	 * Contains the actual data
	 */
	private List<T> rows;

	public JqgridResponse() {
	}

	public JqgridResponse(int page, int total, int records, List<T> rows) {
		super();
		this.page = page;
		this.total = total;
		this.records = records;
		this.rows = rows;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getRecords() {
		return records;
	}

	public void setRecords(int records) {
		this.records = records;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "JqgridResponse [page=" + page + ", total=" + total
				+ ", records=" + records + "]";
	}
}
