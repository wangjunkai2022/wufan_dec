package com.tencent.stat.a;

import android.content.Context;
import com.join.mgps.activity.ForumGroupMemberActivity_;
import com.tencent.stat.StatGameUser;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class g extends e {

    /* renamed from: a  reason: collision with root package name */
    private StatGameUser f60022a;

    public g(Context context, int i2, StatGameUser statGameUser) {
        super(context, i2);
        this.f60022a = null;
        this.f60022a = statGameUser.m16clone();
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.MTA_GAME_USER;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        StatGameUser statGameUser = this.f60022a;
        if (statGameUser == null) {
            return false;
        }
        com.tencent.stat.common.k.a(jSONObject, "wod", statGameUser.getWorldName());
        com.tencent.stat.common.k.a(jSONObject, ForumGroupMemberActivity_.f29856t, this.f60022a.getAccount());
        com.tencent.stat.common.k.a(jSONObject, "lev", this.f60022a.getLevel());
        return true;
    }
}
