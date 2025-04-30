package com.join.android.app.component.video;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
/* compiled from: ListVideoManager.java */
/* loaded from: classes2.dex */
public class b extends com.papa.gsyvideoplayer.c {
    public static final int A = 2131297053;
    public static String B = "GSYVideoManager";

    /* renamed from: z  reason: collision with root package name */
    public static final int f17699z = 2131297054;

    public b() {
        P();
    }

    public static synchronized b d0(String str, String str2, int i2) {
        b j4;
        synchronized (b.class) {
            if (!TextUtils.isEmpty(str)) {
                j4 = d.j(str, str2, i2, true);
            } else {
                throw new IllegalStateException("key not be empty");
            }
        }
        return j4;
    }

    public static boolean e0(Activity activity) {
        View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(16908290)).findViewById(R.id.custom_full_id);
        return (findViewById != null ? (GSYVideoPlayer) findViewById : null) != null;
    }

    @Override // com.papa.gsyvideoplayer.c
    protected com.papa.gsyvideoplayer.player.c M() {
        return new com.papa.gsyvideoplayer.player.d();
    }

    public boolean c0(Context context) {
        boolean z3 = false;
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (com.papa.gsyvideoplayer.utils.b.o(context) == null) {
            return false;
        }
        if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(16908290)).findViewById(R.id.custom_full_id) != null) {
            z3 = true;
            com.papa.gsyvideoplayer.utils.b.k(context);
            if (r() != null) {
                r().onBackFullscreen();
            }
        }
        return z3;
    }

    public void f0() {
        if (y() != null) {
            y().onVideoPause();
        }
    }

    public void g0() {
        if (y() != null) {
            y().onVideoResume();
        }
    }

    public void h0(boolean z3) {
        if (y() != null) {
            y().onVideoResume(z3);
        }
    }

    public void i0() {
        if (y() != null) {
            y().onCompletion();
        }
        z();
    }
}
