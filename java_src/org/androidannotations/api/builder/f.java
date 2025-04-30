package org.androidannotations.api.builder;

import android.app.Activity;
import android.content.Context;
/* compiled from: PostActivityStarter.java */
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private Context f73157a;

    public f(Context context) {
        this.f73157a = context;
    }

    public void a(int i2, int i4) {
        Context context = this.f73157a;
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(i2, i4);
        }
    }
}
