package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class WarIndexDataBean implements Serializable {
    private List<FightDataBean> hotgame;
    private List<FightDataBean> pkgame;
    private List<FightDataBean> pklocal;
    private List<FightDataBean> pkmatching;
    private List<FightDataBean> pkpass;
    private List<FightDataBean> pkroom;
    private List<FightDataBean> warad;

    public WarIndexDataBean() {
    }

    public List<FightDataBean> getHotgame() {
        return this.hotgame;
    }

    public List<FightDataBean> getPkgame() {
        return this.pkgame;
    }

    public List<FightDataBean> getPklocal() {
        return this.pklocal;
    }

    public List<FightDataBean> getPkmatching() {
        return this.pkmatching;
    }

    public List<FightDataBean> getPkpass() {
        return this.pkpass;
    }

    public List<FightDataBean> getPkroom() {
        return this.pkroom;
    }

    public List<FightDataBean> getWarad() {
        return this.warad;
    }

    public void setHotgame(List<FightDataBean> list) {
        this.hotgame = list;
    }

    public void setPkgame(List<FightDataBean> list) {
        this.pkgame = list;
    }

    public void setPklocal(List<FightDataBean> list) {
        this.pklocal = list;
    }

    public void setPkmatching(List<FightDataBean> list) {
        this.pkmatching = list;
    }

    public void setPkpass(List<FightDataBean> list) {
        this.pkpass = list;
    }

    public void setPkroom(List<FightDataBean> list) {
        this.pkroom = list;
    }

    public void setWarad(List<FightDataBean> list) {
        this.warad = list;
    }

    public WarIndexDataBean(List<FightDataBean> list, List<FightDataBean> list2, List<FightDataBean> list3, List<FightDataBean> list4, List<FightDataBean> list5, List<FightDataBean> list6, List<FightDataBean> list7) {
        this.warad = list;
        this.hotgame = list2;
        this.pkgame = list3;
        this.pkpass = list4;
        this.pkmatching = list5;
        this.pklocal = list6;
        this.pkroom = list7;
    }
}
