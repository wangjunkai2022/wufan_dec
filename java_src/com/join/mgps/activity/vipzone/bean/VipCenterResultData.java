package com.join.mgps.activity.vipzone.bean;

import com.join.mgps.dto.RecomDatabean;
import java.util.List;
/* loaded from: classes3.dex */
public class VipCenterResultData {
    private VipCenterGameListitem cp_game_list;
    private VipCenterGameListitem gf_game_list;
    private Luckbean luck_draw_info;
    private List<RecomDatabean> member_collection;
    private VipCenterGameListitem mod_game_list;
    private VipCenterGameListitem os_game_list;

    public VipCenterGameListitem getCp_game_list() {
        return this.cp_game_list;
    }

    public VipCenterGameListitem getGf_game_list() {
        return this.gf_game_list;
    }

    public Luckbean getLuck_draw_info() {
        return this.luck_draw_info;
    }

    public List<RecomDatabean> getMember_collection() {
        return this.member_collection;
    }

    public VipCenterGameListitem getMod_game_list() {
        return this.mod_game_list;
    }

    public VipCenterGameListitem getOs_game_list() {
        return this.os_game_list;
    }

    public void setCp_game_list(VipCenterGameListitem vipCenterGameListitem) {
        this.cp_game_list = vipCenterGameListitem;
    }

    public void setGf_game_list(VipCenterGameListitem vipCenterGameListitem) {
        this.gf_game_list = vipCenterGameListitem;
    }

    public void setLuck_draw_info(Luckbean luckbean) {
        this.luck_draw_info = luckbean;
    }

    public void setMember_collection(List<RecomDatabean> list) {
        this.member_collection = list;
    }

    public void setMod_game_list(VipCenterGameListitem vipCenterGameListitem) {
        this.mod_game_list = vipCenterGameListitem;
    }

    public void setOs_game_list(VipCenterGameListitem vipCenterGameListitem) {
        this.os_game_list = vipCenterGameListitem;
    }
}
