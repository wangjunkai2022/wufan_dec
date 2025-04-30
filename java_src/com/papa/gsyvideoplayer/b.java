package com.papa.gsyvideoplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
/* compiled from: GSYVideoADManager.java */
/* loaded from: classes4.dex */
public class b extends c {
    @SuppressLint({"StaticFieldLeak"})
    private static b C;

    /* renamed from: z  reason: collision with root package name */
    public static final int f54884z = R.id.ad_small_id;
    public static final int A = R.id.ad_full_id;
    public static String B = "GSYVideoADManager";

    private b() {
        P();
    }

    public static boolean c0(Context context) {
        if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(16908290)).findViewById(A) != null) {
            com.papa.gsyvideoplayer.utils.b.k(context);
            if (d0().r() != null) {
                d0().r().onBackFullscreen();
                return true;
            }
            return true;
        }
        return false;
    }

    public static synchronized b d0() {
        b bVar;
        synchronized (b.class) {
            if (C == null) {
                C = new b();
            }
            bVar = C;
        }
        return bVar;
    }

    public static boolean e0(Activity activity) {
        View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(16908290)).findViewById(A);
        return (findViewById != null ? (GSYVideoPlayer) findViewById : null) != null;
    }

    public static void f0() {
        if (d0().y() != null) {
            d0().y().onVideoPause();
        }
    }

    public static void g0() {
        if (d0().y() != null) {
            d0().y().onVideoResume();
        }
    }

    public static void h0(boolean z3) {
        if (d.e0().y() != null) {
            d.e0().y().onVideoResume(z3);
        }
    }

    public static void i0() {
        if (d0().y() != null) {
            d0().y().onCompletion();
        }
        d0().z();
    }
}
