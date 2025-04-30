package com.mob.commons.cc;

import com.mob.MobSDK;
import com.mob.tools.utils.SharePrefrenceHelper;
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final SharePrefrenceHelper f52914a;

    public h(String str, int i2) {
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
        this.f52914a = sharePrefrenceHelper;
        sharePrefrenceHelper.open(str, i2);
    }

    public void a(String str, long j4) {
        this.f52914a.putLong(str, Long.valueOf(j4));
    }

    public long b(String str, long j4) {
        return this.f52914a.getLong(str, j4);
    }

    public void a(String str, int i2) {
        this.f52914a.putInt(str, Integer.valueOf(i2));
    }

    public int b(String str, int i2) {
        return this.f52914a.getInt(str, i2);
    }

    public void a(String str, boolean z3) {
        this.f52914a.putBoolean(str, Boolean.valueOf(z3));
    }

    public boolean b(String str, boolean z3) {
        return this.f52914a.getBoolean(str, z3);
    }

    public void a(String str, String str2) {
        if (str2 == null) {
            this.f52914a.remove(str);
        } else {
            this.f52914a.putString(str, str2);
        }
    }

    public String b(String str, String str2) {
        return this.f52914a.getString(str, str2);
    }

    public void a(String str, Object obj) {
        this.f52914a.put(str, obj);
    }

    public Object a(String str) {
        return this.f52914a.get(str);
    }
}
