package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.ExtFrom;
import com.papa.sim.statistic.p;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
import it.sephiroth.android.library.widget.AbsHListView;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MyListViewVideoHelper.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: v  reason: collision with root package name */
    public static final int f17705v = 1;

    /* renamed from: w  reason: collision with root package name */
    public static final int f17706w = 2;

    /* renamed from: a  reason: collision with root package name */
    private Context f17707a;

    /* renamed from: d  reason: collision with root package name */
    StandardVideoView f17710d;

    /* renamed from: k  reason: collision with root package name */
    public AbsListView f17717k;

    /* renamed from: l  reason: collision with root package name */
    public AbsHListView f17718l;

    /* renamed from: m  reason: collision with root package name */
    public RecyclerView f17719m;

    /* renamed from: n  reason: collision with root package name */
    public com.join.mgps.recycler.c f17720n;

    /* renamed from: t  reason: collision with root package name */
    AlphaAnimation f17726t;

    /* renamed from: b  reason: collision with root package name */
    private int f17708b = -1;

    /* renamed from: c  reason: collision with root package name */
    String f17709c = "";

    /* renamed from: e  reason: collision with root package name */
    boolean f17711e = false;

    /* renamed from: f  reason: collision with root package name */
    Map<Integer, k> f17712f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    int f17713g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f17714h = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f17715i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f17716j = 0;

    /* renamed from: o  reason: collision with root package name */
    int f17721o = 0;

    /* renamed from: p  reason: collision with root package name */
    long f17722p = 0;

    /* renamed from: q  reason: collision with root package name */
    SimpleDraweeView f17723q = null;

    /* renamed from: r  reason: collision with root package name */
    SimpleDraweeView f17724r = null;

    /* renamed from: s  reason: collision with root package name */
    FrameLayout f17725s = null;

    /* renamed from: u  reason: collision with root package name */
    private int f17727u = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class a implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f17728a;

        a(View view) {
            this.f17728a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                int intValue = ((Integer) this.f17728a.getTag()).intValue();
                StringBuilder sb = new StringBuilder();
                sb.append("onAnimationEnd ");
                sb.append(intValue == c.this.t());
                sb.append(" tag= ");
                sb.append(intValue);
                sb.append(" getPlayPosition()=");
                sb.append(c.this.t());
                sb.append(" ");
                sb.append(c.this.f17710d.getCurrentState());
                t0.d("MyListViewVideoHelper", sb.toString());
                if (intValue == c.this.t()) {
                    if (c.this.f17710d.getCurrentState() == 2) {
                        this.f17728a.setVisibility(4);
                        c.this.f17723q.setVisibility(4);
                    } else {
                        this.f17728a.setVisibility(0);
                    }
                } else {
                    this.f17728a.setVisibility(0);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class b implements StandardVideoView.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f17730a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17731b;

        b(Context context, String str) {
            this.f17730a = context;
            this.f17731b = str;
        }

        @Override // com.join.android.app.component.video.StandardVideoView.j
        public void a(StandardVideoView standardVideoView) {
            try {
                c cVar = c.this;
                IntentDateBean intentDateBean = cVar.f17712f.get(Integer.valueOf(cVar.t())).f17744d;
                if (intentDateBean == null) {
                    return;
                }
                if (standardVideoView.isInPlayingState()) {
                    com.join.android.app.component.video.f.f(standardVideoView);
                    c.this.f17711e = true;
                    standardVideoView.getGSYVideoManager().i(standardVideoView);
                    GamedetailVideoMainActivity.startTActivity((BaseAppCompatActivity) this.f17730a, standardVideoView, intentDateBean.getCrc_link_type_val(), false, intentDateBean.getExtBean());
                } else {
                    IntentUtil.getInstance().intentActivity(this.f17730a, intentDateBean);
                }
                ExtBean extBean = intentDateBean.getExtBean();
                if (extBean != null && d2.i(extBean.getRecPosition()) && d2.i(extBean.getVolcanoOther()) && extBean.getRecPosition().startsWith("home")) {
                    c.this.E(standardVideoView.getContext(), Event.click, extBean.getRecPosition(), intentDateBean.getCrc_link_type_val(), (StatFactory.VolcanoOther) JsonMapper.getInstance().fromJson(extBean.getVolcanoOther(), StatFactory.VolcanoOther.class), extBean.isOnlineGame());
                }
                if ((this.f17730a instanceof MGMainActivity) && TextUtils.equals("PapaMainAdapter", this.f17731b)) {
                    c cVar2 = c.this;
                    ((MGMainActivity) this.f17730a).setPapaMainFragmentLastPosition(cVar2.f17712f.get(Integer.valueOf(cVar2.t())).c());
                    c cVar3 = c.this;
                    cVar3.D(cVar3.f17712f.get(Integer.valueOf(cVar3.t())).c());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* renamed from: com.join.android.app.component.video.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0140c implements StandardVideoView.i {
        C0140c() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
            if (i2 == 0) {
                if (c.this.f17710d.getCurrentState() != 2) {
                    t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
                    c.this.f17723q.setVisibility(0);
                }
                try {
                    Animation animation = c.this.f17723q.getAnimation();
                    if (animation != null) {
                        animation.setAnimationListener(null);
                    }
                    c.this.f17723q.clearAnimation();
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            c cVar = c.this;
            cVar.H(cVar.f17723q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class d implements StandardVideoView.i {
        d() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            if (i2 == 0) {
                t0.d("MyListViewVideoHelper", "099999 ");
                MyImageLoader.m(c.this.f17724r, Uri.parse("res:///2131234008"));
                c.this.f17724r.setVisibility(0);
                return;
            }
            c.this.f17724r.setVisibility(4);
            t0.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class e implements StandardVideoView.i {
        e() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
            if (i2 == 0) {
                if (c.this.f17710d.getCurrentState() != 2) {
                    t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
                    c.this.f17723q.setVisibility(0);
                }
                try {
                    Animation animation = c.this.f17723q.getAnimation();
                    if (animation != null) {
                        animation.setAnimationListener(null);
                    }
                    c.this.f17723q.clearAnimation();
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            c cVar = c.this;
            cVar.H(cVar.f17723q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class f implements StandardVideoView.i {
        f() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            if (i2 == 0) {
                t0.d("MyListViewVideoHelper", "099999 ");
                MyImageLoader.m(c.this.f17724r, Uri.parse("res:///2131234008"));
                c.this.f17724r.setVisibility(0);
                return;
            }
            c.this.f17724r.setVisibility(4);
            t0.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class g implements StandardVideoView.i {
        g() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
            if (i2 == 0) {
                if (c.this.f17710d.getCurrentState() != 2) {
                    t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
                    c.this.f17723q.setVisibility(0);
                }
                try {
                    Animation animation = c.this.f17723q.getAnimation();
                    if (animation != null) {
                        animation.setAnimationListener(null);
                    }
                    c.this.f17723q.clearAnimation();
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            c cVar = c.this;
            cVar.H(cVar.f17723q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class h implements StandardVideoView.i {
        h() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            if (i2 == 0) {
                t0.d("MyListViewVideoHelper", "099999 ");
                MyImageLoader.m(c.this.f17724r, Uri.parse("res:///2131234008"));
                c.this.f17724r.setVisibility(0);
                return;
            }
            c.this.f17724r.setVisibility(4);
            t0.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class i implements StandardVideoView.i {
        i() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
            if (i2 == 0) {
                if (c.this.f17710d.getCurrentState() != 2) {
                    t0.d("MyListViewVideoHelper", "onCoverShowChange " + i2 + "  " + c.this.f17710d.getCurrentState());
                    c.this.f17723q.setVisibility(0);
                }
                try {
                    Animation animation = c.this.f17723q.getAnimation();
                    if (animation != null) {
                        animation.setAnimationListener(null);
                    }
                    c.this.f17723q.clearAnimation();
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            c cVar = c.this;
            cVar.H(cVar.f17723q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public class j implements StandardVideoView.i {
        j() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int i2) {
            if (i2 == 0) {
                t0.d("MyListViewVideoHelper", "099999 ");
                MyImageLoader.m(c.this.f17724r, Uri.parse("res:///2131234008"));
                c.this.f17724r.setVisibility(0);
                return;
            }
            c.this.f17724r.setVisibility(4);
            t0.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
        }
    }

    public c(Context context) {
        this.f17707a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(String str) {
        p.l(this.f17707a).s(ExtFrom.home.name(), str, AccountUtil_.getInstance_(this.f17707a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(Context context, Event event, String str, String str2, StatFactory.VolcanoOther volcanoOther, boolean z3) {
        String str3;
        String str4;
        String str5;
        String[] split = str.split("-");
        str3 = "0";
        if (split.length <= 0 || split.length <= 0) {
            str4 = "";
            str5 = str4;
        } else {
            String str6 = split[0];
            String str7 = split.length > 1 ? split[1] : "";
            str3 = split.length > 2 ? split[2] : "0";
            str4 = str6;
            str5 = str7;
        }
        String str8 = str3;
        t0.d("volcannoEvent", str5 + "  " + str8);
        StatFactory.Companion.getInstance(context).sendEvent(new StatFactory.VolcanoEvent(event, str2, new StatFactory.SpmData("wufun", str4, str5, str8, false), volcanoOther, z3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(View view) {
        try {
            t0.d("MyListViewVideoHelper", "startAnim ");
            if (this.f17726t == null) {
                this.f17726t = new AlphaAnimation(1.0f, 0.1f);
            }
            this.f17726t.setDuration(600L);
            this.f17726t.setInterpolator(new AccelerateInterpolator());
            this.f17726t.setAnimationListener(new a(view));
            view.startAnimation(this.f17726t);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void A() {
        try {
            if (this.f17711e) {
                return;
            }
            F(2);
            this.f17710d.onVideoPause();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void B() {
        try {
            t0.d("MyListViewVideoHelper", "onResume ");
            if (this.f17711e) {
                Bitmap b4 = com.join.android.app.component.video.e.b();
                this.f17710d.setThumbVisibleM();
                this.f17710d.g(b4);
            } else {
                F(1);
                AbsListView absListView = this.f17717k;
                if (absListView != null) {
                    m(absListView);
                } else {
                    RecyclerView recyclerView = this.f17719m;
                    if (recyclerView != null) {
                        n(recyclerView);
                    } else {
                        AbsHListView absHListView = this.f17718l;
                        if (absHListView != null) {
                            o(absHListView);
                        } else {
                            this.f17710d.onVideoResume();
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void C(boolean z3) {
        try {
            t0.d("MyListViewVideoHelper", "onResumeDelayForMain " + this.f17710d.getCurrentState());
            if (this.f17711e) {
                com.join.android.app.component.video.e.c(this.f17710d, "", true, "");
                com.join.android.app.component.video.e.a(this.f17710d);
                t0.d("MyListViewVideoHelper", "onResumeDelayForMain2 " + this.f17710d.getCurrentState());
                this.f17710d.setSurfaceToPlay();
                if (z3) {
                    this.f17710d.onVideoResume();
                } else {
                    this.f17710d.onVideoPause();
                }
                com.join.android.app.component.video.e.d();
                this.f17711e = false;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void F(int i2) {
        this.f17727u = i2;
    }

    public void G(int i2) {
        this.f17708b = i2;
    }

    public void I() {
    }

    public void J(RecyclerView recyclerView) {
        if (this.f17725s != null) {
            this.f17710d.releaseVideos();
            this.f17725s.removeAllViews();
            this.f17708b = -1;
            j(recyclerView, 0);
        }
    }

    public void K(int i2, FrameLayout frameLayout) {
        if (this.f17710d.getCurrentState() == 2 && i2 == t()) {
            ViewGroup viewGroup = (ViewGroup) this.f17710d.getParent();
            if (viewGroup != null) {
                if (viewGroup == frameLayout) {
                    return;
                }
                viewGroup.removeAllViews();
            }
            this.f17725s = frameLayout;
            this.f17723q.setVisibility(4);
            this.f17725s.removeAllViews();
            this.f17725s.addView(this.f17710d);
        }
    }

    public void L(int i2, SimpleDraweeView simpleDraweeView) {
        if (this.f17710d.getCurrentState() == 2 && i2 == t()) {
            this.f17723q = simpleDraweeView;
            simpleDraweeView.setVisibility(0);
            H(this.f17723q);
        }
    }

    public void d(int i2, k kVar, boolean... zArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("addVideoData: ");
        sb.append(i2);
        sb.append("  ");
        sb.append(kVar.c());
        sb.append("   ");
        sb.append(kVar.d());
        if (zArr.length > 0) {
            this.f17710d.setShowCoverWhenPause(zArr[0]);
        }
        this.f17712f.put(Integer.valueOf(i2), kVar);
    }

    public void e(AbsListView absListView, int i2, int i4, int i5) {
        this.f17714h = i2;
        this.f17715i = i4;
        this.f17716j = i5;
        if (i4 == 0 || i2 != 0) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.f17722p > 3000) {
                    this.f17722p = currentTimeMillis;
                    this.f17721o = this.f17714h;
                    StandardVideoView standardVideoView = this.f17710d;
                    if (standardVideoView != null && standardVideoView.getCurrentState() != 2 && this.f17710d.getCurrentState() != 6 && !this.f17710d.isIfCurrentIsFullscreen()) {
                        m(absListView);
                    }
                }
                int t3 = t();
                if (t3 != -22 && t3 <= i5 && this.f17713g != t3) {
                    if (t3 < i2 || t3 > this.f17715i + i2) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("autoPlayScroll  -->onPauseAll ");
                        sb.append(this.f17714h);
                        sb.append("  ");
                        sb.append(this.f17715i);
                        sb.append("  ");
                        sb.append(t3);
                        this.f17713g = t3;
                        StandardVideoView standardVideoView2 = this.f17710d;
                        if (standardVideoView2 == null || standardVideoView2.isIfCurrentIsFullscreen()) {
                            return;
                        }
                        this.f17710d.onVideoPause();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void f(RecyclerView recyclerView, int i2, int i4, int i5) {
        int i6;
        try {
            if (this.f17714h == i2 && (i6 = this.f17715i) != 0 && i2 == 0 && i6 == i4) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.f17722p > 3000) {
                this.f17722p = currentTimeMillis;
                this.f17721o = this.f17714h;
                StandardVideoView standardVideoView = this.f17710d;
                if (standardVideoView != null && standardVideoView.getCurrentState() != 2 && this.f17710d.getCurrentState() != 6 && !this.f17710d.isIfCurrentIsFullscreen()) {
                    n(recyclerView);
                }
            }
            this.f17714h = i2;
            this.f17715i = i4;
            this.f17716j = i5;
            int t3 = t();
            if (t3 != -22 && t3 <= i5 && this.f17713g != t3) {
                if (t3 < i2 || t3 > this.f17715i + i2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("autoPlayScroll  -->onPauseAll ");
                    sb.append(this.f17714h);
                    sb.append("  ");
                    sb.append(this.f17715i);
                    sb.append("  ");
                    sb.append(t3);
                    this.f17713g = t3;
                    StandardVideoView standardVideoView2 = this.f17710d;
                    if (standardVideoView2 == null || standardVideoView2.isIfCurrentIsFullscreen()) {
                        return;
                    }
                    this.f17710d.onVideoPause();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void g(AbsHListView absHListView, int i2, int i4, int i5) {
        this.f17714h = i2;
        this.f17715i = i4;
        this.f17716j = i5;
        if (i4 != 0 && i2 == 0) {
            try {
                StandardVideoView standardVideoView = this.f17710d;
                if (standardVideoView != null && standardVideoView.getCurrentState() != 2) {
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f17722p > 3000) {
            this.f17722p = currentTimeMillis;
            this.f17721o = this.f17714h;
            StandardVideoView standardVideoView2 = this.f17710d;
            if (standardVideoView2 != null && standardVideoView2.getCurrentState() != 2 && this.f17710d.getCurrentState() != 6 && !this.f17710d.isIfCurrentIsFullscreen()) {
                o(absHListView);
            }
        }
        int t3 = t();
        if (t3 != -22 && t3 <= i5 && this.f17713g != t3) {
            if (t3 < i2 || t3 > this.f17715i + i2) {
                StringBuilder sb = new StringBuilder();
                sb.append("autoPlayScroll  -->onPauseAll ");
                sb.append(this.f17714h);
                sb.append("  ");
                sb.append(this.f17715i);
                sb.append("  ");
                sb.append(t3);
                this.f17713g = t3;
                StandardVideoView standardVideoView3 = this.f17710d;
                if (standardVideoView3 == null || standardVideoView3.isIfCurrentIsFullscreen()) {
                    return;
                }
                this.f17710d.onVideoPause();
            }
        }
    }

    public void h(RecyclerView recyclerView, int i2, int i4, int i5) {
        this.f17714h = i2;
        this.f17715i = i4;
        this.f17716j = i5;
        if (i4 == 0 || i2 != 0) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.f17722p > 3000) {
                    this.f17722p = currentTimeMillis;
                    this.f17721o = this.f17714h;
                    StandardVideoView standardVideoView = this.f17710d;
                    if (standardVideoView != null && standardVideoView.getCurrentState() != 2 && this.f17710d.getCurrentState() != 6 && !this.f17710d.isIfCurrentIsFullscreen()) {
                        n(recyclerView);
                    }
                }
                int t3 = t();
                if (t3 != -22 && t3 <= i5 && this.f17713g != t3) {
                    if (t3 < i2 || t3 > this.f17715i + i2) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("autoPlayScroll  -->onPauseAll ");
                        sb.append(this.f17714h);
                        sb.append("  ");
                        sb.append(this.f17715i);
                        sb.append("  ");
                        sb.append(t3);
                        this.f17713g = t3;
                        StandardVideoView standardVideoView2 = this.f17710d;
                        if (standardVideoView2 == null || standardVideoView2.isIfCurrentIsFullscreen()) {
                            return;
                        }
                        this.f17710d.onVideoPause();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void i(AbsListView absListView, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayScrollStateChanged= ");
        sb.append(i2);
        if (this.f17727u != 2 && Build.VERSION.SDK_INT >= 21 && i2 == 0) {
            this.f17713g = -1;
            m(absListView);
        }
    }

    public void j(RecyclerView recyclerView, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayScrollStateChanged= ");
        sb.append(i2);
        if (this.f17727u != 2 && Build.VERSION.SDK_INT >= 21 && i2 == 0) {
            this.f17713g = -1;
            n(recyclerView);
        }
    }

    public void k(AbsHListView absHListView, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayScrollStateChanged= ");
        sb.append(i2);
        if (this.f17727u != 2 && Build.VERSION.SDK_INT >= 21 && i2 == 0) {
            this.f17713g = -1;
            o(absHListView);
        }
    }

    public void l(RecyclerView recyclerView, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("autoPlayScrollStateChanged= ");
        sb.append(i2);
        if (this.f17727u != 2 && Build.VERSION.SDK_INT >= 21 && i2 == 0) {
            this.f17713g = -1;
            p(recyclerView);
        }
    }

    public synchronized void m(AbsListView absListView) {
        this.f17717k = absListView;
        SimpleDraweeView simpleDraweeView = null;
        SimpleDraweeView simpleDraweeView2 = null;
        boolean z3 = false;
        for (int i2 = 0; i2 < this.f17715i; i2++) {
            try {
                if (absListView != null && absListView.getChildAt(i2) != null && absListView.getChildAt(i2).findViewById(R.id.videoContner) != null) {
                    this.f17725s = (FrameLayout) absListView.getChildAt(i2).findViewById(R.id.videoContner);
                    if (absListView.getChildAt(i2) != null && absListView.getChildAt(i2).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) absListView.getChildAt(i2).findViewById(R.id.bannerView);
                    }
                    if (absListView.getChildAt(i2) != null && absListView.getChildAt(i2).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) absListView.getChildAt(i2).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f17725s.getLocalVisibleRect(rect);
                    int height = this.f17725s.getHeight();
                    if (simpleDraweeView != null && simpleDraweeView.getTag() != null) {
                        if (rect.top == 0 && rect.bottom == height && !z3) {
                            t0.d("MyListViewVideoHelper", "2222222 ");
                            if (((Integer) simpleDraweeView.getTag()).intValue() == t() && this.f17710d.getCurrentState() != 6) {
                                t0.d("MyListViewVideoHelper", "333333 ");
                                if (this.f17710d.getCurrentState() == 5) {
                                    this.f17725s.removeAllViews();
                                    this.f17725s.addView(this.f17710d);
                                    this.f17710d.onVideoResume(false);
                                    t0.d("MyListViewVideoHelper", "444444 ");
                                } else if (this.f17725s.getChildAt(0) == null) {
                                    this.f17725s.removeAllViews();
                                    t0.d("MyListViewVideoHelper", "55555555 ");
                                    this.f17725s.addView(this.f17710d);
                                }
                            } else {
                                t0.d("MyListViewVideoHelper", "66666666 ");
                                k kVar = this.f17712f.get(simpleDraweeView.getTag());
                                ViewGroup viewGroup = (ViewGroup) this.f17710d.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeAllViews();
                                    SimpleDraweeView simpleDraweeView3 = this.f17723q;
                                    if (simpleDraweeView3 != null) {
                                        simpleDraweeView3.setVisibility(0);
                                    }
                                    t0.d("MyListViewVideoHelper", "7777777 ");
                                }
                                this.f17710d.setPlayTag(this.f17709c);
                                this.f17710d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                                this.f17710d.setSwitchUrl(kVar.d());
                                this.f17710d.setUp(kVar.d(), StandardVideoView.C, "", kVar.a());
                                this.f17725s.addView(this.f17710d);
                                G(((Integer) simpleDraweeView.getTag()).intValue());
                                SimpleDraweeView simpleDraweeView4 = this.f17723q;
                                if (simpleDraweeView4 != null) {
                                    Animation animation = simpleDraweeView4.getAnimation();
                                    if (animation != null) {
                                        animation.setAnimationListener(null);
                                    }
                                    t0.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f17723q.getTag());
                                    this.f17723q.clearAnimation();
                                }
                                this.f17723q = simpleDraweeView;
                                t0.d("MyListViewVideoHelper", "lastBannerViewNew tag =" + this.f17723q.getTag());
                                this.f17724r = simpleDraweeView2;
                                this.f17710d.setChangeCoverShowListener(new C0140c());
                                this.f17710d.setChangeCoverShowLoadingListener(new d());
                                if (this.f17710d.d()) {
                                    t0.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                    this.f17710d.startPlayLogic();
                                }
                                t0.d("MyListViewVideoHelper", "startplaylogic ");
                            }
                            z3 = true;
                        } else {
                            t0.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f17710d.getCurrentState() + "  " + simpleDraweeView.getTag());
                            if (((Integer) simpleDraweeView.getTag()).intValue() == t() && (this.f17710d.getCurrentState() == 2 || this.f17710d.getCurrentState() == 1)) {
                                this.f17710d.onVideoPause();
                                t0.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                            }
                            this.f17725s.removeAllViews();
                            simpleDraweeView.setVisibility(0);
                            t0.d("MyListViewVideoHelper", "out to play Are ");
                        }
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public synchronized void n(RecyclerView recyclerView) {
        this.f17719m = recyclerView;
        try {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            this.f17715i = linearLayoutManager.findLastVisibleItemPosition() - linearLayoutManager.findFirstVisibleItemPosition();
            SimpleDraweeView simpleDraweeView = null;
            SimpleDraweeView simpleDraweeView2 = null;
            boolean z3 = false;
            for (int i2 = 0; i2 < this.f17715i; i2++) {
                if (linearLayoutManager.getChildAt(i2) != null && linearLayoutManager.getChildAt(i2).findViewById(R.id.videoContner) != null) {
                    this.f17725s = (FrameLayout) linearLayoutManager.getChildAt(i2).findViewById(R.id.videoContner);
                    if (linearLayoutManager.getChildAt(i2) != null && linearLayoutManager.getChildAt(i2).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) linearLayoutManager.getChildAt(i2).findViewById(R.id.bannerView);
                    }
                    if (linearLayoutManager.getChildAt(i2) != null && linearLayoutManager.getChildAt(i2).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) linearLayoutManager.getChildAt(i2).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f17725s.getLocalVisibleRect(rect);
                    int height = this.f17725s.getHeight();
                    if (rect.top == 0 && rect.bottom == height && !z3) {
                        t0.d("MyListViewVideoHelper", "2222222 ");
                        if (((Integer) simpleDraweeView.getTag()).intValue() == t() && this.f17710d.getCurrentState() != 6) {
                            t0.d("MyListViewVideoHelper", "333333 ");
                            if (this.f17710d.getCurrentState() == 5) {
                                this.f17725s.removeAllViews();
                                this.f17725s.addView(this.f17710d);
                                this.f17710d.onVideoResume(false);
                                t0.d("MyListViewVideoHelper", "444444 ");
                            } else if (this.f17725s.getChildAt(0) == null) {
                                this.f17725s.removeAllViews();
                                t0.d("MyListViewVideoHelper", "55555555 ");
                                this.f17725s.addView(this.f17710d);
                            }
                        } else {
                            t0.d("MyListViewVideoHelper", "66666666 ");
                            k kVar = this.f17712f.get(simpleDraweeView.getTag());
                            if (kVar != null && kVar.d() != null) {
                                ViewGroup viewGroup = (ViewGroup) this.f17710d.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeAllViews();
                                    SimpleDraweeView simpleDraweeView3 = this.f17723q;
                                    if (simpleDraweeView3 != null) {
                                        simpleDraweeView3.setVisibility(0);
                                    }
                                    t0.d("MyListViewVideoHelper", "7777777 ");
                                }
                                this.f17710d.setPlayTag(this.f17709c);
                                this.f17710d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                                this.f17710d.setSwitchUrl(kVar.d());
                                this.f17710d.setUp(kVar.d(), StandardVideoView.C, "", kVar.a());
                                this.f17725s.addView(this.f17710d);
                                G(((Integer) simpleDraweeView.getTag()).intValue());
                                SimpleDraweeView simpleDraweeView4 = this.f17723q;
                                if (simpleDraweeView4 != null) {
                                    Animation animation = simpleDraweeView4.getAnimation();
                                    if (animation != null) {
                                        animation.setAnimationListener(null);
                                    }
                                    t0.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f17723q.getTag());
                                    this.f17723q.clearAnimation();
                                }
                                this.f17723q = simpleDraweeView;
                                t0.d("MyListViewVideoHelper", "lastBannerViewNew tag =" + this.f17723q.getTag());
                                this.f17724r = simpleDraweeView2;
                                this.f17710d.setChangeCoverShowListener(new g());
                                this.f17710d.setChangeCoverShowLoadingListener(new h());
                                if (this.f17710d.d()) {
                                    t0.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                    this.f17710d.startPlayLogic();
                                }
                                t0.d("MyListViewVideoHelper", "startplaylogic ");
                            }
                        }
                        z3 = true;
                    } else {
                        t0.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f17710d.getCurrentState() + "  " + simpleDraweeView.getTag());
                        if (((Integer) simpleDraweeView.getTag()).intValue() == t() && (this.f17710d.getCurrentState() == 2 || this.f17710d.getCurrentState() == 1)) {
                            this.f17710d.onVideoPause();
                            t0.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                        }
                        this.f17725s.removeAllViews();
                        simpleDraweeView.setVisibility(0);
                        t0.d("MyListViewVideoHelper", "out to play Are ");
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public synchronized void o(AbsHListView absHListView) {
        this.f17718l = absHListView;
        try {
            SimpleDraweeView simpleDraweeView = null;
            SimpleDraweeView simpleDraweeView2 = null;
            boolean z3 = false;
            for (int i2 = this.f17714h; i2 < this.f17715i; i2++) {
                if (absHListView != null && absHListView.getChildAt(i2) != null && absHListView.getChildAt(i2).findViewById(R.id.videoContner) != null) {
                    this.f17725s = (FrameLayout) absHListView.getChildAt(i2).findViewById(R.id.videoContner);
                    if (absHListView.getChildAt(i2) != null && absHListView.getChildAt(i2).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) absHListView.getChildAt(i2).findViewById(R.id.bannerView);
                    }
                    if (absHListView.getChildAt(i2) != null && absHListView.getChildAt(i2).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) absHListView.getChildAt(i2).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f17725s.getLocalVisibleRect(rect);
                    int width = this.f17725s.getWidth();
                    this.f17723q = simpleDraweeView;
                    t0.d("MyListViewVideoHelper", "lastBannerViewNew tag =" + this.f17723q.getTag());
                    this.f17724r = simpleDraweeView2;
                    StandardVideoView standardVideoView = this.f17710d;
                    if (standardVideoView != null) {
                        standardVideoView.setChangeCoverShowListener(new e());
                        this.f17710d.setChangeCoverShowLoadingListener(new f());
                    }
                    t0.d("MyListViewVideoHelper", "1111111111111    " + simpleDraweeView.getTag() + "rect.left:" + rect.left + "rect.right:" + rect.right + "videoHeight:" + width);
                    if (rect.left == 0 && rect.right == width && !z3) {
                        t0.d("MyListViewVideoHelper", "2222222 ");
                        if (simpleDraweeView.getTag() != null && ((Integer) simpleDraweeView.getTag()).intValue() == t() && this.f17710d.getCurrentState() != 6) {
                            t0.d("MyListViewVideoHelper", "333333 ");
                            if (this.f17710d.getCurrentState() == 5) {
                                ViewParent parent = this.f17710d.getParent();
                                if (parent != null && (parent instanceof ViewGroup)) {
                                    ((ViewGroup) this.f17710d.getParent()).removeView(this.f17710d);
                                }
                                this.f17725s.removeAllViews();
                                this.f17725s.addView(this.f17710d);
                                this.f17710d.onVideoResume(false);
                                t0.d("MyListViewVideoHelper", "444444 ");
                            } else if (this.f17725s.getChildAt(0) == null) {
                                this.f17725s.removeAllViews();
                                t0.d("MyListViewVideoHelper", "55555555 ");
                                ViewGroup viewGroup = (ViewGroup) this.f17710d.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeView(this.f17710d);
                                }
                                this.f17725s.addView(this.f17710d);
                            }
                        } else {
                            t0.d("MyListViewVideoHelper", "66666666 ");
                            k kVar = this.f17712f.get(simpleDraweeView.getTag());
                            if (kVar == null) {
                                return;
                            }
                            ViewGroup viewGroup2 = (ViewGroup) this.f17710d.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeAllViews();
                                SimpleDraweeView simpleDraweeView3 = this.f17723q;
                                if (simpleDraweeView3 != null) {
                                    simpleDraweeView3.setVisibility(0);
                                }
                                t0.d("MyListViewVideoHelper", "7777777 ");
                            }
                            this.f17710d.setPlayTag(this.f17709c);
                            this.f17710d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                            this.f17710d.setSwitchUrl(kVar.d());
                            this.f17710d.setUp(kVar.d(), StandardVideoView.C, "", kVar.a());
                            ViewParent parent2 = this.f17710d.getParent();
                            if (parent2 != null && (parent2 instanceof ViewGroup)) {
                                ((ViewGroup) this.f17710d.getParent()).removeView(this.f17710d);
                            }
                            this.f17725s.addView(this.f17710d);
                            G(((Integer) simpleDraweeView.getTag()).intValue());
                            SimpleDraweeView simpleDraweeView4 = this.f17723q;
                            if (simpleDraweeView4 != null) {
                                Animation animation = simpleDraweeView4.getAnimation();
                                if (animation != null) {
                                    animation.setAnimationListener(null);
                                }
                                t0.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f17723q.getTag());
                                this.f17723q.clearAnimation();
                            }
                            if (this.f17710d.d()) {
                                t0.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                this.f17710d.startPlayLogic();
                            }
                            t0.d("MyListViewVideoHelper", "startplaylogic ");
                        }
                        z3 = true;
                    } else {
                        t0.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f17710d.getCurrentState() + "  " + simpleDraweeView.getTag());
                        if (simpleDraweeView.getTag() != null && ((Integer) simpleDraweeView.getTag()).intValue() == t() && (this.f17710d.getCurrentState() == 2 || this.f17710d.getCurrentState() == 1)) {
                            this.f17710d.onVideoPause();
                            t0.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                        }
                        this.f17725s.removeAllViews();
                        simpleDraweeView.setVisibility(0);
                        t0.d("MyListViewVideoHelper", "out to play Are ");
                        z3 = false;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public synchronized void p(RecyclerView recyclerView) {
        this.f17719m = recyclerView;
        try {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            this.f17715i = linearLayoutManager.findLastVisibleItemPosition() - linearLayoutManager.findFirstVisibleItemPosition();
            SimpleDraweeView simpleDraweeView = null;
            SimpleDraweeView simpleDraweeView2 = null;
            boolean z3 = false;
            for (int i2 = this.f17714h; i2 < this.f17715i; i2++) {
                if (linearLayoutManager.getChildAt(i2) != null && linearLayoutManager.getChildAt(i2).findViewById(R.id.videoContner) != null) {
                    this.f17725s = (FrameLayout) linearLayoutManager.getChildAt(i2).findViewById(R.id.videoContner);
                    if (linearLayoutManager.getChildAt(i2) != null && linearLayoutManager.getChildAt(i2).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) linearLayoutManager.getChildAt(i2).findViewById(R.id.bannerView);
                    }
                    if (linearLayoutManager.getChildAt(i2) != null && linearLayoutManager.getChildAt(i2).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) linearLayoutManager.getChildAt(i2).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f17725s.getLocalVisibleRect(rect);
                    int height = this.f17725s.getHeight();
                    this.f17723q = simpleDraweeView;
                    this.f17724r = simpleDraweeView2;
                    StandardVideoView standardVideoView = this.f17710d;
                    if (standardVideoView != null) {
                        standardVideoView.setChangeCoverShowListener(new i());
                        this.f17710d.setChangeCoverShowLoadingListener(new j());
                    }
                    t0.d("MyListViewVideoHelper", "1111111111111    " + simpleDraweeView.getTag());
                    if (rect.top == 0 && rect.bottom == height && !z3) {
                        t0.d("MyListViewVideoHelper", "2222222 ");
                        if (((Integer) simpleDraweeView.getTag()).intValue() == t() && this.f17710d.getCurrentState() != 6) {
                            t0.d("MyListViewVideoHelper", "333333 ");
                            if (this.f17710d.getCurrentState() == 5) {
                                this.f17725s.removeAllViews();
                                ViewParent parent = this.f17710d.getParent();
                                if (parent != null && (parent instanceof ViewGroup)) {
                                    ((ViewGroup) this.f17710d.getParent()).removeView(this.f17710d);
                                }
                                this.f17725s.addView(this.f17710d);
                                this.f17710d.onVideoResume(false);
                                t0.d("MyListViewVideoHelper", "444444 ");
                            } else if (this.f17725s.getChildAt(0) == null) {
                                this.f17725s.removeAllViews();
                                t0.d("MyListViewVideoHelper", "55555555 ");
                                ViewParent parent2 = this.f17710d.getParent();
                                if (parent2 != null && (parent2 instanceof ViewGroup)) {
                                    ((ViewGroup) this.f17710d.getParent()).removeView(this.f17710d);
                                }
                                this.f17725s.addView(this.f17710d);
                            }
                        } else {
                            t0.d("MyListViewVideoHelper", "66666666 ");
                            k kVar = this.f17712f.get(simpleDraweeView.getTag());
                            if (kVar != null && kVar.d() != null) {
                                ViewGroup viewGroup = (ViewGroup) this.f17710d.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeAllViews();
                                    SimpleDraweeView simpleDraweeView3 = this.f17723q;
                                    if (simpleDraweeView3 != null) {
                                        simpleDraweeView3.setVisibility(0);
                                    }
                                    t0.d("MyListViewVideoHelper", "7777777 ");
                                }
                                this.f17710d.setPlayTag(this.f17709c);
                                this.f17710d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                                this.f17710d.setSwitchUrl(kVar.d());
                                this.f17710d.setUp(kVar.d(), StandardVideoView.C, "", kVar.a());
                                this.f17725s.addView(this.f17710d);
                                G(((Integer) simpleDraweeView.getTag()).intValue());
                                SimpleDraweeView simpleDraweeView4 = this.f17723q;
                                if (simpleDraweeView4 != null) {
                                    Animation animation = simpleDraweeView4.getAnimation();
                                    if (animation != null) {
                                        animation.setAnimationListener(null);
                                    }
                                    t0.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f17723q.getTag());
                                    this.f17723q.clearAnimation();
                                }
                                if (this.f17710d.d()) {
                                    t0.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                    this.f17710d.startPlayLogic();
                                }
                                t0.d("MyListViewVideoHelper", "startplaylogic ");
                            }
                        }
                        z3 = true;
                    } else {
                        t0.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f17710d.getCurrentState() + "  " + simpleDraweeView.getTag());
                        if (((Integer) simpleDraweeView.getTag()).intValue() == t() && (this.f17710d.getCurrentState() == 2 || this.f17710d.getCurrentState() == 1)) {
                            this.f17710d.onVideoPause();
                            t0.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                        }
                        this.f17725s.removeAllViews();
                        ViewParent parent3 = this.f17710d.getParent();
                        if (parent3 != null && (parent3 instanceof ViewGroup)) {
                            ((ViewGroup) this.f17710d.getParent()).removeView(this.f17710d);
                        }
                        simpleDraweeView.setVisibility(0);
                        t0.d("MyListViewVideoHelper", "out to play Are ");
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean q() {
        return this.f17711e;
    }

    public void r() {
        this.f17712f.clear();
    }

    public void s() {
        StandardVideoView standardVideoView = this.f17710d;
        if (standardVideoView != null) {
            if (!standardVideoView.d() && this.f17710d.getCurrentState() == 0) {
                this.f17710d.startPlayLogic();
            } else {
                this.f17710d.startWindowFullscreen(this.f17707a, false, true);
            }
        }
    }

    public int t() {
        return this.f17708b;
    }

    public String u() {
        return this.f17709c;
    }

    public Map<Integer, k> v() {
        return this.f17712f;
    }

    public int w() {
        StandardVideoView standardVideoView = this.f17710d;
        if (standardVideoView != null) {
            return standardVideoView.getCurrentState();
        }
        return 0;
    }

    public void x(Context context, String str, boolean z3) {
        this.f17707a = context;
        this.f17709c = str;
        StandardVideoView standardVideoView = new StandardVideoView(this.f17707a);
        this.f17710d = standardVideoView;
        standardVideoView.setPlayTag(str);
        if (str.equals("PapaMainAdapter") || z3) {
            this.f17710d.setAutoPlayConfig(z3);
            this.f17710d.setOnclickVideoListener(new b(context, str));
        }
    }

    public void y(int i2) {
        try {
            if (i2 != t()) {
                try {
                    IntentUtil.getInstance().intentActivity(this.f17707a, this.f17712f.get(Integer.valueOf(i2)).f17744d);
                    if ((this.f17707a instanceof MGMainActivity) && TextUtils.equals("PapaMainAdapter", this.f17709c)) {
                        ((MGMainActivity) this.f17707a).setPapaMainFragmentLastPosition(this.f17712f.get(Integer.valueOf(t())).c());
                        D(this.f17712f.get(Integer.valueOf(t())).c());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public void z() {
        try {
            this.f17710d.release();
            com.join.android.app.component.video.a.n0(this.f17709c);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* compiled from: MyListViewVideoHelper.java */
    /* loaded from: classes2.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        int f17741a;

        /* renamed from: b  reason: collision with root package name */
        String f17742b;

        /* renamed from: c  reason: collision with root package name */
        String f17743c;

        /* renamed from: d  reason: collision with root package name */
        IntentDateBean f17744d;

        /* renamed from: e  reason: collision with root package name */
        String f17745e;

        public k(int i2, String str, String str2, IntentDateBean intentDateBean) {
            this.f17741a = i2;
            this.f17742b = str;
            this.f17743c = str2;
            this.f17744d = intentDateBean;
        }

        public String a() {
            return this.f17743c;
        }

        public int b() {
            return this.f17741a;
        }

        public String c() {
            return this.f17745e;
        }

        public String d() {
            return this.f17742b;
        }

        public void e(String str) {
            this.f17743c = str;
        }

        public void f(int i2) {
            this.f17741a = i2;
        }

        public void g(String str) {
            this.f17745e = str;
        }

        public void h(String str) {
            this.f17742b = str;
        }

        public k(int i2, String str, String str2) {
            this.f17741a = i2;
            this.f17742b = str;
            this.f17743c = str2;
        }
    }

    public c(Context context, String str) {
        x(context, str, false);
    }

    public c(Context context, String str, boolean z3) {
        x(context, str, z3);
    }
}
