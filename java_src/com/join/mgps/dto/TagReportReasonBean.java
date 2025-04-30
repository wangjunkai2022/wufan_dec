package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class TagReportReasonBean {
    private boolean checked = false;
    private String text;
    private int type;

    public TagReportReasonBean(int i2, String str) {
        this.type = i2;
        this.text = str;
    }

    public String getText() {
        return this.text;
    }

    public int getType() {
        return this.type;
    }

    public boolean isChecked() {
        return this.checked;
    }

    public void setChecked(boolean z3) {
        this.checked = z3;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
