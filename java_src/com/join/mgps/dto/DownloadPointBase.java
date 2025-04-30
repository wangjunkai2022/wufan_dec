package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import com.psk.eventmodule.StatFactory;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class DownloadPointBase implements Serializable {
    private boolean isFromRecomDown;
    private String nodeId;
    private StatFactory.VolcanoOther position_path;
    private int _from = 0;
    private int _from_type = 0;
    private String recPosition = "";
    private String reMarks = "";

    public String getNodeId() {
        return this.nodeId;
    }

    public StatFactory.VolcanoOther getPosition_path() {
        return this.position_path;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    public String getVolcanoOtherJsonStr() {
        return this.position_path != null ? JsonMapper.getInstance().toJson(this.position_path) : "";
    }

    public int get_from() {
        return this._from;
    }

    public int get_from_type() {
        return this._from_type;
    }

    public boolean isFromRecomDown() {
        return this.isFromRecomDown;
    }

    public void setFromRecomDown(boolean z3) {
        this.isFromRecomDown = z3;
    }

    public void setNodeId(String str) {
        this.nodeId = str;
    }

    public void setPosition_path(StatFactory.VolcanoOther volcanoOther) {
        this.position_path = volcanoOther;
    }

    public void setReMarks(String str) {
        this.reMarks = str;
    }

    public void setRecPosition(String str) {
        this.recPosition = str;
    }

    public void set_from(int i2) {
        this._from = i2;
    }

    public void set_from_type(int i2) {
        this._from_type = i2;
    }
}
