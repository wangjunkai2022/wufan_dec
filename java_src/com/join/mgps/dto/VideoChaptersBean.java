package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class VideoChaptersBean {
    private String content;
    private String createTime;
    private Integer duration;
    private Integer id;
    private boolean isChecked = false;
    private Integer page;
    private String pic;
    private Integer pid;
    private String title;

    public String getContent() {
        return this.content;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Integer getId() {
        return this.id;
    }

    public Integer getPage() {
        return this.page;
    }

    public String getPic() {
        return this.pic;
    }

    public Integer getPid() {
        return this.pid;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setChecked(boolean z3) {
        this.isChecked = z3;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setDuration(Integer num) {
        this.duration = num;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public void setPage(Integer num) {
        this.page = num;
    }

    public void setPic(String str) {
        this.pic = str;
    }

    public void setPid(Integer num) {
        this.pid = num;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
