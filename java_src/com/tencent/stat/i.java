package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import java.io.File;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f60110a;

    public i(Context context) {
        this.f60110a = null;
        this.f60110a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        StatLogger statLogger;
        Iterator<File> it2 = StatNativeCrashReport.a(this.f60110a).iterator();
        while (it2.hasNext()) {
            File next = it2.next();
            String a4 = StatNativeCrashReport.a(next);
            Context context = this.f60110a;
            com.tencent.stat.a.d dVar = new com.tencent.stat.a.d(context, StatService.a(context, false), a4, 3, 10240);
            dVar.a(StatNativeCrashReport.b(next));
            if (StatService.c(this.f60110a) != null) {
                StatService.c(this.f60110a).post(new k(dVar));
            }
            next.delete();
            statLogger = StatService.f59983i;
            statLogger.d("delete tombstone file:" + next.getAbsolutePath().toString());
        }
    }
}
