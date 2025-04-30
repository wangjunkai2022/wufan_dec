package org.androidannotations.api.builder;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import org.androidannotations.api.builder.a;
/* compiled from: ActivityIntentBuilder.java */
/* loaded from: classes5.dex */
public abstract class a<I extends a<I>> extends e<I> implements b {
    protected Bundle lastOptions;

    public a(Context context, Class<?> cls) {
        super(context, cls);
    }

    @Override // org.androidannotations.api.builder.b
    public final f start() {
        startForResult(-1);
        return new f(this.context);
    }

    public abstract f startForResult(int i2);

    public b withOptions(Bundle bundle) {
        this.lastOptions = bundle;
        return this;
    }

    public a(Context context, Intent intent) {
        super(context, intent);
    }
}
