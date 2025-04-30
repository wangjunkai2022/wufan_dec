package com.efs.sdk.pa.a;

import android.app.Application;
import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.efs.sdk.pa.PA;
import com.efs.sdk.pa.PAANRListener;
import com.efs.sdk.pa.PAMsgListener;
import com.efs.sdk.pa.a.b;
import com.efs.sdk.pa.a.g;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
/* loaded from: classes2.dex */
public final class c implements PA {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11507a;

    /* renamed from: c  reason: collision with root package name */
    private e f11509c;

    /* renamed from: d  reason: collision with root package name */
    private f f11510d;

    /* renamed from: e  reason: collision with root package name */
    private a f11511e;

    /* renamed from: h  reason: collision with root package name */
    private boolean f11514h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f11515i;

    /* renamed from: b  reason: collision with root package name */
    private Looper f11508b = Looper.myLooper();

    /* renamed from: f  reason: collision with root package name */
    private b f11512f = new b();

    /* renamed from: g  reason: collision with root package name */
    private g f11513g = new g();

    public c(boolean z3) {
        this.f11515i = z3;
    }

    @Override // com.efs.sdk.pa.PA
    public final void enableDumpToFile(String str) {
        FileOutputStream fileOutputStream;
        f fVar = this.f11510d;
        if (fVar == null || str == null || str.trim().length() == 0) {
            return;
        }
        fVar.f11524c = str;
        if (fVar.f11525d == null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(str);
            } catch (Exception unused) {
            }
            try {
                fVar.f11525d = new BufferedOutputStream(fileOutputStream);
            } catch (Exception unused2) {
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (Exception unused3) {
                    }
                }
            }
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void enableLog(boolean z3) {
        this.f11507a = z3;
        this.f11512f.f11501b = z3;
        this.f11513g.f11527b = z3;
        f fVar = this.f11510d;
        if (fVar != null) {
            fVar.f11523b = z3;
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final int endCalFPS(String str) {
        if (this.f11514h) {
            b bVar = this.f11512f;
            if (str != null && str.trim().length() != 0) {
                b.a aVar = bVar.f11500a.get(str);
                if (aVar == null) {
                    return 0;
                }
                View view = aVar.f11505d;
                if (view != null && aVar.f11504c != null) {
                    view.getViewTreeObserver().removeOnPreDrawListener(aVar.f11504c);
                }
                bVar.f11500a.remove(str);
                int currentTimeMillis = (int) (((float) aVar.f11503b) / (((float) (System.currentTimeMillis() - aVar.f11502a)) / 1000.0f));
                r1 = currentTimeMillis > 0 ? currentTimeMillis : 0;
                if (bVar.f11501b) {
                    StringBuilder sb = new StringBuilder("key=");
                    sb.append(str);
                    sb.append(",fps=");
                    sb.append(r1);
                }
            }
            return r1;
        }
        return -1;
    }

    @Override // com.efs.sdk.pa.PA
    public final long endCalTime(String str) {
        if (this.f11514h) {
            g gVar = this.f11513g;
            long j4 = 0;
            if (str != null && str.trim().length() != 0) {
                g.a aVar = gVar.f11526a.get(str);
                if (aVar == null) {
                    return 0L;
                }
                gVar.f11526a.remove(str);
                j4 = System.currentTimeMillis() - aVar.f11528a;
                if (gVar.f11527b) {
                    StringBuilder sb = new StringBuilder("key=");
                    sb.append(str);
                    sb.append(",consumeTime=");
                    sb.append(j4);
                }
            }
            return j4;
        }
        return -1L;
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAANRListener(Context context, PAANRListener pAANRListener) {
        registerPAANRListener(context, pAANRListener, 2000L);
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAMsgListener(PAMsgListener pAMsgListener) {
        if (this.f11509c == null) {
            this.f11509c = new e();
        }
        this.f11508b.setMessageLogging(this.f11509c);
        if (this.f11510d == null) {
            this.f11510d = new f();
        }
        f fVar = this.f11510d;
        fVar.f11523b = this.f11507a;
        fVar.f11522a = pAMsgListener;
        this.f11509c.f11516a.add(fVar);
    }

    @Override // com.efs.sdk.pa.PA
    public final void start() {
        if (this.f11515i) {
            this.f11514h = true;
            e eVar = this.f11509c;
            if (eVar != null) {
                this.f11508b.setMessageLogging(eVar);
            }
            a aVar = this.f11511e;
            if (aVar == null || !aVar.f11487f) {
                return;
            }
            aVar.f11487f = false;
            aVar.f11488g.post(aVar.f11494m);
            aVar.f11491j = SystemClock.uptimeMillis();
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void startCalFPS(String str, View view) {
        if (this.f11514h) {
            b bVar = this.f11512f;
            if (str == null || str.trim().length() == 0 || view == null || bVar.f11500a.get(str) != null) {
                return;
            }
            final b.a aVar = new b.a((byte) 0);
            aVar.f11505d = view;
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.efs.sdk.pa.a.b.a.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    aVar.f11503b++;
                    return true;
                }
            };
            aVar.f11504c = onPreDrawListener;
            aVar.f11505d.getViewTreeObserver().addOnPreDrawListener(onPreDrawListener);
            aVar.f11502a = System.currentTimeMillis();
            bVar.f11500a.put(str, aVar);
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void startCalTime(String str) {
        if (this.f11514h) {
            g gVar = this.f11513g;
            if (str == null || str.trim().length() == 0 || gVar.f11526a.get(str) != null) {
                return;
            }
            g.a aVar = new g.a((byte) 0);
            aVar.f11528a = System.currentTimeMillis();
            gVar.f11526a.put(str, aVar);
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void stop() {
        this.f11514h = false;
        this.f11508b.setMessageLogging(null);
        a aVar = this.f11511e;
        if (aVar != null) {
            aVar.f11487f = true;
            aVar.f11488g.removeCallbacksAndMessages(null);
            aVar.f11482a = true;
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void unRegisterPAMsgListener() {
        f fVar = this.f11510d;
        if (fVar != null) {
            fVar.f11522a = null;
        }
        e eVar = this.f11509c;
        if (eVar != null) {
            eVar.f11516a.remove(fVar);
        }
    }

    @Override // com.efs.sdk.pa.PA
    public final void unregisterPAANRListener() {
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAANRListener(Context context, PAANRListener pAANRListener, long j4) {
        registerPAANRListener(context, pAANRListener, j4, Looper.getMainLooper().getThread());
    }

    @Override // com.efs.sdk.pa.PA
    public final void registerPAANRListener(Context context, PAANRListener pAANRListener, long j4, Thread thread) {
        if (this.f11511e == null) {
            if (thread != null) {
                this.f11511e = new a((Application) context.getApplicationContext(), j4);
            } else {
                this.f11511e = new a((Application) context.getApplicationContext(), j4, false);
            }
        }
        this.f11511e.f11489h = pAANRListener;
    }
}
