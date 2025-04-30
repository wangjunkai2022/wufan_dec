package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class SimulatorFastEntryListBean {
    private Object data;
    private int scrollOffset;
    private int scrollPosition;
    private String tagId;
    private int type;

    public SimulatorFastEntryListBean(int i2, Object obj) {
        this.type = i2;
        this.data = obj;
    }

    public Object getData() {
        return this.data;
    }

    public int getScrollOffset() {
        return this.scrollOffset;
    }

    public int getScrollPosition() {
        return this.scrollPosition;
    }

    public String getTagId() {
        return this.tagId;
    }

    public int getType() {
        return this.type;
    }

    public void setData(Object obj) {
        this.data = obj;
    }

    public void setScrollOffset(int i2) {
        this.scrollOffset = i2;
    }

    public void setScrollPosition(int i2) {
        this.scrollPosition = i2;
    }

    public void setTagId(String str) {
        this.tagId = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public SimulatorFastEntryListBean(int i2, Object obj, String str) {
        this.type = i2;
        this.data = obj;
        this.tagId = str;
    }
}
