package com.join.android.app.component.video;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* compiled from: RvListVideoHelper.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: h  reason: collision with root package name */
    private static Map<String, b> f17746h = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    String f17747a;

    /* renamed from: b  reason: collision with root package name */
    RecyclerView.LayoutManager f17748b;

    /* renamed from: c  reason: collision with root package name */
    int f17749c;

    /* renamed from: d  reason: collision with root package name */
    int f17750d;

    /* renamed from: e  reason: collision with root package name */
    int f17751e;

    /* renamed from: f  reason: collision with root package name */
    RecyclerView f17752f;

    /* renamed from: g  reason: collision with root package name */
    int f17753g;

    public d(RecyclerView recyclerView, String str) {
        this.f17747a = "";
        this.f17747a = str;
        this.f17752f = recyclerView;
    }

    public static void c(String str) {
        if (f17746h.size() > 0) {
            ArrayList<String> arrayList = new ArrayList();
            for (Map.Entry<String, b> entry : f17746h.entrySet()) {
                if (entry.getValue().q().equals(str)) {
                    entry.getValue().i0();
                    arrayList.add(entry.getKey());
                }
            }
            if (arrayList.size() > 0) {
                for (String str2 : arrayList) {
                    s(str2);
                }
            }
        }
    }

    private static int d(int[] iArr) {
        int i2 = iArr[0];
        for (int i4 : iArr) {
            if (i4 > i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    private static int e(int[] iArr) {
        int i2 = iArr[0];
        for (int i4 : iArr) {
            if (i4 < i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    public static int f(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
            return e(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
    }

    public static int g(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
            return e(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
    }

    public static int h(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
            return d(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
    }

    public static int i(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
            return d(iArr);
        }
        return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
    }

    public static b j(String str, String str2, int i2, boolean z3) {
        b bVar = f17746h.get(str);
        if (bVar == null && z3) {
            b bVar2 = new b();
            bVar2.x(i2);
            bVar2.k(str2);
            com.papa.gsyvideoplayer.model.c cVar = new com.papa.gsyvideoplayer.model.c(4, "enable-accurate-seek", 1);
            com.papa.gsyvideoplayer.model.c cVar2 = new com.papa.gsyvideoplayer.model.c(1, "analyzeduration", 1);
            com.papa.gsyvideoplayer.model.c cVar3 = new com.papa.gsyvideoplayer.model.c(1, "analyzemaxduration", 30);
            new com.papa.gsyvideoplayer.model.c(2, "skip_loop_filter", 48);
            com.papa.gsyvideoplayer.model.c cVar4 = new com.papa.gsyvideoplayer.model.c(4, "packet-buffering", 0);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            arrayList.add(cVar2);
            arrayList.add(cVar3);
            arrayList.add(cVar4);
            bVar2.X(arrayList);
            f17746h.put(str, bVar2);
            return bVar2;
        }
        return bVar;
    }

    public static synchronized void n(String str) {
        synchronized (d.class) {
            if (f17746h.size() > 0) {
                for (Map.Entry<String, b> entry : f17746h.entrySet()) {
                    if (entry.getValue().q().equals(str)) {
                        entry.getValue().f0();
                    }
                }
            }
        }
    }

    public static void p(String str) {
        if (f17746h.size() > 0) {
            for (Map.Entry<String, b> entry : f17746h.entrySet()) {
                if (entry.getValue().q().equals(str)) {
                    entry.getValue().g0();
                }
            }
        }
    }

    public static void q(String str, boolean z3) {
        if (f17746h.size() > 0) {
            for (Map.Entry<String, b> entry : f17746h.entrySet()) {
                if (entry.getValue().q().equals(str)) {
                    entry.getValue().h0(z3);
                }
            }
        }
    }

    public static void s(String str) {
        f17746h.remove(str);
    }

    public synchronized void a(int i2) {
        View findViewById;
        try {
            this.f17753g = i2;
            if (this.f17748b == null) {
                this.f17748b = this.f17752f.getLayoutManager();
            }
            this.f17749c = f(this.f17752f);
            int h4 = h(this.f17752f);
            this.f17750d = h4;
            this.f17751e = this.f17749c + i2;
            if (h4 >= this.f17748b.getItemCount() - 1) {
                RecyclerView.LayoutManager layoutManager = this.f17748b;
                if (layoutManager instanceof GridLayoutManager) {
                    int spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
                    int itemCount = this.f17748b.getItemCount() / spanCount;
                    if (this.f17748b.getItemCount() % spanCount == 0) {
                        int itemCount2 = this.f17748b.getItemCount();
                        this.f17751e = itemCount2;
                        this.f17749c = itemCount2 - i2;
                    } else {
                        int i4 = itemCount * spanCount;
                        this.f17749c = i4;
                        this.f17751e = i4 + i2;
                    }
                } else {
                    int itemCount3 = layoutManager.getItemCount();
                    this.f17751e = itemCount3;
                    this.f17749c = itemCount3 - i2;
                }
            }
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            sb.append("autoPlayVideoMini: ");
            sb.append(this.f17749c);
            sb.append("last:");
            sb.append(this.f17751e);
            for (int i5 = this.f17749c; i5 < this.f17751e; i5++) {
                RecyclerView.LayoutManager layoutManager2 = this.f17748b;
                if (layoutManager2 != null && layoutManager2.findViewByPosition(i5) != null && (findViewById = this.f17748b.findViewByPosition(i5).findViewById(R.id.wf_video)) != null && (findViewById instanceof MultiStandVideo)) {
                    MultiStandVideo multiStandVideo = (MultiStandVideo) findViewById;
                    if (multiStandVideo.getCurrentState() == 2) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("autoPlayVideoMini: CURRENT_STATE_PLAYING:");
                        sb2.append(multiStandVideo.getKey());
                        sb2.append("      position:");
                        sb2.append(i5);
                    } else if (multiStandVideo.getCurrentState() == 5) {
                        multiStandVideo.onVideoResume(false);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("autoPlayVideoMini:CURRENT_STATE_PAUSE: ");
                        sb3.append(multiStandVideo.getKey());
                        sb3.append("      position:");
                        sb3.append(i5);
                    } else {
                        multiStandVideo.startPlayLogic();
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("autoPlayVideoMini:startPlayLogic: ");
                        sb4.append(multiStandVideo.getKey());
                        sb4.append("      position:");
                        sb4.append(i5);
                    }
                    arrayList.add(multiStandVideo.getKey());
                }
            }
            if (f17746h.size() > 0) {
                ArrayList<String> arrayList2 = new ArrayList();
                for (Map.Entry<String, b> entry : f17746h.entrySet()) {
                    b value = entry.getValue();
                    if (value.q().equals(this.f17747a) && !arrayList.contains(entry.getKey())) {
                        value.i0();
                        arrayList2.add(entry.getKey());
                    }
                }
                if (arrayList2.size() > 0) {
                    for (String str : arrayList2) {
                        s(str);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public synchronized void b(int i2) {
        View findViewById;
        View findViewById2;
        try {
            this.f17753g = i2;
            if (this.f17748b == null) {
                this.f17748b = this.f17752f.getLayoutManager();
            }
            this.f17749c = f(this.f17752f);
            this.f17750d = h(this.f17752f);
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            sb.append("autoPlayVideoMini: ");
            sb.append(this.f17749c);
            sb.append("last:");
            sb.append(this.f17751e);
            if (this.f17750d >= this.f17748b.getItemCount() - 1) {
                int i4 = 0;
                for (int i5 = this.f17750d; i5 >= this.f17749c && i4 < i2; i5--) {
                    RecyclerView.LayoutManager layoutManager = this.f17748b;
                    if (layoutManager != null && layoutManager.findViewByPosition(i5) != null && (findViewById2 = this.f17748b.findViewByPosition(i5).findViewById(R.id.wf_video)) != null && (findViewById2 instanceof MultiStandVideo)) {
                        MultiStandVideo multiStandVideo = (MultiStandVideo) findViewById2;
                        if (multiStandVideo.getCurrentState() == 2) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("autoPlayVideoMini1: CURRENT_STATE_PLAYING:");
                            sb2.append(multiStandVideo.getKey());
                            sb2.append("      position:");
                            sb2.append(i5);
                        } else if (multiStandVideo.getCurrentState() == 5) {
                            multiStandVideo.onVideoResume(false);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("autoPlayVideoMini1:CURRENT_STATE_PAUSE: ");
                            sb3.append(multiStandVideo.getKey());
                            sb3.append("      position:");
                            sb3.append(i5);
                        } else {
                            multiStandVideo.startPlayLogic();
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("autoPlayVideoMini1:startPlayLogic: ");
                            sb4.append(multiStandVideo.getKey());
                            sb4.append("      position:");
                            sb4.append(i5);
                        }
                        i4++;
                        arrayList.add(multiStandVideo.getKey());
                    }
                }
            } else {
                int i6 = 0;
                for (int i7 = this.f17749c; i7 <= this.f17750d && i6 < i2; i7++) {
                    RecyclerView.LayoutManager layoutManager2 = this.f17748b;
                    if (layoutManager2 != null && layoutManager2.findViewByPosition(i7) != null && (findViewById = this.f17748b.findViewByPosition(i7).findViewById(R.id.wf_video)) != null && (findViewById instanceof MultiStandVideo)) {
                        MultiStandVideo multiStandVideo2 = (MultiStandVideo) findViewById;
                        if (multiStandVideo2.getCurrentState() == 2) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("autoPlayVideoMini12: CURRENT_STATE_PLAYING:");
                            sb5.append(multiStandVideo2.getKey());
                            sb5.append("      position:");
                            sb5.append(i7);
                        } else if (multiStandVideo2.getCurrentState() == 5) {
                            multiStandVideo2.onVideoResume(false);
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("autoPlayVideoMini12:CURRENT_STATE_PAUSE: ");
                            sb6.append(multiStandVideo2.getKey());
                            sb6.append("      position:");
                            sb6.append(i7);
                        } else {
                            multiStandVideo2.startPlayLogic();
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("autoPlayVideoMini12:startPlayLogic: ");
                            sb7.append(multiStandVideo2.getKey());
                            sb7.append("      position:");
                            sb7.append(i7);
                        }
                        i6++;
                        arrayList.add(multiStandVideo2.getKey());
                    }
                }
            }
            if (f17746h.size() > 0) {
                ArrayList<String> arrayList2 = new ArrayList();
                for (Map.Entry<String, b> entry : f17746h.entrySet()) {
                    b value = entry.getValue();
                    if (value.q().equals(this.f17747a) && !arrayList.contains(entry.getKey())) {
                        value.i0();
                        arrayList2.add(entry.getKey());
                    }
                }
                if (arrayList2.size() > 0) {
                    for (String str : arrayList2) {
                        s(str);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public String k() {
        return this.f17747a;
    }

    public void l() {
        c(this.f17747a);
    }

    public void m() {
        n(this.f17747a);
    }

    public void o() {
        a(this.f17753g);
    }

    public void r() {
        b(this.f17753g);
    }
}
