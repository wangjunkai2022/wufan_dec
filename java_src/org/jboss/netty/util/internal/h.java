package org.jboss.netty.util.internal;

import java.util.ArrayList;
import java.util.regex.Pattern;
/* compiled from: StackTraceSimplifier.java */
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f73740a = Pattern.compile("^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable|internal\\.DeadLockProofWorker)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))(\\$.*)?$");

    private h() {
    }

    public static void a(Throwable th) {
        if (th.getCause() != null) {
            a(th.getCause());
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length == 0 || f73740a.matcher(stackTrace[0].getClassName()).matches()) {
            return;
        }
        ArrayList arrayList = new ArrayList(stackTrace.length);
        arrayList.add(stackTrace[0]);
        for (int i2 = 1; i2 < stackTrace.length; i2++) {
            if (!f73740a.matcher(stackTrace[i2].getClassName()).matches()) {
                arrayList.add(stackTrace[i2]);
            }
        }
        th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }
}
