package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class TypeBean {
    private int iconNormal;
    private int iconSelected;
    private boolean isSelected;
    private String name;
    private boolean showDot;
    private int type;

    public TypeBean(int i2, String str, boolean z3, int i4, int i5) {
        this.type = i2;
        this.name = str;
        this.isSelected = z3;
        this.iconNormal = i4;
        this.iconSelected = i5;
    }

    public int getIconNormal() {
        return this.iconNormal;
    }

    public int getIconSelected() {
        return this.iconSelected;
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isShowDot() {
        return this.showDot;
    }

    public void setIconNormal(int i2) {
        this.iconNormal = i2;
    }

    public void setIconSelected(int i2) {
        this.iconSelected = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSelected(boolean z3) {
        this.isSelected = z3;
    }

    public void setShowDot(boolean z3) {
        this.showDot = z3;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
