package com.join.mgps.dto;

import com.join.mgps.db.tables.UserPurchaseInfo;
import java.util.List;
/* loaded from: classes4.dex */
public class UserPurchaseList {
    List<UserPurchaseInfo> game_list;

    public List<UserPurchaseInfo> getGame_list() {
        return this.game_list;
    }

    public void setGame_list(List<UserPurchaseInfo> list) {
        this.game_list = list;
    }
}
