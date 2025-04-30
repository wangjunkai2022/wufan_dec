package com.join.android.app.component.video;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.d2;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* compiled from: CustomManager.java */
/* loaded from: classes2.dex */
public class a extends com.papa.gsyvideoplayer.c {
    public static final int A = 2131297053;
    public static String B = "GSYVideoManager";
    private static Map<String, a> C = new HashMap();

    /* renamed from: z  reason: collision with root package name */
    public static final int f17698z = 2131297054;

    public a() {
        P();
    }

    public static boolean c0(Context context, String str) {
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
            if (d2.h(str)) {
                return true;
            }
            if (e0(str).r() != null) {
                e0(str).r().onBackFullscreen();
            }
        }
        return z3;
    }

    public static void d0() {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                n0(entry.getKey());
            }
        }
        C.clear();
    }

    public static synchronized a e0(String str) {
        a aVar;
        synchronized (a.class) {
            if (!TextUtils.isEmpty(str)) {
                aVar = C.get(str);
                if (aVar == null) {
                    aVar = new a();
                    com.papa.gsyvideoplayer.model.c cVar = new com.papa.gsyvideoplayer.model.c(4, "enable-accurate-seek", 1);
                    com.papa.gsyvideoplayer.model.c cVar2 = new com.papa.gsyvideoplayer.model.c(1, "analyzeduration", 1);
                    com.papa.gsyvideoplayer.model.c cVar3 = new com.papa.gsyvideoplayer.model.c(1, "analyzemaxduration", 30);
                    new com.papa.gsyvideoplayer.model.c(2, "skip_loop_filter", 48);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(cVar);
                    arrayList.add(cVar2);
                    arrayList.add(cVar3);
                    aVar.X(arrayList);
                    C.put(str, aVar);
                }
            } else {
                throw new IllegalStateException("key not be empty");
            }
        }
        return aVar;
    }

    public static synchronized Map<String, a> f0() {
        Map<String, a> map;
        synchronized (a.class) {
            map = C;
        }
        return map;
    }

    public static boolean g0(Activity activity) {
        View findViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(16908290)).findViewById(R.id.custom_full_id);
        return (findViewById != null ? (GSYVideoPlayer) findViewById : null) != null;
    }

    public static void i0() {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                entry.getValue().h0(entry.getKey());
            }
        }
    }

    public static void l0() {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                entry.getValue().j0(entry.getKey());
            }
        }
    }

    public static void m0(boolean z3) {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                entry.getValue().k0(entry.getKey(), z3);
            }
        }
    }

    public static void n0(String str) {
        if (d2.h(str)) {
            return;
        }
        if (e0(str).y() != null) {
            e0(str).y().onCompletion();
        }
        e0(str).z();
    }

    public static void o0(String str) {
        C.remove(str);
    }

    @Override // com.papa.gsyvideoplayer.c
    protected com.papa.gsyvideoplayer.player.c M() {
        return new com.papa.gsyvideoplayer.player.d();
    }

    public void h0(String str) {
        if (d2.h(str) || e0(str).y() == null) {
            return;
        }
        e0(str).y().onVideoPause();
    }

    public void j0(String str) {
        if (d2.h(str) || e0(str).y() == null) {
            return;
        }
        e0(str).y().onVideoResume();
    }

    public void k0(String str, boolean z3) {
        if (d2.h(str) || e0(str).y() == null) {
            return;
        }
        e0(str).y().onVideoResume(z3);
    }
}
