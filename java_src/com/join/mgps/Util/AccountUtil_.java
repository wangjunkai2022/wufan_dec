package com.join.mgps.Util;

import android.content.Context;
import com.join.mgps.pref.PrefDef_;
/* loaded from: classes3.dex */
public final class AccountUtil_ extends b {
    private static AccountUtil_ instance_;
    private Context context_;
    private Object rootFragment_;

    private AccountUtil_(Context context) {
        this.context_ = context;
    }

    public static AccountUtil_ getInstance_(Context context) {
        if (instance_ == null) {
            i3.c c4 = i3.c.c(null);
            AccountUtil_ accountUtil_ = new AccountUtil_(context.getApplicationContext());
            instance_ = accountUtil_;
            accountUtil_.init_();
            i3.c.c(c4);
        }
        return instance_;
    }

    private void init_() {
        this.prefDef = new PrefDef_(this.context_);
    }

    private AccountUtil_(Context context, Object obj) {
        this.context_ = context;
        this.rootFragment_ = obj;
    }
}
