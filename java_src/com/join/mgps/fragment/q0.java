package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.ForumIndexHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroup;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.springframework.util.LinkedMultiValueMap;
import ru.noties.scrollable.ScrollableLayout;
/* compiled from: ForumIndexFragment.java */
@EFragment(R.layout.mg_forum_index_fragment)
/* loaded from: classes4.dex */
public class q0 extends com.join.mgps.fragment.d implements ForumIndexHeaderView.c, View.OnClickListener {
    TextView A;
    @ViewById
    TextView B;
    TextView C;
    LinearLayout D;
    TextView E;
    ScrollTextViewLayout F;
    ImageView G;
    ImageView H;
    ImageView I;
    SimpleDraweeView J;
    SimpleDraweeView K;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f49861b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    ImageView f49862c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    View f49863d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f49864e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ForumLoadingView f49865f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ScrollableLayout f49866g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    ForumIndexHeaderView f49867h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    SlidingTabLayout4 f49868i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ViewPager f49869j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    PtrClassicFrameLayout f49870k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    RelativeLayout f49871l;

    /* renamed from: m  reason: collision with root package name */
    Context f49872m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.h f49873n;
    @Pref

    /* renamed from: n0  reason: collision with root package name */
    PrefDef_ f49874n0;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.rpc.d f49875o;

    /* renamed from: p  reason: collision with root package name */
    com.join.mgps.rpc.b f49877p;

    /* renamed from: q  reason: collision with root package name */
    List<RecommenGroupClassify> f49879q;

    /* renamed from: r  reason: collision with root package name */
    y f49881r;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.adapter.x f49883s;

    /* renamed from: u  reason: collision with root package name */
    private int f49887u;

    /* renamed from: v  reason: collision with root package name */
    FragmentManager f49889v;

    /* renamed from: v0  reason: collision with root package name */
    public List<DownloadTask> f49890v0;

    /* renamed from: x  reason: collision with root package name */
    private AbsListView f49893x;

    /* renamed from: x0  reason: collision with root package name */
    private Animation f49894x0;

    /* renamed from: y  reason: collision with root package name */
    private boolean f49895y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    RelativeLayout f49896z;

    /* renamed from: a  reason: collision with root package name */
    private final String f49860a = getClass().getCanonicalName();

    /* renamed from: t  reason: collision with root package name */
    int f49885t = 0;

    /* renamed from: w  reason: collision with root package name */
    boolean f49891w = false;

    /* renamed from: o0  reason: collision with root package name */
    private int f49876o0 = 0;

    /* renamed from: p0  reason: collision with root package name */
    private int f49878p0 = 0;

    /* renamed from: q0  reason: collision with root package name */
    private int f49880q0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    private int f49882r0 = 0;

    /* renamed from: s0  reason: collision with root package name */
    private int f49884s0 = 2;

    /* renamed from: t0  reason: collision with root package name */
    private int f49886t0 = 0;

    /* renamed from: u0  reason: collision with root package name */
    private int f49888u0 = 1;

    /* renamed from: w0  reason: collision with root package name */
    private int f49892w0 = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            q0.this.X();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.B0(view.getContext());
        }
    }

    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    class d implements com.join.mgps.ptr.b {
        d() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            q0.this.p0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class e implements ViewPager.OnPageChangeListener {
        e() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            try {
                q0 q0Var = q0.this;
                com.join.mgps.adapter.x xVar = q0Var.f49883s;
                Fragment item = xVar != null ? xVar.getItem(q0Var.f49887u) : null;
                if (item != null) {
                    item.onPause();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            q0.this.f49887u = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class f implements ru.noties.scrollable.b {
        f() {
        }

        @Override // ru.noties.scrollable.b
        public boolean o(int i2) {
            u0 Z = q0.this.Z();
            return Z != null && Z.o(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class g implements ru.noties.scrollable.j {
        g() {
        }

        @Override // ru.noties.scrollable.j
        public void x(int i2, long j4) {
            u0 Z = q0.this.Z();
            if (Z != null) {
                Z.x(i2, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class h implements ru.noties.scrollable.k {
        h() {
        }

        @Override // ru.noties.scrollable.k
        public void a(int i2, int i4, int i5) {
            try {
                y yVar = q0.this.f49881r;
                if (yVar == null || !(yVar.a() instanceof s0)) {
                    return;
                }
                ((s0) q0.this.f49881r.a()).y0();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class i extends ForumLoadingView.e {
        i(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            q0.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class j extends ForumLoadingView.e {
        j(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            q0.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumIndexFragment.java */
    /* loaded from: classes4.dex */
    public class k extends ForumLoadingView.e {
        k(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            q0.this.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.f49872m);
        this.F.p();
        this.I.setVisibility(8);
        this.f49874n0.isNewFinishedGame().g(Boolean.FALSE);
        this.G.setVisibility(8);
    }

    private void j0() {
        View inflate = LayoutInflater.from(this.f49872m).inflate(R.layout.mgmain_otherlayout, (ViewGroup) null);
        this.A = (TextView) inflate.findViewById(R.id.papa_user_round);
        this.C = (TextView) inflate.findViewById(R.id.biground);
        this.D = (LinearLayout) inflate.findViewById(R.id.downloadLayout);
        this.E = (TextView) inflate.findViewById(R.id.scroll_text);
        this.F = (ScrollTextViewLayout) inflate.findViewById(R.id.scroll_text_layout);
        this.G = (ImageView) inflate.findViewById(R.id.hasNewFinishedGameImage);
        this.H = (ImageView) inflate.findViewById(R.id.downloadLine);
        this.I = (ImageView) inflate.findViewById(R.id.imageLoading);
        this.J = (SimpleDraweeView) inflate.findViewById(R.id.coinFloatad);
        this.K = (SimpleDraweeView) inflate.findViewById(R.id.papa_user_icon);
        this.f49896z.addView(inflate);
        this.D.setOnClickListener(new a());
        this.D.setVisibility(0);
        W();
    }

    private List<x.a> l0(Context context) {
        List<RecommenGroupClassify> list = this.f49879q;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (int i2 = 0; i2 < this.f49879q.size(); i2++) {
            RecommenGroupClassify recommenGroupClassify = this.f49879q.get(i2);
            recommenGroupClassify.getGid();
            arrayList.add(new x.a(recommenGroupClassify.getGname(), s0.W(recommenGroupClassify, i2)));
        }
        return arrayList;
    }

    private void n0() {
        b0();
        d0();
        f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A0(boolean z3, List<RecommendLabelTag> list) {
        ForumIndexHeaderView forumIndexHeaderView = this.f49867h;
        if (forumIndexHeaderView != null) {
            if (z3) {
                forumIndexHeaderView.setLabelsVisibility(0);
            } else {
                forumIndexHeaderView.setLabelsVisibility(8);
            }
            this.f49867h.setLabelsTipVisibility(8);
            this.f49867h.setHomepageRecommendLabel(list);
        }
        E0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void B0() {
        f0();
    }

    void C0() {
        this.H.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f49872m, R.anim.img_translate);
        this.f49894x0 = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.I.setVisibility(0);
        this.I.startAnimation(this.f49894x0);
        this.f49894x0.setAnimationListener(new b());
    }

    void D0() {
        this.I.clearAnimation();
        this.I.setVisibility(8);
        int i2 = this.f49884s0;
        if (i2 != 2 && i2 != 5) {
            this.H.setImageResource(R.drawable.line_white_bg);
        } else {
            this.H.setImageResource(R.drawable.line_grey_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49870k;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        ForumIndexHeaderView forumIndexHeaderView = this.f49867h;
        if (forumIndexHeaderView != null) {
            forumIndexHeaderView.i();
        }
    }

    public void G0() {
        com.papa.gsyvideoplayer.d.j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void H0() {
        try {
            if (this.f49865f.getLoadingState() == 2 && n1.t.p() != null) {
                ForumTable o3 = n1.t.p().o(ForumBean.ForumEvent.HomepageRecommendGroup);
                if ((o3 == null || System.currentTimeMillis() - (Long.parseLong(o3.getTime()) * 1000) < com.join.mgps.Util.i0.f27591c) && !com.join.mgps.pref.h.n(this.f49872m).A()) {
                    return;
                }
                com.join.mgps.pref.h.n(this.f49872m).o0(false);
                J();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void I0(int i2) {
        TextView textView = this.C;
        if (textView == null) {
            return;
        }
        textView.setVisibility(0);
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.C.getLayoutParams();
            Context context = this.f49872m;
            if (context != null) {
                layoutParams.width = context.getResources().getDimensionPixelOffset(R.dimen.round_large_size);
                layoutParams.height = this.f49872m.getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            }
            this.C.setLayoutParams(layoutParams);
            this.C.setCompoundDrawables(null, null, null, null);
            this.C.setBackgroundResource(R.drawable.mygame_big_round);
            this.C.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.C.getLayoutParams();
            Context context2 = this.f49872m;
            if (context2 != null) {
                layoutParams2.width = context2.getResources().getDimensionPixelOffset(R.dimen.dp70);
                layoutParams2.height = this.f49872m.getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            }
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, this.f49872m.getResources().getDisplayMetrics()), 4, 0);
            this.C.setGravity(17);
            this.C.setLayoutParams(layoutParams2);
            this.C.setCompoundDrawables(null, null, null, null);
            this.C.setBackgroundResource(R.drawable.message_round);
            this.C.setPadding(1, 0, 2, 1);
        }
        TextView textView2 = this.C;
        textView2.setText(i2 + "");
    }

    void J() {
        m0();
        n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        D0();
        TextView textView = this.C;
        if (textView != null) {
            textView.setVisibility(8);
            this.C.setText("");
        }
        TextView textView2 = this.B;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(int i2) {
        Context context = this.f49872m;
        if (context != null) {
            int i4 = this.f49884s0;
            if (i4 != 2 && i4 != 5) {
                this.F.setDrawable(context.getResources().getDrawable(R.drawable.papa_download_butn));
            } else {
                this.F.setDrawable(context.getResources().getDrawable(R.drawable.papa_download_selector));
            }
        }
        if (i2 == 0) {
            D0();
            return;
        }
        this.H.setImageResource(R.drawable.line_blue_bg);
        C0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        D0();
        TextView textView = this.C;
        if (textView != null) {
            textView.setVisibility(8);
            this.C.setText("");
        }
        if (this.B != null) {
            Drawable drawable = this.f49872m.getResources().getDrawable(R.drawable.mygame_litle_round);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            this.B.setVisibility(0);
            this.B.setCompoundDrawables(drawable, null, null, null);
            this.B.setBackgroundResource(R.color.transparent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void M() {
        com.join.mgps.Util.i0.g1();
        p0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N() {
        IntentUtil.getInstance().goMGSettingActivity(getActivity());
    }

    public void R() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49870k;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65512y})
    public void S(Intent intent) {
        W();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d
    @UiThread
    public void T(String str) {
        com.join.mgps.Util.i2.a(this.f49872m).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U() {
        getActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V(int i2) {
        ForumLoadingView forumLoadingView = this.f49865f;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.j(1);
        } else if (i2 == 2) {
            forumLoadingView.j(2);
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f49865f;
            forumLoadingView2.setListener(new k(forumLoadingView2));
            this.f49865f.j(16);
        } else if (i2 == 9) {
            forumLoadingView.setListener(new i(forumLoadingView));
            this.f49865f.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.f49865f;
            forumLoadingView3.setListener(new j(forumLoadingView3));
            this.f49865f.setReloadingVisibility(0);
            this.f49865f.j(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W() {
        this.f49876o0 = g1.f.G().O();
        this.f49880q0 = g1.f.G().S(getActivity());
        K0(g1.f.G().W());
        int i2 = this.f49876o0;
        if (i2 != 0) {
            I0(i2);
        } else if (this.f49880q0 != 0) {
            L0();
        } else {
            J0();
        }
    }

    u0 Z() {
        y yVar = this.f49881r;
        if (yVar != null) {
            return yVar.a();
        }
        return null;
    }

    public int a0() {
        ViewPager viewPager = this.f49869j;
        if (viewPager != null) {
            return viewPager.getCurrentItem();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f49871l.setVisibility(0);
        this.f49862c.setVisibility(0);
        this.f49873n = com.join.mgps.rpc.impl.f.A0();
        this.f49875o = com.join.mgps.rpc.impl.c.P1();
        this.f49877p = com.join.mgps.rpc.impl.a.b0();
        this.f49872m = getActivity();
        this.f49864e.setVisibility(0);
        this.f49864e.setText("社区");
        this.f49871l.setOnClickListener(new c());
        this.f49870k.setPtrHandler(new d());
        this.f49870k.j(true);
        this.f49866g.setAutoMaxScroll(false);
        this.f49867h.setmOnMeasureHeight(this);
        this.f49867h.setHeaderClickListener(this);
        j0();
        i0();
        J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0() {
        if (com.join.android.app.common.utils.f.j(this.f49872m)) {
            try {
                ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean> x02 = this.f49875o.x0(com.join.mgps.Util.i0.V(this.f49872m, 1));
                if (x02 != null && x02.getFlag() == 1 && x02.getMessages() != null && x02.getMessages().getData() != null) {
                    ForumBannerBean.ForumBannerDataBannerBean data = x02.getMessages().getData();
                    com.join.mgps.Util.i0.l1(data);
                    w0(data);
                    return;
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                h0();
                E0();
                return;
            }
        }
        String string = (this.f49872m == null || !isAdded()) ? "" : getString(R.string.net_connect_failed);
        if (!TextUtils.isEmpty(string)) {
            T(string);
        }
        V(9);
    }

    void c0() {
        ForumBannerBean.ForumBannerDataBannerBean a02 = com.join.mgps.Util.i0.a0();
        if (a02 == null) {
            return;
        }
        w0(a02);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d0() {
        if (com.join.android.app.common.utils.f.j(this.f49872m)) {
            try {
                ForumResponse<ForumData.HomepageRecommendGroup> P = this.f49873n.P(AccountUtil_.getInstance_(this.f49872m).getUid(), AccountUtil_.getInstance_(this.f49872m).getToken());
                if (P == null || P.getError() != 0) {
                    return;
                }
                if (P.getData() == null) {
                    V(4);
                    return;
                }
                ForumData.HomepageRecommendGroup data = P.getData();
                com.join.mgps.Util.i0.q1(data);
                y0(data);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                E0();
                return;
            }
        }
        String string = (this.f49872m == null || !isAdded()) ? "" : getString(R.string.net_connect_failed);
        if (!TextUtils.isEmpty(string)) {
            T(string);
        }
        V(9);
    }

    void e0() {
        ForumData.HomepageRecommendGroup g02 = com.join.mgps.Util.i0.g0();
        if (g02 == null) {
            return;
        }
        y0(g02);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void f0() {
        if (com.join.android.app.common.utils.f.j(this.f49872m)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> O = this.f49873n.O(0, 1, AccountUtil_.getInstance_(this.f49872m).getUid(), AccountUtil_.getInstance_(this.f49872m).getToken());
                if (O != null && O.getError() == 0) {
                    if (O.getData() == null) {
                        V(4);
                        F0();
                        return;
                    }
                    ForumData.HomepageRecommendLabel data = O.getData();
                    com.join.mgps.Util.i0.r1(data);
                    this.f49885t = data.getFlag();
                    if (data.getFlag() == 0) {
                        A0(data.getLabel_switcher() == 1, data.getTag_list());
                    } else if (data.getFlag() == 1) {
                        z0();
                    }
                    q0(data.getFenzu());
                }
                F0();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                E0();
                return;
            }
        }
        String string = (this.f49872m == null || !isAdded()) ? "" : getString(R.string.net_connect_failed);
        if (!TextUtils.isEmpty(string)) {
            T(string);
        }
        V(9);
        F0();
    }

    @Override // com.join.mgps.customview.ForumIndexHeaderView.c
    public void g(int i2) {
        ViewPager viewPager;
        SlidingTabLayout4 slidingTabLayout4;
        ScrollableLayout scrollableLayout = this.f49866g;
        if (scrollableLayout != null) {
            if (this.f49885t == 0) {
                List<RecommenGroupClassify> list = this.f49879q;
                if (list != null && list.size() > 0 && (slidingTabLayout4 = this.f49868i) != null && this.f49869j != null && slidingTabLayout4.getVisibility() == 0 && this.f49869j.getVisibility() == 0) {
                    this.f49866g.setMaxScrollY(i2);
                    ViewGroup.LayoutParams layoutParams = this.f49869j.getLayoutParams();
                    layoutParams.width = -1;
                    layoutParams.height = this.f49865f.getMeasuredHeight() - this.f49868i.getMeasuredHeight();
                    this.f49869j.setLayoutParams(layoutParams);
                    return;
                }
                this.f49866g.setMaxScrollY(i2 - this.f49865f.getMeasuredHeight());
                return;
            }
            scrollableLayout.setMaxScrollY(i2);
            if (this.f49868i == null || (viewPager = this.f49869j) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = viewPager.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = this.f49865f.getMeasuredHeight() - this.f49868i.getMeasuredHeight();
            this.f49869j.setLayoutParams(layoutParams2);
        }
    }

    void g0() {
        List<RecommenGroupClassify> list;
        ForumData.HomepageRecommendLabel h02 = com.join.mgps.Util.i0.h0();
        if (h02 == null) {
            return;
        }
        this.f49885t = h02.getFlag();
        if (h02.getFlag() == 0) {
            A0(h02.getLabel_switcher() == 1, h02.getTag_list());
        } else if (h02.getFlag() == 1) {
            if (this.f49879q == null) {
                this.f49879q = new ArrayList();
            }
            if (h02.getFenzu() != null && (list = this.f49879q) != null && list.equals(h02.getFenzu())) {
                r0();
                return;
            }
            this.f49879q.clear();
            this.f49879q.addAll(h02.getFenzu());
            z0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        this.f49867h.setNoForumBanner();
    }

    void i0() {
        this.f49866g.setDraggableView(this.f49867h);
        this.f49866g.setCanScrollVerticallyDelegate(new f());
        this.f49866g.setOnFlingOverListener(new g());
        this.f49866g.w(new h());
    }

    public boolean k0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f49870k;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    @Override // com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void m0() {
        c0();
        e0();
        g0();
    }

    public void o0() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            if (this.f49889v == null && isAdded()) {
                this.f49889v = getChildFragmentManager();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.refreshTag) {
            this.f49867h.h();
            f0();
        } else if (id == R.id.forumRecomm) {
            if (AccountUtil_.getInstance_(getContext()).isTourist()) {
                x0();
            } else if (this.f49867h.getSelectedLabel().size() >= 3) {
                u0(this.f49867h.getSelectedIds());
            } else {
                String string = (this.f49872m == null || !isAdded()) ? "" : getString(R.string.forum_tip_at_least_sel_label);
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                T(string);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f49889v != null) {
            com.join.mgps.adapter.x xVar = this.f49883s;
            if (xVar != null) {
                xVar.b();
            }
            this.f49889v = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3 || Z() == null) {
            return;
        }
        Z().setUserVisibleHint(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        H0();
        W();
    }

    void p0() {
        n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0(List<RecommenGroupClassify> list) {
        List<RecommenGroupClassify> list2;
        SlidingTabLayout4 slidingTabLayout4;
        if (this.f49879q == null) {
            this.f49879q = new ArrayList();
        }
        if (list != null && (list2 = this.f49879q) != null && list2.equals(list) && (slidingTabLayout4 = this.f49868i) != null && this.f49869j != null && slidingTabLayout4.getVisibility() == 0 && this.f49869j.getVisibility() == 0) {
            r0();
            return;
        }
        this.f49879q.clear();
        this.f49879q.addAll(list);
        if (this.f49879q.size() > 0) {
            SlidingTabLayout4 slidingTabLayout42 = this.f49868i;
            if (slidingTabLayout42 != null) {
                slidingTabLayout42.setVisibility(0);
            }
            ViewPager viewPager = this.f49869j;
            if (viewPager != null) {
                viewPager.setVisibility(0);
            }
            v0();
            return;
        }
        SlidingTabLayout4 slidingTabLayout43 = this.f49868i;
        if (slidingTabLayout43 != null) {
            slidingTabLayout43.setVisibility(8);
        }
        ViewPager viewPager2 = this.f49869j;
        if (viewPager2 != null) {
            viewPager2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0() {
        y yVar = this.f49881r;
        if (yVar == null || !(yVar.a() instanceof s0)) {
            return;
        }
        ((s0) this.f49881r.a()).n0();
    }

    public void t0() {
        this.f49895y = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void u0(String str) {
        String str2 = "";
        if (com.join.android.app.common.utils.f.j(this.f49872m)) {
            try {
                String uid = AccountUtil_.getInstance_(this.f49872m).getUid();
                String token = AccountUtil_.getInstance_(this.f49872m).getToken();
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                linkedMultiValueMap.add("uid", uid + "");
                linkedMultiValueMap.add("token", token);
                linkedMultiValueMap.add("ids", str);
                ForumResponse<ForumData.HomepageRecommendLabel> z3 = this.f49873n.z(linkedMultiValueMap);
                if (z3 == null || z3.getError() != 0 || z3.getData() == null) {
                    return;
                }
                if (z3.getData().isResult()) {
                    B0();
                }
                if (TextUtils.isEmpty(z3.getData().getMsg())) {
                    return;
                }
                T(z3.getData().getMsg());
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                T("服务器异常");
                return;
            }
        }
        if (this.f49872m != null && isAdded()) {
            str2 = getString(R.string.net_connect_failed);
        }
        if (!TextUtils.isEmpty(str2)) {
            T(str2);
        }
        V(9);
    }

    void v0() {
        if (this.f49883s == null) {
            if (this.f49889v == null && isAdded()) {
                this.f49889v = getChildFragmentManager();
            }
            com.join.mgps.adapter.x xVar = new com.join.mgps.adapter.x(this.f49889v);
            this.f49883s = xVar;
            ViewPager viewPager = this.f49869j;
            if (viewPager != null) {
                viewPager.setAdapter(xVar);
            }
            SlidingTabLayout4 slidingTabLayout4 = this.f49868i;
            if (slidingTabLayout4 != null) {
                slidingTabLayout4.setViewPager(this.f49869j);
            }
            this.f49881r = new z(this.f49869j, this.f49889v);
        }
        if (this.f49883s.c() != null) {
            this.f49883s.b();
        }
        this.f49883s.d(l0(this.f49872m));
        if (this.f49868i != null) {
            if (this.f49883s.getCount() <= 4) {
                this.f49868i.setShouldExpand(true);
            } else {
                this.f49868i.setShouldExpand(false);
            }
            this.f49868i.setOnPageChangeListener(new e());
        }
        this.f49883s.notifyDataSetChanged();
        SlidingTabLayout4 slidingTabLayout42 = this.f49868i;
        if (slidingTabLayout42 != null) {
            slidingTabLayout42.g();
        }
        ViewPager viewPager2 = this.f49869j;
        if (viewPager2 != null) {
            viewPager2.setOffscreenPageLimit(this.f49883s.getCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void w0(ForumBannerBean.ForumBannerDataBannerBean forumBannerDataBannerBean) {
        ForumIndexHeaderView forumIndexHeaderView = this.f49867h;
        if (forumIndexHeaderView != null && forumBannerDataBannerBean != null) {
            forumIndexHeaderView.setBannerData(forumBannerDataBannerBean.getBanner());
        }
        V(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0() {
        com.join.mgps.Util.a0.c0(getContext()).m(getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0(ForumData.HomepageRecommendGroup homepageRecommendGroup) {
        V(2);
        List<RecommenGroup> tuijianguanzhu = homepageRecommendGroup.getTuijianguanzhu();
        List<RecommenGroup> wodeguanzhu = homepageRecommendGroup.getWodeguanzhu();
        ForumIndexHeaderView forumIndexHeaderView = this.f49867h;
        if (forumIndexHeaderView != null) {
            forumIndexHeaderView.setHomepageRecommendGroupMy(wodeguanzhu);
            this.f49867h.setHomepageRecommendGroup(tuijianguanzhu);
        }
        if (this.f49879q == null) {
            this.f49879q = new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z0() {
        ForumIndexHeaderView forumIndexHeaderView = this.f49867h;
        if (forumIndexHeaderView != null) {
            forumIndexHeaderView.setLabelsVisibility(8);
        }
        E0();
    }
}
