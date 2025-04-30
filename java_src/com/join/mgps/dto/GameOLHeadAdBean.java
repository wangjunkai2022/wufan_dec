package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GameOLHeadAdBean implements Serializable {
    private GameOLHeadAdMain main;
    private List<CompanySubBean> sub;

    public GameOLHeadAdMain getMain() {
        return this.main;
    }

    public List<CompanySubBean> getSub() {
        return this.sub;
    }

    public void setMain(GameOLHeadAdMain gameOLHeadAdMain) {
        this.main = gameOLHeadAdMain;
    }

    public void setSub(List<CompanySubBean> list) {
        this.sub = list;
    }
}
