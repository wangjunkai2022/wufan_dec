package org.androidannotations.api.builder;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import org.androidannotations.api.builder.g;
/* compiled from: ServiceIntentBuilder.java */
/* loaded from: classes.dex */
public abstract class g<I extends g<I>> extends e<I> {
    public g(Context context, Class<?> cls) {
        super(context, cls);
    }

    public ComponentName a() {
        return this.context.startService(this.intent);
    }

    public boolean b() {
        return this.context.stopService(this.intent);
    }

    public g(Context context, Intent intent) {
        super(context, intent);
    }
}
