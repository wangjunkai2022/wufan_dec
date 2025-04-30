package com.join.mgps.dto;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public class GameTagsBean implements Serializable {
    private String id;
    private String name;
    private Integer tagType;
    private Integer voteFlag;
    private boolean checked = false;
    private boolean showDelete = false;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GameTagsBean gameTagsBean = (GameTagsBean) obj;
        return this.id.equals(gameTagsBean.id) && this.name.equals(gameTagsBean.name) && this.tagType.equals(gameTagsBean.tagType);
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Integer getTagType() {
        return this.tagType;
    }

    public Integer getVoteFlag() {
        return this.voteFlag;
    }

    public int hashCode() {
        return Objects.hash(this.id, this.name, this.tagType);
    }

    public boolean isChecked() {
        return this.checked;
    }

    public boolean isShowDelete() {
        return this.showDelete;
    }

    public void setChecked(boolean z3) {
        this.checked = z3;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setShowDelete(boolean z3) {
        this.showDelete = z3;
    }

    public void setTagType(Integer num) {
        this.tagType = num;
    }

    public void setVoteFlag(Integer num) {
        this.voteFlag = num;
    }
}
