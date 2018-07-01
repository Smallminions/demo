package com.mobile.util;/** * 用来封装分页信息 */public class Pagination {    private int pageNo = 1; //当前页码    private int pageCount = 0; //总页数    private int pageSize = 13; //每页显示记录数    private int countSize = 0; //总记录条数    private String pageBar;    private String url;    public int getPageNo() {        return pageNo;    }    public void setPageNo(int pageNo) {        this.pageNo = pageNo;    }    public int getPageCount() {        if (countSize != 0) {            if (countSize % pageSize != 0) {                pageCount = countSize / pageSize + 1;            } else {                pageCount = countSize / pageSize;            }        }        return pageCount;    }    public void setPageCount(int pageCount) {        this.pageCount = pageCount;    }    public int getPageSize() {        return pageSize;    }    public void setPageSize(int pageSize) {        this.pageSize = pageSize;    }    public int getCountSize() {        return countSize;    }    public void setCountSize(int countSize) {        this.countSize = countSize;    }    public String getPageBar() {        pageCount = getPageCount();        if (pageCount != 0) {            //判断当前页号的合法性            if (pageNo < 1) {                pageNo = 1;            }            if (pageNo > pageCount) {                pageNo = pageCount;            }            StringBuilder sb = new StringBuilder();            sb.append("每页：").append(pageSize).append("&nbsp;&nbsp;页次：").append(pageNo).                    append("/").append(pageCount).append("&nbsp;&nbsp;总计：").append(countSize).                    append("&nbsp;");            sb.append("<ul class=\"pagination pagination-small border-main\">");            if (pageNo == 1) {                sb.append("<li class=\"disabled\"><a href=\"#\">首页</a> </li>");                sb.append("<li class=\"disabled\"><a href=\"#\">上页</a> </li>");            } else {                sb.append("<li><a href=\"").append(url).append("pageNo=").append("1\">首页</a> </li>");                sb.append("<li><a href=\"").append(url).append("pageNo=").append(pageNo - 1).append("\">上页</a> </li>");            }            if (pageNo == pageCount) {                sb.append("<li class=\"disabled\"><a href=\"#\">下页</a> </li>");                sb.append("<li class=\"disabled\"><a href=\"#\">尾页</a> </li>");            } else {                sb.append("<li><a href=\"").append(url).append("pageNo=").append(pageNo + 1).append("\">下页</a> </li>");                sb.append("<li><a href=\"").append(url).append("pageNo=").append(pageCount).append("\">尾页</a> </li>");            }            sb.append("</ul>");            pageBar = sb.toString();        } else {            pageBar = "";        }        return pageBar;    }    public void setUrl(String url) {        this.url = url;    }}