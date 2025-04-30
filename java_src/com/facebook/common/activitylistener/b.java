package com.facebook.common.activitylistener;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import com.facebook.common.internal.h;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* compiled from: ActivityListenerManager.java */
/* loaded from: classes.dex */
public class b {

    /* compiled from: ActivityListenerManager.java */
    /* loaded from: classes2.dex */
    private static class a extends c {

        /* renamed from: c  reason: collision with root package name */
        private final WeakReference<com.facebook.common.activitylistener.a> f11667c;

        public a(com.facebook.common.activitylistener.a aVar) {
            this.f11667c = new WeakReference<>(aVar);
        }

        private com.facebook.common.activitylistener.a c(Activity activity) {
            com.facebook.common.activitylistener.a aVar = this.f11667c.get();
            if (aVar == null) {
                h.d(activity instanceof d);
                ((d) activity).b(this);
            }
            return aVar;
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void b(Activity activity) {
            com.facebook.common.activitylistener.a c4 = c(activity);
            if (c4 != null) {
                c4.b(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onDestroy(Activity activity) {
            com.facebook.common.activitylistener.a c4 = c(activity);
            if (c4 != null) {
                c4.onDestroy(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onPause(Activity activity) {
            com.facebook.common.activitylistener.a c4 = c(activity);
            if (c4 != null) {
                c4.onPause(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onResume(Activity activity) {
            com.facebook.common.activitylistener.a c4 = c(activity);
            if (c4 != null) {
                c4.onResume(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onStart(Activity activity) {
            com.facebook.common.activitylistener.a c4 = c(activity);
            if (c4 != null) {
                c4.onStart(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onStop(Activity activity) {
            com.facebook.common.activitylistener.a c4 = c(activity);
            if (c4 != null) {
                c4.onStop(activity);
            }
        }
    }

    @Nullable
    public static d a(Context context) {
        if (!(context instanceof d) && (context instanceof ContextWrapper)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof d) {
            return (d) context;
        }
        return null;
    }

    public static void b(com.facebook.common.activitylistener.a aVar, Context context) {
        d a4 = a(context);
        if (a4 != null) {
            a4.a(new a(aVar));
        }
    }
}
