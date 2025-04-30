package com.join.mgps.dto;

import com.join.mgps.activity.vipzone.bean.IconGame;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GameDiscoverTheNewBean implements Serializable {
    private List<IconGame> d_discover;
    private int game_count;
    private List<IconGame> game_list;
    private int pv_count;

    public List<IconGame> getD_discover() {
        return this.d_discover;
    }

    public int getGame_count() {
        return this.game_count;
    }

    public List<IconGame> getGame_list() {
        return this.game_list;
    }

    public int getPv_count() {
        return this.pv_count;
    }

    public void setD_discover(List<IconGame> list) {
        this.d_discover = list;
    }

    public void setGame_count(int i2) {
        this.game_count = i2;
    }

    public void setGame_list(List<IconGame> list) {
        this.game_list = list;
    }

    public void setPv_count(int i2) {
        this.pv_count = i2;
    }
}
