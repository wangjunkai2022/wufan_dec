package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.ReflectHelper;
import java.io.InputStream;
/* loaded from: classes4.dex */
public abstract class HTTPPart implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private long f53862a;

    /* renamed from: b  reason: collision with root package name */
    private OnReadListener f53863b;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract InputStream a() throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long b() throws Throwable;

    public Object getInputStreamEntity() throws Throwable {
        InputStream inputStream = toInputStream();
        long b4 = b() - this.f53862a;
        ReflectHelper.importClass("org.apache.http.entity.InputStreamEntity");
        return ReflectHelper.newInstance("InputStreamEntity", inputStream, Long.valueOf(b4));
    }

    public void setOffset(long j4) {
        this.f53862a = j4;
    }

    public void setOnReadListener(OnReadListener onReadListener) {
        this.f53863b = onReadListener;
    }

    public InputStream toInputStream() throws Throwable {
        return new ByteCounterInputStream(a());
    }
}
