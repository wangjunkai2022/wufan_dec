package com.php25.PDownload;

import android.content.Context;
/* compiled from: DownloadFileDao_.java */
/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: d  reason: collision with root package name */
    private static b f56247d;

    /* renamed from: b  reason: collision with root package name */
    private Context f56248b;

    /* renamed from: c  reason: collision with root package name */
    private Object f56249c;

    private b(Context context) {
        super(context);
        this.f56248b = context;
    }

    public static b i(Context context) {
        if (f56247d == null) {
            i3.c c4 = i3.c.c(null);
            b bVar = new b(context.getApplicationContext());
            f56247d = bVar;
            bVar.j();
            i3.c.c(c4);
        }
        return f56247d;
    }

    private void j() {
    }

    private b(Context context, Object obj) {
        super(context);
        this.f56248b = context;
        this.f56249c = obj;
    }
}
