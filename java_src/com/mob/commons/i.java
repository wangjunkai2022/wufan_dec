package com.mob.commons;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.MobHandlerThread;
import com.mob.tools.MobLog;
import com.mob.tools.utils.ActivityTracker;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f53031a;

    /* renamed from: c  reason: collision with root package name */
    private volatile Handler f53033c;

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<h> f53032b = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private String f53034d = null;

    /* renamed from: e  reason: collision with root package name */
    private volatile long f53035e = -1;

    private i() {
        String str = null;
        if (!TextUtils.isEmpty("M-")) {
            str = u.f53112a + a("004(hmhljkin");
        }
        this.f53033c = MobHandlerThread.newHandler(str, new Handler.Callback() { // from class: com.mob.commons.i.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 0) {
                    i.this.f53035e = SystemClock.elapsedRealtime();
                    i.this.a(false);
                    i.this.c();
                } else if (i2 == 1) {
                    i.this.a(true);
                } else if (i2 == 2) {
                    i.this.a(((Long) message.obj).longValue(), true);
                } else if (i2 == 3) {
                    try {
                        h hVar = (h) message.obj;
                        if (hVar != null) {
                            i.this.f53032b.add(hVar);
                            hVar.a(i.this.f53035e > 0, true, 0L);
                        }
                    } catch (Throwable th) {
                        MobLog.getInstance().d(th);
                    }
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ActivityTracker.getInstance(MobSDK.getContext()).addTracker(new ActivityTracker.Tracker() { // from class: com.mob.commons.FBManager$2
            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onCreated(Activity activity, Bundle bundle) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onDestroyed(Activity activity) {
                if (i.this.f53035e > 0) {
                    onStopped(activity);
                }
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onPaused(Activity activity) {
            }

            @Override // com.mob.tools.utils.ActivityTracker.Tracker
            public void onResumed(Activity activity) {
                Handler handler;
                Handler handler2;
                try {
                    if (i.this.f53035e == 0) {
                        i.this.f53035e = SystemClock.elapsedRealtime();
                        handler = i.this.f53033c;
                        if (handler != null) {
                            handler2 = i.this.f53033c;
                            handler2.sendEmptyMessage(1);
                        }
                    }
                    i.this.f53034d = activity == null ? null : activity.toString();
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
                String str;
                Handler handler;
                Handler handler2;
                String str2;
                try {
                    str = i.this.f53034d;
                    if (str != null) {
                        str2 = i.this.f53034d;
                        if (!str2.equals(activity == null ? null : activity.toString())) {
                            return;
                        }
                    }
                    handler = i.this.f53033c;
                    if (handler != null) {
                        long elapsedRealtime = i.this.f53035e > 0 ? SystemClock.elapsedRealtime() - i.this.f53035e : 0L;
                        Message message = new Message();
                        message.what = 2;
                        message.obj = Long.valueOf(elapsedRealtime);
                        handler2 = i.this.f53033c;
                        handler2.sendMessage(message);
                    }
                    i.this.f53035e = 0L;
                    i.this.f53034d = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    public boolean b() {
        return this.f53035e == 0;
    }

    public static synchronized i a() {
        i iVar;
        synchronized (i.class) {
            if (f53031a == null) {
                i iVar2 = new i();
                f53031a = iVar2;
                if (iVar2.f53033c != null) {
                    f53031a.f53033c.sendEmptyMessage(0);
                }
            }
            iVar = f53031a;
        }
        return iVar;
    }

    public void a(h hVar) {
        if (hVar == null) {
            return;
        }
        synchronized (this.f53032b) {
            if (this.f53032b.contains(hVar)) {
                return;
            }
            if (this.f53033c != null) {
                Message message = new Message();
                message.what = 3;
                message.obj = hVar;
                this.f53033c.sendMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z3) {
        if (z3) {
            a(true, false, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j4, boolean z3) {
        if (z3) {
            a(false, false, j4);
        }
    }

    private void a(boolean z3, boolean z4, long j4) {
        synchronized (this.f53032b) {
            Iterator<h> it2 = this.f53032b.iterator();
            while (it2.hasNext()) {
                it2.next().a(z3, z4, j4);
            }
        }
    }

    public static String a(String str) {
        return r.a(str, 101);
    }
}
