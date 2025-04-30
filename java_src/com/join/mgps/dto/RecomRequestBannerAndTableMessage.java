package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class RecomRequestBannerAndTableMessage extends BaseDto {
    private List args;
    private String modeltype;

    public RecomRequestBannerAndTableMessage() {
    }

    public List getArgs() {
        return this.args;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(List list) {
        this.args = list;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }

    public RecomRequestBannerAndTableMessage(String str, List list) {
        this.modeltype = str;
        this.args = list;
    }
}
