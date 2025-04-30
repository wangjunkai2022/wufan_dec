package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.stat.a.e f60113a;

    /* renamed from: b  reason: collision with root package name */
    private StatReportStrategy f60114b;

    /* renamed from: c  reason: collision with root package name */
    private c f60115c = new l(this);

    public k(com.tencent.stat.a.e eVar) {
        this.f60114b = null;
        this.f60113a = eVar;
        this.f60114b = StatConfig.getStatSendStrategy();
    }

    private void a() {
        if (n.b().a() <= 0) {
            a(true);
            return;
        }
        n.b().a(this.f60113a, (c) null);
        n.b().a(-1);
    }

    private void a(boolean z3) {
        d.b().a(this.f60113a, this.f60115c);
    }

    @Override // java.lang.Runnable
    public void run() {
        StatLogger statLogger;
        StatLogger statLogger2;
        StatLogger statLogger3;
        n a4;
        com.tencent.stat.a.e eVar;
        StatLogger statLogger4;
        StatLogger statLogger5;
        StatLogger statLogger6;
        try {
            if (StatConfig.isEnableStatService()) {
                if (this.f60113a.a() != com.tencent.stat.a.f.ERROR && this.f60113a.d().length() > StatConfig.getMaxReportEventLength()) {
                    statLogger6 = StatService.f59983i;
                    statLogger6.e("Event length exceed StatConfig.getMaxReportEventLength(): " + StatConfig.getMaxReportEventLength());
                    return;
                }
                if (StatConfig.getMaxSessionStatReportCount() > 0) {
                    if (StatConfig.getCurSessionStatReportCount() >= StatConfig.getMaxSessionStatReportCount()) {
                        statLogger5 = StatService.f59983i;
                        statLogger5.e("Times for reporting events has reached the limit of StatConfig.getMaxSessionStatReportCount() in current session.");
                        return;
                    }
                    StatConfig.c();
                }
                statLogger2 = StatService.f59983i;
                statLogger2.i("Lauch stat task in thread:" + Thread.currentThread().getName());
                Context c4 = this.f60113a.c();
                m mVar = null;
                if (!com.tencent.stat.common.k.h(c4)) {
                    n.a(c4).a(this.f60113a, (c) null);
                    return;
                }
                if (StatConfig.isEnableSmartReporting() && this.f60114b != StatReportStrategy.ONLY_WIFI_NO_CACHE && com.tencent.stat.common.k.g(c4)) {
                    this.f60114b = StatReportStrategy.INSTANT;
                }
                switch (h.f60109a[this.f60114b.ordinal()]) {
                    case 1:
                        a();
                        return;
                    case 2:
                        if (!com.tencent.stat.common.k.e(c4)) {
                            a4 = n.a(c4);
                            eVar = this.f60113a;
                            a4.a(eVar, mVar);
                            return;
                        }
                        a();
                        return;
                    case 3:
                    case 4:
                        a4 = n.a(c4);
                        eVar = this.f60113a;
                        a4.a(eVar, mVar);
                        return;
                    case 5:
                        if (n.a(this.f60113a.c()) == null) {
                            return;
                        }
                        a4 = n.a(c4);
                        eVar = this.f60113a;
                        mVar = new m(this);
                        a4.a(eVar, mVar);
                        return;
                    case 6:
                        try {
                            n.a(c4).a(this.f60113a, (c) null);
                            Long valueOf = Long.valueOf(com.tencent.stat.common.p.a(c4, "last_period_ts", 0L));
                            Long valueOf2 = Long.valueOf(System.currentTimeMillis());
                            if (Long.valueOf(Long.valueOf(valueOf2.longValue() - valueOf.longValue()).longValue() / 60000).longValue() > StatConfig.getSendPeriodMinutes()) {
                                n.a(c4).a(-1);
                                com.tencent.stat.common.p.b(c4, "last_period_ts", valueOf2.longValue());
                                return;
                            }
                            return;
                        } catch (Exception e4) {
                            statLogger3 = StatService.f59983i;
                            statLogger3.e(e4);
                            return;
                        }
                    case 7:
                        if (com.tencent.stat.common.k.e(c4)) {
                            a(false);
                            return;
                        }
                        return;
                    default:
                        statLogger4 = StatService.f59983i;
                        statLogger4.error("Invalid stat strategy:" + StatConfig.getStatSendStrategy());
                        return;
                }
            }
        } catch (Throwable th) {
            statLogger = StatService.f59983i;
            statLogger.e(th);
        }
    }
}
