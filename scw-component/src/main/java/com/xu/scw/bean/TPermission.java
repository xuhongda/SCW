package com.xu.scw.bean;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.ArrayList;
import java.util.List;

/**
 * @author xuhongda
 */
public class TPermission {
    /**
     * 保存所有子菜单
     * 关键
     * 创建出来保存子菜单
     */
    @JsonIgnore
    private List<TPermission> childs = new ArrayList<>();

    private Integer id;

    private Integer pid;

    public List<TPermission> getChilds() {
        return childs;
    }

    public void setChilds(List<TPermission> childs) {
        this.childs = childs;
    }

    private String name;

    private String icon;

    private String url;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}