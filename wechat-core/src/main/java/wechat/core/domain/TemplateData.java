package wechat.core.domain;

import java.util.HashMap;

/**
 * 模板消息数据对象
 * 
 * @author wanggang
 *
 */
public class TemplateData {

	private String touser;
	private String template_id;
	private String url;
	private String topcolor;
	private TemplateDataItem data = new TemplateDataItem();

	public TemplateData(String touser, String template_id, String url, String topcolor) {
		this.touser = touser;
		this.template_id = template_id;
		this.url = url;
		this.topcolor = topcolor;
	}

	public TemplateData(String touser, String template_id) {
		this.touser = touser;
		this.template_id = template_id;
	}

	public TemplateData(String touser, String template_id, String url) {
		this.touser = touser;
		this.template_id = template_id;
		this.url = url;
	}

	public String getTouser() {
		return touser;
	}

	public void setTouser(String touser) {
		this.touser = touser;
	}

	public String getTemplate_id() {
		return template_id;
	}

	public void setTemplate_id(String template_id) {
		this.template_id = template_id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTopcolor() {
		return topcolor;
	}

	public void setTopcolor(String topcolor) {
		this.topcolor = topcolor;
	}

	public TemplateDataItem getData() {
		return data;
	}

	public void setData(TemplateDataItem data) {
		this.data = data;
	}

	public TemplateDataItem getTemplateDataItemInstance() {
		return getData();
	}

	public TemplateData push(String key, String value, String color) {
		this.data.addItem(key, value, color);
		return this;
	}

	public TemplateData push(String key, String value) {
		this.data.addItem(key, value);
		return this;
	}

	public class TemplateDataItem extends HashMap<String, Item> {

		private static final long serialVersionUID = 1L;

		public Item getItemInstance(String value) {
			return new Item(value);
		}

		public Item getItemInstance(String value, String color) {
			return new Item(value, color);
		}

		public TemplateDataItem() {
		}

		public TemplateDataItem addItem(String key, String value) {
			this.put(key, new Item(value));
			return this;
		}

		public TemplateDataItem addItem(String key, String value, String color) {
			this.put(key, new Item(value, color));
			return this;
		}

	}

	public class Item {

		private String value;
		private String color = "#000000";

		public Item(String value) {
			this.value = value;
		}

		public Item(String value, String color) {
			this.value = value;
			this.color = color;
		}

		public void setColor(String color) {
			this.color = color;
		}

		public void setValue(String value) {
			this.value = value;
		}

		public String getValue() {
			return value;
		}

		public String getColor() {
			return color;
		}

	}

}
