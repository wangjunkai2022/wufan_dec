package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.p2;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.ForumBaseHeaderView;
import com.join.mgps.customview.ForumGroupHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.customview.WrapContentListView;
import com.join.mgps.customview.g;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import ru.noties.scrollable.ScrollableLayout;
@EActivity(R.layout.mg_forum_group_activity)
/* loaded from: classes3.dex */
public class ForumActivity extends BaseAppCompatActivity implements View.OnClickListener, ForumBaseHeaderView.a {
    public static int D = 2;
    BaseAdapter A;
    List<ForumData.ForumGroupIndexTab> B = new ArrayList();
    String[] C;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    TextView f29777a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    ImageView f29778b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    Button f29779c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    View f29780d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    ForumLoadingView f29781e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ScrollableLayout f29782f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    ForumGroupHeaderView f29783g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SlidingTabLayout4 f29784h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ViewPager f29785i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f29786j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    PtrClassicFrameLayout f29787k;

    /* renamed from: l  reason: collision with root package name */
    Button f29788l;

    /* renamed from: m  reason: collision with root package name */
    p2.a f29789m;

    /* renamed from: n  reason: collision with root package name */
    com.join.mgps.rpc.h f29790n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    int f29791o;
    @Extra

    /* renamed from: p  reason: collision with root package name */
    String f29792p;

    /* renamed from: q  reason: collision with root package name */
    com.join.mgps.fragment.y f29793q;

    /* renamed from: r  reason: collision with root package name */
    ForumData.ForumGroupIndex f29794r;

    /* renamed from: s  reason: collision with root package name */
    private List<ForumData.ForumGroupIndexTab> f29795s;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.adapter.x f29796t;

    /* renamed from: u  reason: collision with root package name */
    private int f29797u;

    /* renamed from: v  reason: collision with root package name */
    int f29798v;

    /* renamed from: w  reason: collision with root package name */
    com.join.mgps.customview.g f29799w;

    /* renamed from: x  reason: collision with root package name */
    private int f29800x;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.customview.h f29801y;

    /* renamed from: z  reason: collision with root package name */
    WrapContentListView f29802z;

    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            com.join.mgps.customview.h hVar = ForumActivity.this.f29801y;
            if (hVar != null && hVar.isShowing()) {
                ForumActivity.this.f29801y.dismiss();
            }
            if (AccountUtil_.getInstance_(view.getContext()).isTourist()) {
                ForumActivity.this.d1();
            } else if (ForumActivity.this.f29794r != null) {
                PostingActivity_.U1(view.getContext()).g(ForumActivity.this.B.get(i2).getType_id()).f(ForumActivity.this.f29794r.getForum_name()).a(ForumActivity.this.f29791o).startForResult(PostingActivity.C0);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.join.mgps.ptr.b {
        b() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean a(PtrFrameLayout ptrFrameLayout, View view, View view2) {
            return com.join.mgps.ptr.a.d(ptrFrameLayout, view, view2);
        }

        @Override // com.join.mgps.ptr.b
        public void b(PtrFrameLayout ptrFrameLayout) {
            ForumActivity.this.a1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends ForumLoadingView.e {
        c(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumActivity.this.X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends ForumLoadingView.e {
        d(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumActivity.this.X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends ForumLoadingView.e {
        e(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumActivity.this.X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements ViewPager.OnPageChangeListener {
        f() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            com.join.mgps.Util.u0.e("onPageScrolled", "position=" + i2 + "");
            ForumActivity.this.R0();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            try {
                ForumActivity forumActivity = ForumActivity.this;
                com.join.mgps.adapter.x xVar = forumActivity.f29796t;
                Fragment item = xVar != null ? xVar.getItem(forumActivity.f29797u) : null;
                if (item != null) {
                    item.onPause();
                    ForumActivity.this.onPause();
                }
                ForumActivity.this.f29796t.getItem(i2).onResume();
                ForumActivity.this.onResume();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            ForumActivity.this.f29797u = i2;
            ForumActivity.this.Z0();
            ForumActivity.this.R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements ru.noties.scrollable.b {
        g() {
        }

        @Override // ru.noties.scrollable.b
        public boolean o(int i2) {
            com.join.mgps.fragment.u0 O0 = ForumActivity.this.O0();
            return O0 != null && O0.o(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements ru.noties.scrollable.j {
        h() {
        }

        @Override // ru.noties.scrollable.j
        public void x(int i2, long j4) {
            com.join.mgps.fragment.u0 O0 = ForumActivity.this.O0();
            if (O0 != null) {
                O0.x(i2, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements ru.noties.scrollable.k {
        i() {
        }

        @Override // ru.noties.scrollable.k
        public void a(int i2, int i4, int i5) {
            try {
                ForumActivity forumActivity = ForumActivity.this;
                ((com.join.mgps.fragment.o0) forumActivity.f29796t.getItem(forumActivity.f29797u)).Q();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class j implements g.b {
        j() {
        }

        @Override // com.join.mgps.customview.g.b
        public void a(int i2) {
            ForumActivity.D = i2;
            ForumActivity.this.a1();
        }
    }

    private List<x.a> V0(Context context) {
        List<ForumData.ForumGroupIndexTab> list = this.f29795s;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (int i2 = 0; i2 < this.f29795s.size(); i2++) {
            ForumData.ForumGroupIndexTab forumGroupIndexTab = this.f29795s.get(i2);
            int type_id = forumGroupIndexTab.getType_id();
            String type_name = forumGroupIndexTab.getType_name();
            RecommenGroupClassify recommenGroupClassify = new RecommenGroupClassify();
            recommenGroupClassify.setGid(type_id);
            recommenGroupClassify.setGname(type_name);
            arrayList.add(new x.a(type_name, com.join.mgps.fragment.o0.X(this.f29791o, this.f29794r.getForum_name(), recommenGroupClassify, i2)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    public void I0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f29787k;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        if (this.f29794r != null) {
            PostingActivity_.U1(this).g(getType()).f(this.f29794r.getForum_name()).a(this.f29791o).startForResult(PostingActivity.C0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0(boolean z3) {
        ForumGroupHeaderView forumGroupHeaderView = this.f29783g;
        if (forumGroupHeaderView != null) {
            forumGroupHeaderView.setJoinState(z3);
        }
        if ((this.f29798v == 1) != z3) {
            com.join.mgps.pref.h.n(this).o0(true);
        } else {
            com.join.mgps.pref.h.n(this).o0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(int i2) {
        ForumLoadingView forumLoadingView = this.f29781e;
        if (forumLoadingView == null) {
            return;
        }
        if (i2 == 1) {
            forumLoadingView.j(1);
        } else if (i2 == 2) {
            forumLoadingView.j(2);
            R0();
        } else if (i2 == 4) {
            forumLoadingView.j(4);
        } else if (i2 == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f29781e;
            forumLoadingView2.setListener(new e(forumLoadingView2));
            this.f29781e.j(16);
        } else if (i2 == 9) {
            forumLoadingView.setListener(new c(forumLoadingView));
            this.f29781e.j(9);
        } else if (i2 != 10) {
        } else {
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.f29781e;
            forumLoadingView3.setListener(new d(forumLoadingView3));
            this.f29781e.setReloadingVisibility(0);
            this.f29781e.j(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> i2 = this.f29790n.i(this.f29791o, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                if (i2 != null && i2.getData() != null) {
                    if (i2.getError() == 0) {
                        K0(false);
                    }
                    D0(i2.getData().getMsg());
                    return;
                }
                D0(getString(R.string.exit_group_failed));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        D0(getString(R.string.net_connect_failed));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N0() {
        List<ForumData.ForumGroupIndexTab> list = this.B;
        if (list != null && list.size() != 0) {
            this.C = new String[this.B.size()];
            for (int i2 = 0; i2 < this.B.size(); i2++) {
                String[] strArr = this.C;
                strArr[i2] = this.B.get(i2).getType_name() + "帖";
            }
            if (this.f29801y == null) {
                View inflate = LayoutInflater.from(this).inflate(R.layout.forum_activity_forum_post, (ViewGroup) null);
                com.join.mgps.customview.h hVar = new com.join.mgps.customview.h(this);
                this.f29801y = hVar;
                hVar.setWidth(-1);
                this.f29801y.setHeight(-2);
                this.f29801y.setContentView(inflate);
                this.f29802z = (WrapContentListView) this.f29801y.getContentView().findViewById(R.id.wrapListView);
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(this, (int) R.layout.forum_activity_forum_post_item, (int) R.id.name, this.C);
            this.A = arrayAdapter;
            this.f29802z.setAdapter((ListAdapter) arrayAdapter);
            this.f29802z.setOnItemClickListener(new a());
            int measuredHeight = this.f29801y.getContentView().getMeasuredHeight() * (-1);
            if (measuredHeight == 0) {
                measuredHeight = getResources().getDimensionPixelOffset(R.dimen.wdp112) * (-1) * this.C.length;
            }
            this.f29801y.showAsDropDown(this.f29780d, 0, measuredHeight);
            return;
        }
        com.join.mgps.customview.h hVar2 = this.f29801y;
        if (hVar2 == null || !hVar2.isShowing()) {
            return;
        }
        this.f29801y.dismiss();
    }

    com.join.mgps.fragment.u0 O0() {
        com.join.mgps.fragment.y yVar = this.f29793q;
        if (yVar != null) {
            return yVar.a();
        }
        return null;
    }

    public int P0() {
        ViewPager viewPager = this.f29785i;
        if (viewPager != null) {
            return viewPager.getCurrentItem();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<ForumData.ForumGroupIndex> u02 = this.f29790n.u0(this.f29791o, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                if (u02 != null && u02.getError() == 0) {
                    if (u02.getData() == null) {
                        L0(4);
                        return;
                    }
                    e1(u02.getData());
                    L0(2);
                    return;
                }
                L0(4);
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                L0(4);
                return;
            }
        }
        D0(getString(R.string.net_connect_failed));
        L0(9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        try {
            if (this.f29788l == null) {
                return;
            }
            List<ForumData.ForumGroupIndexTab> list = this.f29795s;
            if (list != null && list.size() != 0) {
                int i2 = this.f29797u;
                if (i2 >= 0 && i2 < this.f29795s.size()) {
                    if (this.f29795s.get(this.f29797u).getType_id() == 5) {
                        this.f29788l.setVisibility(8);
                        return;
                    } else {
                        this.f29788l.setVisibility(0);
                        return;
                    }
                }
                this.f29788l.setVisibility(0);
                return;
            }
            this.f29788l.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void S0() {
        ForumBean forumBean;
        try {
            String str = (String) getIntent().getSerializableExtra("key_forum_bean");
            if (TextUtils.isEmpty(str) || (forumBean = (ForumBean) JsonMapper.getInstance().fromJson(str, ForumBean.class)) == null || forumBean.getFid() == 0) {
                return;
            }
            this.f29791o = forumBean.getFid();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void T0() {
        this.f29784h.setVisibility(0);
        this.f29785i.setVisibility(0);
        this.f29785i.removeAllViews();
        if (this.f29796t == null) {
            this.f29796t = new com.join.mgps.adapter.x(getSupportFragmentManager());
        }
        this.f29796t.d(V0(this));
        this.f29785i.setAdapter(this.f29796t);
        this.f29785i.setOffscreenPageLimit(this.f29796t.getCount());
        this.f29784h.setViewPager(this.f29785i);
        this.f29784h.g();
        this.f29796t.notifyDataSetChanged();
        if (this.f29796t.getCount() <= 5) {
            this.f29784h.setShouldExpand(true);
        } else {
            this.f29784h.setShouldExpand(false);
        }
        this.f29784h.setOnPageChangeListener(new f());
        this.f29782f.setDraggableView(this.f29783g);
        this.f29793q = new com.join.mgps.fragment.z(this.f29785i, getSupportFragmentManager());
        this.f29782f.setCanScrollVerticallyDelegate(new g());
        this.f29782f.setOnFlingOverListener(new h());
        this.f29782f.w(new i());
    }

    public boolean U0() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f29787k;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ForumResponse<ForumData.HomepageRecommendLabel> e02 = this.f29790n.e0(this.f29791o, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                if (e02 != null && e02.getData() != null) {
                    if (e02.getError() == 0) {
                        K0(true);
                    }
                    D0(e02.getData().getMsg());
                    return;
                }
                D0(getString(R.string.join_group_failed));
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        D0(getString(R.string.net_connect_failed));
    }

    void X0() {
        Q0();
    }

    public void Y0(int i2) {
        if ((i2 > 0 && this.f29800x < 0) || (i2 < 0 && this.f29800x > 0)) {
            this.f29789m.g();
            this.f29800x = 0;
        }
        int i4 = this.f29800x + i2;
        this.f29800x = i4;
        if (i4 > this.f29789m.h()) {
            this.f29789m.l(false);
        } else if (this.f29800x < 0) {
            this.f29789m.l(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
        ((com.join.mgps.fragment.o0) this.f29796t.getItem(this.f29797u)).Q();
    }

    void a1() {
        X0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f29790n = com.join.mgps.rpc.impl.f.A0();
        S0();
        this.f29777a.setVisibility(0);
        this.f29779c.setVisibility(0);
        this.f29777a.setText("小组主页");
        this.f29789m = new p2.a(this.f29788l);
        this.f29782f.setAutoMaxScroll(false);
        this.f29783g.setmOnMeasureHeight(this);
        this.f29783g.setHeaderClickListener(this);
        this.f29787k.j(true);
        this.f29787k.setPtrHandler(new b());
        L0(1);
        X0();
        this.f29778b.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1() {
        com.join.mgps.fragment.y yVar = this.f29793q;
        if (yVar == null || !(yVar.a() instanceof com.join.mgps.fragment.o0)) {
            return;
        }
        ((com.join.mgps.fragment.o0) this.f29793q.a()).o0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
        if (TextUtils.isEmpty(this.f29792p) || !this.f29792p.equals("discovery")) {
            return;
        }
        ForumIndexActivity_.G0(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void c1() {
        try {
            if (this.f29799w == null) {
                com.join.mgps.customview.g gVar = new com.join.mgps.customview.g(this, -2, -2);
                this.f29799w = gVar;
                gVar.d(new j());
            }
            int applyDimension = (int) TypedValue.applyDimension(1, 126.0f, getResources().getDisplayMetrics());
            com.join.mgps.customview.g gVar2 = this.f29799w;
            if (gVar2 != null && gVar2.getContentView() != null) {
                this.f29799w.getContentView().measure(0, 0);
                applyDimension = this.f29799w.getContentView().getMeasuredWidth();
                this.f29799w.setHeight(this.f29799w.getContentView().getMeasuredHeight());
            }
            this.f29799w.setWidth(applyDimension);
            int measuredWidth = (this.f29786j.getMeasuredWidth() - applyDimension) - getResources().getDimensionPixelOffset(R.dimen.dp17);
            if (!this.f29799w.isShowing()) {
                this.f29799w.showAsDropDown(this.f29786j, measuredWidth, 0);
            }
            this.f29799w.c(D);
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1() {
        com.join.mgps.Util.a0.c0(this).m(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1(ForumData.ForumGroupIndex forumGroupIndex) {
        ForumData.ForumGroupIndex forumGroupIndex2;
        if (forumGroupIndex == null) {
            return;
        }
        if (!com.join.mgps.pref.h.n(this).A() && (forumGroupIndex2 = this.f29794r) != null && forumGroupIndex2.getIs_joined() != forumGroupIndex.getIs_joined()) {
            com.join.mgps.pref.h.n(this).o0(true);
        } else {
            this.f29798v = forumGroupIndex.getIs_joined();
        }
        this.f29794r = forumGroupIndex;
        this.f29783g.setData(forumGroupIndex);
        this.B.clear();
        if (forumGroupIndex.getPost_type() != null && forumGroupIndex.getPost_type().size() != 0) {
            this.B.addAll(forumGroupIndex.getPost_type());
        }
        if (this.f29795s == null) {
            this.f29795s = new ArrayList();
        }
        if (this.f29795s != null && forumGroupIndex.getType() != null && this.f29795s.equals(forumGroupIndex.getType())) {
            b1();
            return;
        }
        this.f29795s = forumGroupIndex.getType();
        T0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f1() {
        com.join.mgps.Util.i0.C0(this, this.f29791o);
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView.a
    public void g(int i2) {
        ScrollableLayout scrollableLayout = this.f29782f;
        if (scrollableLayout != null) {
            scrollableLayout.setMaxScrollY(i2);
            ViewGroup.LayoutParams layoutParams = this.f29785i.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = this.f29781e.getMeasuredHeight() - this.f29784h.getMeasuredHeight();
            this.f29785i.setLayoutParams(layoutParams);
            this.f29782f.setAutoMaxScroll(true);
        }
    }

    public void g1() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f29787k;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }

    int getType() {
        List<ForumData.ForumGroupIndexTab> list = this.f29795s;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.f29795s.get(this.f29785i.getCurrentItem()).getType_id();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == 17476 && i4 == -1) {
            if (intent != null) {
                int intExtra = intent.getIntExtra(PostingActivity_.Q0, -1);
                if (this.f29795s != null) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= this.f29795s.size()) {
                            break;
                        } else if (intExtra == this.f29795s.get(i5).getType_id()) {
                            this.f29785i.setCurrentItem(i5, true);
                            break;
                        } else {
                            i5++;
                        }
                    }
                }
            }
            b1();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        boolean g02 = com.join.android.app.component.video.a.g0(this);
        try {
            if (((com.join.mgps.fragment.o0) this.f29796t.getItem(this.f29797u)).onBackPressedMy()) {
                return;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onBackPressed();
        if (g02 || TextUtils.isEmpty(this.f29792p) || !this.f29792p.equals("discovery")) {
            return;
        }
        ForumIndexActivity_.G0(this).start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.memberLL) {
            IntentUtil.getInstance().goForumGroupMemberActivity(this, this.f29791o);
        } else if (id == R.id.follow) {
            if (this.f29783g.b()) {
                M0();
            } else if (AccountUtil_.getInstance_(this).isTourist()) {
                d1();
            } else {
                W0();
            }
        }
    }
}
