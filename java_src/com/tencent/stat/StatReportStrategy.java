package com.tencent.stat;
/* loaded from: classes4.dex */
public enum StatReportStrategy {
    INSTANT(1),
    ONLY_WIFI(2),
    BATCH(3),
    APP_LAUNCH(4),
    DEVELOPER(5),
    PERIOD(6),
    ONLY_WIFI_NO_CACHE(7);
    

    /* renamed from: a  reason: collision with root package name */
    int f59974a;

    StatReportStrategy(int i2) {
        this.f59974a = i2;
    }

    public static StatReportStrategy getStatReportStrategy(int i2) {
        StatReportStrategy[] values;
        for (StatReportStrategy statReportStrategy : values()) {
            if (i2 == statReportStrategy.a()) {
                return statReportStrategy;
            }
        }
        return null;
    }

    public int a() {
        return this.f59974a;
    }
}
