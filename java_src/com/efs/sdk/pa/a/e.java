package com.efs.sdk.pa.a;

import android.os.SystemClock;
import android.util.Printer;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Iterator;
import java.util.Vector;
/* loaded from: classes2.dex */
final class e implements Printer {

    /* renamed from: f  reason: collision with root package name */
    private long f11521f;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11517b = false;

    /* renamed from: c  reason: collision with root package name */
    private String f11518c = null;

    /* renamed from: d  reason: collision with root package name */
    private long f11519d = -1;

    /* renamed from: e  reason: collision with root package name */
    private long f11520e = -1;

    /* renamed from: a  reason: collision with root package name */
    Vector<d> f11516a = new Vector<>();

    @Override // android.util.Printer
    public final void println(String str) {
        if (str.startsWith(SimpleComparison.GREATER_THAN_OPERATION)) {
            this.f11519d = SystemClock.elapsedRealtime();
            this.f11520e = SystemClock.currentThreadTimeMillis();
            this.f11518c = str;
            this.f11517b = true;
            Iterator<d> it2 = this.f11516a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        } else if (this.f11517b && str.startsWith(SimpleComparison.LESS_THAN_OPERATION)) {
            this.f11517b = false;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f11519d;
            if (elapsedRealtime > this.f11521f) {
                long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis() - this.f11520e;
                Iterator<d> it3 = this.f11516a.iterator();
                while (it3.hasNext()) {
                    it3.next().a(this.f11518c, elapsedRealtime, currentThreadTimeMillis);
                }
            }
        }
    }
}
