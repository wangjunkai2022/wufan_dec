package com.join.mgps.activity.screenshot;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class ScreenshotGamedetialBean implements Serializable {
    private String big_pic;
    private int count;
    private int id;
    private String pic;
    private String title;

    public String getBig_pic() {
        return this.big_pic;
    }

    public int getCount() {
        return this.count;
    }

    public int getId() {
        return this.id;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setBig_pic(String str) {
        this.big_pic = str;
    }

    public void setCount(int i2) {
        this.count = i2;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPic(String str) {
        this.pic = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
