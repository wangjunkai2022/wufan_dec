package com.mob;

import com.mob.tools.proguard.PublicMemberKeeper;
@Deprecated
/* loaded from: classes4.dex */
public class RHolder implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static RHolder f52715a;

    /* renamed from: b  reason: collision with root package name */
    private int f52716b;

    /* renamed from: c  reason: collision with root package name */
    private int f52717c;

    /* renamed from: d  reason: collision with root package name */
    private int f52718d;

    private RHolder() {
    }

    public static RHolder getInstance() {
        if (f52715a == null) {
            synchronized (RHolder.class) {
                if (f52715a == null) {
                    f52715a = new RHolder();
                }
            }
        }
        return f52715a;
    }

    public int getActivityThemeId() {
        return this.f52716b;
    }

    public int getDialogLayoutId() {
        return this.f52717c;
    }

    public int getDialogThemeId() {
        return this.f52718d;
    }

    public RHolder setActivityThemeId(int i2) {
        this.f52716b = i2;
        return f52715a;
    }

    public RHolder setDialogLayoutId(int i2) {
        this.f52717c = i2;
        return f52715a;
    }

    public RHolder setDialogThemeId(int i2) {
        this.f52718d = i2;
        return f52715a;
    }
}
