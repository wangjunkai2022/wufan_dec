package com.mob.mcl;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import com.mob.mcl.a;
import com.mob.mcl.b.b;
import com.mob.tools.network.HttpConnection;
import com.mob.tools.network.HttpResponseCallback;
import com.mob.tools.utils.ActivityTracker;
import com.mob.tools.utils.Hashon;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: com.mob.mcl.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0240a {
        public void a() {
        }

        public void b() {
        }
    }

    public static HttpConnection a(final b bVar) {
        return new HttpConnection() { // from class: com.mob.mcl.Tmpc$1
            @Override // com.mob.tools.network.HttpConnection
            public InputStream getErrorStream() throws IOException {
                return b.this.d();
            }

            @Override // com.mob.tools.network.HttpConnection
            public Map<String, List<String>> getHeaderFields() throws IOException {
                return b.this.e();
            }

            @Override // com.mob.tools.network.HttpConnection
            public InputStream getInputStream() throws IOException {
                return b.this.c();
            }

            @Override // com.mob.tools.network.HttpConnection
            public int getResponseCode() throws IOException {
                return b.this.b();
            }
        };
    }

    public static HttpResponseCallback a(String str, final com.mob.apc.a aVar) {
        return new HttpResponseCallback() { // from class: com.mob.mcl.Tmpc$2
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                if (httpConnection instanceof b) {
                    Bundle bundle = new Bundle();
                    bundle.putString("data", new Hashon().fromHashMap(((b) httpConnection).a()));
                    com.mob.apc.a.this.f52723e = bundle;
                }
            }
        };
    }

    public static ActivityTracker.Tracker a(final C0240a c0240a) {
        return new ActivityTracker.Tracker() { // from class: com.mob.mcl.Tmpc$3

            /* renamed from: b  reason: collision with root package name */
            private long f53165b;

            /* renamed from: c  reason: collision with root package name */
            private String f53166c;

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onCreated(Activity activity, Bundle bundle) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onDestroyed(Activity activity) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onPaused(Activity activity) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onResumed(Activity activity) {
                try {
                    if (this.f53165b == 0) {
                        this.f53165b = SystemClock.elapsedRealtime();
                        a.C0240a.this.a();
                    }
                    this.f53166c = activity == null ? null : activity.toString();
                } catch (Throwable unused) {
                }
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onSaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onStarted(Activity activity) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onStopped(Activity activity) {
                try {
                    String str = this.f53166c;
                    if (str != null) {
                        if (!str.equals(activity == null ? null : activity.toString())) {
                            return;
                        }
                    }
                    this.f53165b = 0L;
                    this.f53166c = null;
                    a.C0240a.this.b();
                } catch (Throwable unused) {
                }
            }
        };
    }
}
