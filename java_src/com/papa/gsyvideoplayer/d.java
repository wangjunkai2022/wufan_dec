package com.papa.gsyvideoplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
/* compiled from: GSYVideoManager.java */
/* loaded from: classes4.dex */
public class d extends c {
    @SuppressLint({"StaticFieldLeak"})
    private static d C;

    /* renamed from: z  reason: collision with root package name */
    public static final int f54960z = R.id.small_id;
    public static final int A = R.id.full_id;
    public static String B = "GSYVideoManager";

    private d() {
        P();
    }

    public static boolean c0(Context context) {
        if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(16908290)).findViewById(A) != null) {
            com.papa.gsyvideoplayer.utils.b.k(context);
            if (e0().r() != null) {
                e0().r().onBackFullscreen();
                return true;
            }
            return true;
        }
        return false;
    }

    public static synchronized void d0(d dVar) {
        synchronized (d.class) {
            C = dVar;
        }
    }

    public static synchronized d e0() {
        d dVar;
        synchronized (d.class) {
            if (C == null) {
                C = new d();
            }
            dVar = C;
        }
        return dVar;
    }

    public static boolean f0(Activity activity) {
        View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(16908290)).findViewById(A);
        return (findViewById != null ? (GSYVideoPlayer) findViewById : null) != null;
    }

    public static void g0() {
        if (e0().y() != null) {
            e0().y().onVideoPause();
        }
    }

    public static void h0() {
        if (e0().y() != null) {
            e0().y().onVideoResume();
        }
    }

    public static void i0(boolean z3) {
        if (e0().y() != null) {
            e0().y().onVideoResume(z3);
        }
    }

    public static void j0() {
        if (e0().y() != null) {
            e0().y().onCompletion();
        }
        e0().z();
    }

    public static synchronized d k0(c2.a aVar) {
        d dVar;
        synchronized (d.class) {
            dVar = new d();
            d dVar2 = C;
            dVar.f54931o = dVar2.f54931o;
            dVar.f54923g = dVar2.f54923g;
            dVar.f54924h = dVar2.f54924h;
            dVar.f54927k = dVar2.f54927k;
            dVar.f54928l = dVar2.f54928l;
            dVar.f54917a = dVar2.f54917a;
            dVar.f54929m = dVar2.f54929m;
            dVar.f54930n = dVar2.f54930n;
            dVar.f54932p = dVar2.f54932p;
            dVar.f54933q = dVar2.f54933q;
            dVar.f54934r = dVar2.f54934r;
            dVar.p(aVar);
        }
        return dVar;
    }
}
