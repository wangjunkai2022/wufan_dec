package com.tencent.stat;

import com.tencent.stat.common.StatLogger;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f60105a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c f60106b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f60107c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, List list, c cVar) {
        this.f60107c = dVar;
        this.f60105a = list;
        this.f60106b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        StatLogger statLogger;
        try {
            this.f60107c.a(this.f60105a, this.f60106b);
        } catch (Throwable th) {
            statLogger = d.f60098c;
            statLogger.e(th);
        }
    }
}
