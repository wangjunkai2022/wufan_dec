package com.bytedance.pangle.download;

import android.app.Activity;
import com.bytedance.pangle.Zeus;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f10181b;

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f10182a = new CopyOnWriteArrayList();

    public b() {
        Zeus.getAppApplication().registerActivityLifecycleCallbacks(new com.bytedance.pangle.a() { // from class: com.bytedance.pangle.download.b.1
            @Override // com.bytedance.pangle.a, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                Iterator it2 = b.this.f10182a.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    c.a();
                }
            }
        });
    }

    public static b a() {
        if (f10181b == null) {
            synchronized (b.class) {
                if (f10181b == null) {
                    f10181b = new b();
                }
            }
        }
        return f10181b;
    }
}
