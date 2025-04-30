package com.bytedance.pangle.f;

import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
/* loaded from: classes2.dex */
final class l implements k {

    /* renamed from: a  reason: collision with root package name */
    private static final long f10234a = Os.sysconf(OsConstants._SC_PAGESIZE);

    /* renamed from: b  reason: collision with root package name */
    private final FileDescriptor f10235b;

    /* renamed from: c  reason: collision with root package name */
    private final long f10236c;

    /* renamed from: d  reason: collision with root package name */
    private final long f10237d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(FileDescriptor fileDescriptor, long j4, long j5) {
        this.f10235b = fileDescriptor;
        this.f10236c = j4;
        this.f10237d = j5;
    }

    @Override // com.bytedance.pangle.f.k
    public final long a() {
        return this.f10237d;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0113 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.pangle.f.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.bytedance.pangle.f.j r20, long r21, int r23) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.f.l.a(com.bytedance.pangle.f.j, long, int):void");
    }
}
