package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GoldFingerBean implements Serializable {
    private List<ContentBean> content;
    private boolean isSelected = false;
    private String title;

    /* loaded from: classes4.dex */
    public static class ContentBean implements Serializable {
        private String description;
        private String mode;
        private String title;

        public String getDescription() {
            return this.description;
        }

        public String getMode() {
            return this.mode;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setMode(String str) {
            this.mode = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public List<ContentBean> getContent() {
        return this.content;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setContent(List<ContentBean> list) {
        this.content = list;
    }

    public void setSelected(boolean z3) {
        this.isSelected = z3;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
