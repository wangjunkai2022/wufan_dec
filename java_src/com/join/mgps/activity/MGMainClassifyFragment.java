package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.MyRadioGroup;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.db.tables.CategoryRecordTable;
import com.join.mgps.dto.CategoryBean;
import com.join.mgps.dto.CategorySimpleBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import com.papa91.arc.CContext;
import java.util.ArrayList;
import java.util.List;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EFragment(R.layout.my_game_layout)
/* loaded from: classes3.dex */
public class MGMainClassifyFragment extends Fragment implements com.join.mgps.pref.b {
    public static final String H = "MGMainClassifyFragment";
    @ViewById
    ToggleButton A;
    com.join.mgps.rpc.d B;
    @Pref
    PrefDef_ D;
    private com.join.mgps.pref.f E;
    String G;

    /* renamed from: a  reason: collision with root package name */
    private Context f33455a;

    /* renamed from: b  reason: collision with root package name */
    private com.join.mgps.activity.d f33456b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.activity.d f33457c;

    /* renamed from: d  reason: collision with root package name */
    private com.join.mgps.activity.d f33458d;

    /* renamed from: e  reason: collision with root package name */
    private com.join.mgps.customview.d0 f33459e;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f33472r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f33473s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    LinearLayout f33474t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    MViewpagerV4 f33475u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    SlidingTabLayout f33476v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    ToggleButton f33477w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TextView f33478x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    TextView f33479y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    LinearLayout f33480z;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<Fragment> f33460f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private List<String> f33461g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private List<CategorySimpleBean> f33462h = null;

    /* renamed from: i  reason: collision with root package name */
    private PopupWindow f33463i = null;

    /* renamed from: j  reason: collision with root package name */
    private PopupWindow f33464j = null;

    /* renamed from: k  reason: collision with root package name */
    private String f33465k = "";

    /* renamed from: l  reason: collision with root package name */
    private int f33466l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f33467m = -9211021;

    /* renamed from: n  reason: collision with root package name */
    private int f33468n = -756480;

    /* renamed from: o  reason: collision with root package name */
    private int f33469o = -1644167168;

    /* renamed from: p  reason: collision with root package name */
    final String[] f33470p = {LocalGameActivity.f32927r};

    /* renamed from: q  reason: collision with root package name */
    final String[] f33471q = {""};
    private int C = 14;
    int[] F = new int[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum GameType {
        PLAT_ALL("", LocalGameActivity.f32927r, "筛选", R.drawable.plat_all),
        FEATURED_ONLINE("10001", "精选网游", "网游", R.drawable.online_game),
        LARGE_SINGLE("10002", "大型单机", "单机", R.drawable.stand_alone_game),
        FC("35", "FC小霸王", CContext.SCENE_FC, R.drawable.fc),
        FBA("31", "街机游戏", "街机", R.drawable.jg),
        GBA("33", "GBA游戏", CContext.SCENE_GBA, R.drawable.gba),
        PSP("34", "PSP游戏", CContext.SCENE_PSP, R.drawable.psp),
        PS("53", "PS游戏", "PS", R.drawable.ps),
        SFC("43", "SFC游戏", "SFC", R.drawable.sfc),
        MD("51", "MD游戏", "MD", R.drawable.md),
        WSC("54", "WSC游戏", "WSC", R.drawable.wsc),
        NDS("32", "NDS游戏", "NDS", R.drawable.nds),
        GBC("56", "GBC游戏", "GBC", R.drawable.gbc),
        N64("57", "N64游戏", "N64", R.drawable.n64),
        ONS("58", "ONS游戏", "ONS", R.drawable.ons),
        DC("60", "dc游戏", "DC", R.drawable.dc_icon);
        
        private String id;
        private int resId;
        private String title;
        private String titleAbbr;

        GameType(String str, String str2, String str3, int i2) {
            this.id = str;
            this.title = str2;
            this.titleAbbr = str3;
            this.resId = i2;
        }

        public String id() {
            return this.id;
        }

        public int resId() {
            return this.resId;
        }

        public String title() {
            return this.title;
        }

        public String titleAbbr() {
            return this.titleAbbr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainClassifyFragment.this.f33463i == null || !MGMainClassifyFragment.this.f33463i.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f33463i.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                MGMainClassifyFragment.this.i0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                MGMainClassifyFragment.this.j0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RadioButton f33484a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f33485b;

        d(RadioButton radioButton, String str) {
            this.f33484a = radioButton;
            this.f33485b = str;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                MGMainClassifyFragment.this.f33470p[0] = this.f33484a.getText().toString().trim();
                MGMainClassifyFragment.this.f33471q[0] = this.f33485b;
                this.f33484a.setTextColor(-756480);
                return;
            }
            this.f33484a.setTextColor(-12829636);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainClassifyFragment.this.f33464j == null || !MGMainClassifyFragment.this.f33464j.isShowing()) {
                return;
            }
            MGMainClassifyFragment.this.f33464j.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements PopupWindow.OnDismissListener {
        f() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MGMainClassifyFragment.this.f33478x.setVisibility(8);
            MGMainClassifyFragment.this.A.setVisibility(0);
            MGMainClassifyFragment.this.f33480z.setVisibility(0);
            MGMainClassifyFragment.this.f33477w.setVisibility(0);
            MGMainClassifyFragment.this.f33479y.setVisibility(8);
            MGMainClassifyFragment.this.D.isReloadClassify().g(Boolean.FALSE);
            MGMainClassifyFragment.this.E.callbackDownloadCenterVisible(null);
            MGMainClassifyFragment.this.A.setChecked(false);
            MGMainClassifyFragment mGMainClassifyFragment = MGMainClassifyFragment.this;
            if (mGMainClassifyFragment.G.equals(mGMainClassifyFragment.f33470p[0])) {
                return;
            }
            MGMainClassifyFragment mGMainClassifyFragment2 = MGMainClassifyFragment.this;
            mGMainClassifyFragment2.c0(mGMainClassifyFragment2.f33470p[0]);
            MGMainClassifyFragment.this.f33456b.m0(MGMainClassifyFragment.this.f33471q[0]);
            MGMainClassifyFragment.this.e0();
            MGMainClassifyFragment.this.b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Button f33489a;

        g(Button button) {
            this.f33489a = button;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    this.f33489a.setTextColor(MGMainClassifyFragment.this.f33467m);
                    return false;
                } else if (action != 2) {
                    return false;
                } else {
                    this.f33489a.setTextColor(MGMainClassifyFragment.this.f33468n);
                    return false;
                }
            }
            this.f33489a.setTextColor(MGMainClassifyFragment.this.f33468n);
            MGMainClassifyFragment.this.f33463i.dismiss();
            MGMainClassifyFragment.this.f33477w.setText("分类");
            MGMainClassifyFragment.this.f33477w.setTextOn("分类");
            MGMainClassifyFragment.this.f33477w.setTextOff("分类");
            MGMainClassifyFragment.this.f33456b.l0("");
            MGMainClassifyFragment.this.d0("");
            MGMainClassifyFragment.this.a0("");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RadioButton f33491a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CategorySimpleBean f33492b;

        h(RadioButton radioButton, CategorySimpleBean categorySimpleBean) {
            this.f33491a = radioButton;
            this.f33492b = categorySimpleBean;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                this.f33491a.setTextColor(MGMainClassifyFragment.this.f33468n);
                if (MGMainClassifyFragment.this.f33463i == null || !MGMainClassifyFragment.this.f33463i.isShowing()) {
                    return;
                }
                MGMainClassifyFragment.this.f33463i.dismiss();
                MGMainClassifyFragment.this.f33477w.setText(this.f33492b.getTitle());
                MGMainClassifyFragment.this.f33477w.setTextOff(this.f33492b.getTitle());
                MGMainClassifyFragment.this.f33477w.setTextOn(this.f33492b.getTitle());
                MGMainClassifyFragment.this.f33456b.l0(this.f33492b.getId());
                MGMainClassifyFragment.this.d0(this.f33492b.getId());
                MGMainClassifyFragment.this.a0(this.f33492b.getId());
                return;
            }
            this.f33491a.setTextColor(MGMainClassifyFragment.this.f33467m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RadioButton f33494a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CategorySimpleBean f33495b;

        i(RadioButton radioButton, CategorySimpleBean categorySimpleBean) {
            this.f33494a = radioButton;
            this.f33495b = categorySimpleBean;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                this.f33494a.setTextColor(MGMainClassifyFragment.this.f33468n);
                if (MGMainClassifyFragment.this.f33463i == null || !MGMainClassifyFragment.this.f33463i.isShowing()) {
                    return;
                }
                MGMainClassifyFragment.this.f33463i.dismiss();
                MGMainClassifyFragment.this.f33477w.setText(this.f33495b.getTitle());
                MGMainClassifyFragment.this.f33477w.setTextOff(this.f33495b.getTitle());
                MGMainClassifyFragment.this.f33477w.setTextOn(this.f33495b.getTitle());
                MGMainClassifyFragment.this.f33456b.l0(this.f33495b.getId());
                MGMainClassifyFragment.this.d0(this.f33495b.getId());
                MGMainClassifyFragment.this.a0(this.f33495b.getId());
                return;
            }
            this.f33494a.setTextColor(MGMainClassifyFragment.this.f33467m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RadioButton f33497a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CategorySimpleBean f33498b;

        j(RadioButton radioButton, CategorySimpleBean categorySimpleBean) {
            this.f33497a = radioButton;
            this.f33498b = categorySimpleBean;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (z3) {
                this.f33497a.setTextColor(MGMainClassifyFragment.this.f33468n);
                if (MGMainClassifyFragment.this.f33463i == null || !MGMainClassifyFragment.this.f33463i.isShowing()) {
                    return;
                }
                MGMainClassifyFragment.this.f33463i.dismiss();
                MGMainClassifyFragment.this.f33477w.setText(this.f33498b.getTitle());
                MGMainClassifyFragment.this.f33477w.setTextOff(this.f33498b.getTitle());
                MGMainClassifyFragment.this.f33477w.setTextOn(this.f33498b.getTitle());
                MGMainClassifyFragment.this.f33456b.l0(this.f33498b.getId());
                MGMainClassifyFragment.this.d0(this.f33498b.getId());
                MGMainClassifyFragment.this.a0(this.f33498b.getId());
                return;
            }
            this.f33497a.setTextColor(MGMainClassifyFragment.this.f33467m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements PopupWindow.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        private LinearLayout f33500a;

        public k(LinearLayout linearLayout) {
            this.f33500a = linearLayout;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            this.f33500a.setVisibility(8);
            MGMainClassifyFragment.this.f33477w.setChecked(false);
        }
    }

    private void M() {
        this.D.isReloadClassify().g(Boolean.FALSE);
        this.E.callbackDownloadCenterVisible(null);
        if (this.D.isFirstClickClassify().d().booleanValue() && !isHidden()) {
            this.E.callbackClassifyTipsVisible(null);
        }
        try {
            this.f33461g.add("最热");
            this.f33461g.add("飙升");
            this.f33461g.add("新锐");
            for (int i2 = 0; i2 < this.f33461g.size(); i2++) {
                if (i2 == 0) {
                    com.join.mgps.activity.d Z = com.join.mgps.activity.d.Z("1", this.f33465k);
                    this.f33456b = Z;
                    this.f33460f.add(Z);
                } else if (i2 == 1) {
                    com.join.mgps.activity.d Z2 = com.join.mgps.activity.d.Z(PayCenterOrderRequest.PAY_TYPE_RECHARGE, this.f33465k);
                    this.f33457c = Z2;
                    this.f33460f.add(Z2);
                } else if (i2 == 2) {
                    com.join.mgps.activity.d Z3 = com.join.mgps.activity.d.Z("3", this.f33465k);
                    this.f33458d = Z3;
                    this.f33460f.add(Z3);
                }
            }
            if (this.f33475u == null) {
                this.f33475u = (MViewpagerV4) LayoutInflater.from(this.f33455a).inflate(R.layout.my_game_layout, (ViewGroup) null, false).findViewById(R.id.mViewpagerV4);
            }
            this.f33475u.setIntercept(false);
            com.join.mgps.customview.d0 d0Var = new com.join.mgps.customview.d0(getChildFragmentManager(), this.f33460f, this.f33461g);
            this.f33459e = d0Var;
            d0Var.d(this.f33460f, this.f33461g);
            this.f33459e.notifyDataSetChanged();
            this.f33475u.setAdapter(this.f33459e);
            this.f33475u.setOffscreenPageLimit(3);
            this.f33476v.setCustomTabView(R.layout.classsify_tab_indicator, 16908308);
            int i4 = this.f33466l;
            if (i4 >= 540) {
                this.f33476v.setMarginWidth(i4 / 20);
            } else {
                this.f33476v.setMarginWidth(10);
            }
            this.f33476v.setSelectedIndicatorColors(-882134);
            this.f33476v.setDistributeEvenly(true);
            this.f33476v.setViewPager(this.f33475u);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private List<CategorySimpleBean> T(CategoryBean categoryBean) {
        if (categoryBean.getMessages().getData() == null || categoryBean.getMessages().getData().size() <= 0) {
            return null;
        }
        return categoryBean.getMessages().getData().get(0).getGame_type();
    }

    public static MGMainClassifyFragment X(int i2) {
        j1 j1Var = new j1();
        Bundle bundle = new Bundle();
        bundle.putInt(H, i2);
        j1Var.setArguments(bundle);
        return j1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U() {
        this.f33478x.setVisibility(8);
        this.A.setVisibility(0);
        PopupWindow popupWindow = this.f33464j;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.f33464j.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void V() {
        if (com.join.android.app.common.utils.f.j(this.f33455a)) {
            try {
                List<CategorySimpleBean> T = T(this.B.W0(W()));
                if (T != null) {
                    f0(T);
                } else {
                    h0();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                h0();
                return;
            }
        }
        h0();
    }

    public CommonRequestBean W() {
        return RequestBeanUtil.getInstance(this.f33455a).getCategoryRequestBean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z() {
        com.papa.sim.statistic.p.l(this.f33455a).m2(Where.classify, AccountUtil_.getInstance_(getActivity()).getUid());
        SearchHintActivity_.S1(this.f33455a).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void a0(String str) {
        this.f33458d.l0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.B = com.join.mgps.rpc.impl.c.P1();
        this.f33455a = getActivity();
        GameType gameType = null;
        this.E.callbackDownloadCenterVisible(null);
        this.f33462h = new ArrayList();
        this.f33466l = ((WindowManager) this.f33455a.getSystemService("window")).getDefaultDisplay().getWidth();
        Bundle arguments = getArguments();
        int i2 = arguments != null ? arguments.getInt(H) : 0;
        this.C = 14;
        if (i2 != 0) {
            switch (i2) {
                case 10:
                    gameType = GameType.FBA;
                    break;
                case 11:
                    gameType = GameType.FC;
                    break;
                case 12:
                    gameType = GameType.GBA;
                    break;
                case 13:
                    gameType = GameType.SFC;
                    break;
                case 14:
                    gameType = GameType.PSP;
                    break;
                case 15:
                    gameType = GameType.FEATURED_ONLINE;
                    break;
                case 16:
                    gameType = GameType.MD;
                    break;
                case 17:
                    gameType = GameType.PS;
                    break;
                case 18:
                    gameType = GameType.LARGE_SINGLE;
                    break;
                case 19:
                    gameType = GameType.WSC;
                    break;
                case 20:
                    gameType = GameType.NDS;
                    break;
                case 21:
                    gameType = GameType.GBC;
                    break;
                case 22:
                    gameType = GameType.N64;
                    break;
                case 23:
                    gameType = GameType.ONS;
                    break;
                case 24:
                    gameType = GameType.DC;
                    break;
            }
        } else {
            this.f33465k = "";
            c0("筛选");
        }
        if (gameType != null) {
            String id = gameType.id();
            String titleAbbr = gameType.titleAbbr();
            this.f33465k = id;
            c0(titleAbbr);
        }
        g0();
        V();
        this.f33477w.setChecked(false);
        this.f33477w.setOnCheckedChangeListener(new b());
        this.A.setChecked(false);
        this.A.setOnCheckedChangeListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void b0() {
        this.f33458d.m0(this.f33471q[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0(String str) {
        GameType[] values = GameType.values();
        int i2 = 0;
        while (true) {
            if (i2 >= values.length) {
                break;
            } else if (str.equals(values[i2].title())) {
                str = values[i2].titleAbbr();
                break;
            } else {
                i2++;
            }
        }
        this.A.setText(str);
        this.A.setTextOn(str);
        this.A.setTextOff(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void d0(String str) {
        this.f33457c.l0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void e0() {
        this.f33457c.m0(this.f33471q[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0(List<CategorySimpleBean> list) {
        this.f33473s.setVisibility(8);
        this.f33474t.setVisibility(8);
        this.f33472r.setVisibility(0);
        this.f33462h.clear();
        this.f33462h.addAll(list);
        n1.f.n().a();
        for (int i2 = 0; i2 < list.size(); i2++) {
            CategoryRecordTable categoryRecordTable = new CategoryRecordTable();
            CategorySimpleBean categorySimpleBean = list.get(i2);
            categoryRecordTable.setId(categorySimpleBean.getId());
            categoryRecordTable.setTitle(categorySimpleBean.getTitle());
            categoryRecordTable.setIco_remote(categorySimpleBean.getIco_remote());
            categoryRecordTable.setShow_index(categorySimpleBean.getShow_index());
            categoryRecordTable.setGame_num(categorySimpleBean.getGame_num());
            n1.f.n().k(categoryRecordTable);
        }
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        this.f33473s.setVisibility(0);
        this.f33474t.setVisibility(8);
        this.f33472r.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        List<CategoryRecordTable> d4 = n1.f.n().d();
        this.f33462h.clear();
        if (d4 != null) {
            for (int i2 = 0; i2 < d4.size(); i2++) {
                CategoryRecordTable categoryRecordTable = d4.get(i2);
                CategorySimpleBean categorySimpleBean = new CategorySimpleBean();
                categorySimpleBean.setShow_index(categoryRecordTable.getShow_index());
                categorySimpleBean.setId(categoryRecordTable.getId());
                categorySimpleBean.setGame_num(categoryRecordTable.getGame_num());
                categorySimpleBean.setIco_remote(categoryRecordTable.getIco_remote());
                categorySimpleBean.setTitle(categoryRecordTable.getTitle());
                this.f33462h.add(categorySimpleBean);
            }
        }
        List<CategorySimpleBean> list = this.f33462h;
        if (list != null && list.size() > 0) {
            this.f33473s.setVisibility(8);
            this.f33474t.setVisibility(8);
            this.f33472r.setVisibility(0);
            M();
            return;
        }
        this.f33473s.setVisibility(8);
        this.f33474t.setVisibility(0);
        this.f33472r.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0() {
        boolean z3;
        LinearLayout linearLayout = new LinearLayout(this.f33455a);
        int i2 = -1;
        linearLayout.setLayoutParams(new RadioGroup.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(this.f33455a);
        linearLayout2.setOrientation(1);
        linearLayout2.setBackgroundColor(-1);
        int i4 = -2;
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2);
        LinearLayout linearLayout3 = new LinearLayout(this.f33455a);
        linearLayout3.setLayoutParams(new RadioGroup.LayoutParams(-1, -1));
        linearLayout3.setBackgroundColor(this.f33469o);
        linearLayout3.setOrientation(1);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(linearLayout3);
        Button button = new Button(this.f33455a);
        button.setText(LocalGameActivity.f32927r);
        button.setTextSize(this.C);
        button.setTextColor(this.f33467m);
        int i5 = this.f33466l;
        if (i5 > 960) {
            layoutParams.setMargins(i5 / 15, i5 / 25, i5 / 15, i5 / 25);
        } else {
            layoutParams.setMargins(i5 / 30, i5 / 25, i5 / 30, i5 / 20);
        }
        button.setGravity(17);
        button.setLayoutParams(layoutParams);
        button.setOnTouchListener(new g(button));
        linearLayout2.addView(button);
        int i6 = 0;
        if (this.f33477w.getText().toString().equals("分类")) {
            button.setBackgroundResource(R.drawable.classify_all_pressed);
            button.setTextColor(this.f33468n);
            z3 = true;
        } else {
            button.setBackgroundResource(R.drawable.classify_all_normal);
            button.setTextColor(this.f33467m);
            z3 = false;
        }
        MyRadioGroup myRadioGroup = new MyRadioGroup(this.f33455a);
        myRadioGroup.setOrientation(1);
        RadioGroup.LayoutParams layoutParams2 = new RadioGroup.LayoutParams(-1, -2);
        myRadioGroup.setLayoutParams(layoutParams2);
        layoutParams2.setMargins(0, 0, 0, this.f33466l / 20);
        int i7 = this.f33466l;
        if (i7 > 960) {
            myRadioGroup.setPadding(i7 / 15, 0, i7 / 15, 0);
        } else {
            myRadioGroup.setPadding(i7 / 30, 0, i7 / 30, 0);
        }
        myRadioGroup.setGravity(17);
        RadioGroup.LayoutParams layoutParams3 = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        if (this.f33466l >= 960) {
            layoutParams3.setMargins(0, 0, 28, 0);
        }
        RadioGroup.LayoutParams layoutParams4 = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        if (this.f33466l >= 960) {
            layoutParams4.setMargins(14, 0, 14, 0);
        }
        RadioGroup.LayoutParams layoutParams5 = new RadioGroup.LayoutParams(-1, -2, 1.0f);
        if (this.f33466l >= 960) {
            layoutParams5.setMargins(28, 0, 0, 0);
        }
        int i8 = 0;
        while (i8 < (this.f33462h.size() + 2) / 3) {
            LinearLayout linearLayout4 = new LinearLayout(this.f33455a);
            linearLayout4.setLayoutParams(new RadioGroup.LayoutParams(i2, i4));
            linearLayout4.setOrientation(i6);
            RadioButton radioButton = new RadioButton(this.f33455a);
            int i9 = i8 * 3;
            if (i9 < this.f33462h.size()) {
                CategorySimpleBean categorySimpleBean = this.f33462h.get(i9);
                radioButton.setButtonDrawable(new ColorDrawable(i6));
                radioButton.setGravity(17);
                radioButton.setTextColor(this.f33467m);
                radioButton.setBackgroundResource(R.drawable.classify_bg_selector);
                if (!z3) {
                    if (categorySimpleBean.getTitle().equals(this.f33477w.getText())) {
                        radioButton.setChecked(true);
                        radioButton.setTextColor(this.f33468n);
                    } else {
                        radioButton.setChecked(false);
                        radioButton.setTextColor(this.f33467m);
                    }
                }
                radioButton.setText(categorySimpleBean.getTitle());
                radioButton.setTextSize(this.C);
                radioButton.setOnCheckedChangeListener(new h(radioButton, categorySimpleBean));
            }
            RadioButton radioButton2 = new RadioButton(this.f33455a);
            radioButton2.setGravity(17);
            radioButton2.setTextColor(this.f33467m);
            radioButton2.setButtonDrawable(new ColorDrawable(0));
            radioButton2.setBackgroundResource(R.drawable.classify_bg_selector);
            radioButton2.setTextSize(this.C);
            int i10 = i9 + 1;
            LinearLayout linearLayout5 = linearLayout3;
            LinearLayout linearLayout6 = linearLayout;
            if (i10 < this.f33462h.size()) {
                radioButton2.setVisibility(0);
                CategorySimpleBean categorySimpleBean2 = this.f33462h.get(i10);
                if (!z3) {
                    if (categorySimpleBean2.getTitle().equals(this.f33477w.getText())) {
                        radioButton2.setChecked(true);
                        radioButton2.setTextColor(this.f33468n);
                    } else {
                        radioButton2.setChecked(false);
                        radioButton2.setTextColor(this.f33467m);
                    }
                }
                radioButton2.setOnCheckedChangeListener(new i(radioButton2, categorySimpleBean2));
                radioButton2.setText(categorySimpleBean2.getTitle());
            } else {
                radioButton2.setVisibility(4);
                radioButton2.setText("");
            }
            RadioButton radioButton3 = new RadioButton(this.f33455a);
            radioButton3.setGravity(17);
            radioButton3.setTextColor(this.f33467m);
            radioButton3.setButtonDrawable(new ColorDrawable(0));
            radioButton3.setBackgroundResource(R.drawable.classify_bg_selector);
            radioButton3.setTextSize(this.C);
            int i11 = i9 + 2;
            if (i11 < this.f33462h.size()) {
                radioButton3.setVisibility(0);
                CategorySimpleBean categorySimpleBean3 = this.f33462h.get(i11);
                if (!z3) {
                    if (categorySimpleBean3.getTitle().equals(this.f33477w.getText())) {
                        radioButton3.setChecked(true);
                        radioButton3.setTextColor(this.f33468n);
                    } else {
                        radioButton3.setChecked(false);
                        radioButton3.setTextColor(this.f33467m);
                    }
                }
                radioButton3.setOnCheckedChangeListener(new j(radioButton3, categorySimpleBean3));
                radioButton3.setText(categorySimpleBean3.getTitle());
            } else {
                radioButton3.setText("");
                radioButton3.setVisibility(4);
            }
            linearLayout4.addView(radioButton, layoutParams3);
            linearLayout4.addView(radioButton2, layoutParams4);
            linearLayout4.addView(radioButton3, layoutParams5);
            linearLayout4.setPadding(0, 0, 0, this.f33466l / 40);
            myRadioGroup.addView(linearLayout4);
            i8++;
            linearLayout3 = linearLayout5;
            linearLayout = linearLayout6;
            i2 = -1;
            i4 = -2;
            i6 = 0;
        }
        LinearLayout linearLayout7 = linearLayout;
        LinearLayout linearLayout8 = linearLayout3;
        if (this.f33462h.size() > 0) {
            linearLayout2.addView(myRadioGroup);
        }
        PopupWindow popupWindow = new PopupWindow(linearLayout7, this.f33466l, -1);
        this.f33463i = popupWindow;
        popupWindow.setFocusable(true);
        this.f33463i.setOutsideTouchable(true);
        this.f33463i.setBackgroundDrawable(new BitmapDrawable());
        this.A.getLocationOnScreen(new int[2]);
        linearLayout7.setVisibility(0);
        this.f33463i.showAsDropDown(this.A);
        linearLayout8.setOnClickListener(new a());
        this.f33463i.setOnDismissListener(new k(linearLayout7));
    }

    void j0() {
        this.A.setVisibility(8);
        this.f33480z.setVisibility(8);
        this.f33477w.setVisibility(8);
        this.f33478x.setVisibility(0);
        this.f33479y.setVisibility(0);
        this.E.callbackDownloadCenterVisible(null);
        this.G = this.A.getText().toString();
        GameType[] values = GameType.values();
        int i2 = 0;
        while (true) {
            if (i2 >= values.length) {
                break;
            } else if (this.G.equals(values[i2].titleAbbr())) {
                this.G = values[i2].title();
                break;
            } else {
                i2++;
            }
        }
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -1);
        ScrollView scrollView = new ScrollView(this.f33455a);
        scrollView.setLayoutParams(layoutParams);
        scrollView.setBackgroundColor(-1);
        RadioGroup radioGroup = new RadioGroup(this.f33455a);
        radioGroup.setOrientation(1);
        radioGroup.setLayoutParams(new RadioGroup.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams));
        int i4 = 0;
        for (int i5 = 0; i5 < values.length; i5++) {
            String id = values[i5].id();
            String title = values[i5].title();
            int resId = values[i5].resId();
            RadioButton radioButton = new RadioButton(this.f33455a);
            radioButton.setLayoutParams(new RadioGroup.LayoutParams((ViewGroup.MarginLayoutParams) new RadioGroup.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.exclusive_tag_height))));
            radioButton.setText("    " + title);
            radioButton.setTag(id);
            if (this.G.equals(title)) {
                radioButton.setTextColor(-756480);
                i4 = i5;
            } else {
                radioButton.setTextColor(-12829636);
            }
            radioButton.setTextColor(-12829636);
            if (this.f33466l == 480) {
                radioButton.setTextSize(14.0f);
            } else {
                radioButton.setTextSize(16.0f);
            }
            int i6 = this.f33466l;
            radioButton.setPadding(i6 / 20, i6 / 35, i6 / 16, i6 / 35);
            radioButton.setButtonDrawable(new ColorDrawable(AsyncImageView.DEFAULT_TRANSPARENT));
            Drawable drawable = getResources().getDrawable(resId);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            Drawable drawable2 = getResources().getDrawable(R.drawable.classify_choice_selector);
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            radioButton.setCompoundDrawables(drawable, null, drawable2, null);
            radioButton.setCompoundDrawablePadding(10);
            radioButton.setGravity(19);
            radioButton.setOnCheckedChangeListener(new d(radioButton, id));
            radioButton.setOnClickListener(new e());
            radioGroup.addView(radioButton);
            RadioGroup.LayoutParams layoutParams2 = new RadioGroup.LayoutParams(-1, 1);
            View view = new View(this.f33455a);
            view.setBackgroundColor(-1184275);
            view.setLayoutParams(layoutParams2);
            radioGroup.addView(view);
        }
        ((RadioButton) radioGroup.getChildAt(i4 * 2)).setChecked(true);
        scrollView.addView(radioGroup);
        PopupWindow popupWindow = new PopupWindow(scrollView, ((WindowManager) this.f33455a.getSystemService("window")).getDefaultDisplay().getWidth(), -1);
        this.f33464j = popupWindow;
        popupWindow.setFocusable(true);
        this.f33464j.setOutsideTouchable(false);
        this.f33464j.setBackgroundDrawable(new BitmapDrawable());
        this.A.getLocationOnScreen(this.F);
        scrollView.setVisibility(0);
        this.f33464j.showAsDropDown(this.A);
        this.f33464j.setOnDismissListener(new f());
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.E = (MGMainActivity) getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        try {
            if (!this.D.isFirstClickClassify().d().booleanValue() || this.D.isReloadClassify().d().booleanValue() || this.f33461g.size() <= 0 || isHidden()) {
                return;
            }
            this.E.callbackClassifyTipsVisible(null);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        g0();
        V();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f33455a);
    }

    @Override // com.join.mgps.pref.b
    public void v(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("GameType");
            String string2 = bundle.getString("RomType");
            if (string == null || string2 == null) {
                return;
            }
            this.f33477w.setText("分类");
            this.f33477w.setTextOn("分类");
            this.f33477w.setTextOff("分类");
            c0("筛选");
            this.f33456b.n0(string, string2);
            this.f33457c.n0(string, string2);
            this.f33458d.n0(string, string2);
        }
    }
}
