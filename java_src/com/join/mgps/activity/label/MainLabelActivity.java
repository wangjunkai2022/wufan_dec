package com.join.mgps.activity.label;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.t0;
import com.join.mgps.activity.label.MainLabelActivity;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.ForumBaseHeaderView;
import com.join.mgps.customview.MainLabelHeaderView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.dto.EmptyMessage;
import com.join.mgps.dto.MainLabelBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.fragment.c3;
import com.join.mgps.fragment.d3;
import com.join.mgps.fragment.u0;
import com.join.mgps.fragment.y;
import com.join.mgps.fragment.z;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import ru.noties.scrollable.ScrollableLayout;
import ru.noties.scrollable.j;
import ru.noties.scrollable.k;
@EActivity(R.layout.activity_main_label)
/* loaded from: classes3.dex */
public class MainLabelActivity extends BaseAppCompatActivity {
    public static final int F = 1;
    public static final int G = 2;
    d3[] A;
    x C;
    y D;
    @ViewById
    LinearLayout E;

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.h f37560a;
    @Bean

    /* renamed from: b  reason: collision with root package name */
    com.join.mgps.Util.b f37561b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f37562c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f37563d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    int f37564e;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    String f37565f;
    @Extra

    /* renamed from: g  reason: collision with root package name */
    int f37566g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    int f37567h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    String f37568i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    Button f37569j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f37570k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    Button f37571l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    SlidingTabLayout4 f37572m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ScrollableLayout f37573n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    ViewPager f37574o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    RelativeLayout f37575p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    RelativeLayout f37576q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    RelativeLayout f37577r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    MainLabelHeaderView f37578s;

    /* renamed from: t  reason: collision with root package name */
    private int f37579t;

    /* renamed from: u  reason: collision with root package name */
    private h f37580u;

    /* renamed from: w  reason: collision with root package name */
    int f37582w;

    /* renamed from: x  reason: collision with root package name */
    private MainLabelBean f37583x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ImageView f37584y;

    /* renamed from: z  reason: collision with root package name */
    FragmentManager f37585z;

    /* renamed from: v  reason: collision with root package name */
    private String f37581v = "";
    List<MainLabelBean.TagType> B = new ArrayList();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity mainLabelActivity = MainLabelActivity.this;
            d3 d3Var = mainLabelActivity.A[mainLabelActivity.f37574o.getCurrentItem()];
            boolean V = d3Var.V();
            if (V) {
                MainLabelActivity.this.f37578s.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_close);
                d3Var.i0("");
            } else {
                MainLabelActivity.this.f37578s.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_open);
                d3Var.i0(MainLabelActivity.this.f37567h + "");
            }
            d3Var.m0(!V);
        }
    }

    /* loaded from: classes3.dex */
    class b implements ForumBaseHeaderView.a {
        b() {
        }

        @Override // com.join.mgps.customview.ForumBaseHeaderView.a
        public void g(int i2) {
            ScrollableLayout scrollableLayout = MainLabelActivity.this.f37573n;
            if (scrollableLayout != null) {
                scrollableLayout.setMaxScrollY(i2);
                ViewGroup.LayoutParams layoutParams = MainLabelActivity.this.f37574o.getLayoutParams();
                layoutParams.width = -1;
                int measuredHeight = MainLabelActivity.this.f37575p.getMeasuredHeight() - MainLabelActivity.this.f37576q.getMeasuredHeight();
                if (MainLabelActivity.this.E.getVisibility() == 0) {
                    measuredHeight -= MainLabelActivity.this.E.getMeasuredHeight();
                }
                layoutParams.height = measuredHeight;
                MainLabelActivity.this.f37574o.setLayoutParams(layoutParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ViewPager.OnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (MainLabelActivity.this.A[i2].V()) {
                MainLabelActivity.this.f37578s.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_open);
            } else {
                MainLabelActivity.this.f37578s.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_close);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements ViewPager.OnPageChangeListener {
        d() {
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
                MainLabelActivity mainLabelActivity = MainLabelActivity.this;
                x xVar = mainLabelActivity.C;
                Fragment item = xVar != null ? xVar.getItem(mainLabelActivity.f37579t) : null;
                if (item != null) {
                    item.onPause();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            MainLabelActivity.this.f37579t = i2;
            MainLabelActivity.this.Q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements ru.noties.scrollable.b {
        e() {
        }

        @Override // ru.noties.scrollable.b
        public boolean o(int i2) {
            u0 I0 = MainLabelActivity.this.I0();
            return I0 != null && I0.o(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements j {
        f() {
        }

        @Override // ru.noties.scrollable.j
        public void x(int i2, long j4) {
            u0 I0 = MainLabelActivity.this.I0();
            if (I0 != null) {
                I0.x(i2, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements k {
        g() {
        }

        @Override // ru.noties.scrollable.k
        public void a(int i2, int i4, int i5) {
            try {
                MainLabelActivity mainLabelActivity = MainLabelActivity.this;
                ((c3) mainLabelActivity.C.getItem(mainLabelActivity.f37579t)).O();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    private List<x.a> O0(List<MainLabelBean.TagType> list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new x.a(list.get(i2).getType_name(), P0(i2)));
        }
        return arrayList;
    }

    private Fragment P0(int i2) {
        d3 d3Var = this.A[i2];
        if (d3Var != null) {
            return d3Var;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("tag_id", this.f37564e);
        bundle.putString("tag_name", this.f37565f);
        bundle.putInt("position", i2);
        bundle.putString("fid", "" + this.f37567h);
        bundle.putInt("type", this.B.get(i2).getType_id());
        d3 d3Var2 = new d3();
        d3Var2.setArguments(bundle);
        this.A[i2] = d3Var2;
        return d3Var2;
    }

    private void getData() {
        if (com.join.android.app.common.utils.f.j(this)) {
            U0();
            K0();
            return;
        }
        T0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F0(int i2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                com.join.mgps.rpc.h hVar = this.f37560a;
                String uid = this.f37561b.getUid();
                ResultResMainBean<EmptyMessage> n02 = hVar.n0(uid, "" + this.f37564e, i2, this.f37565f);
                if (n02.getError() == 0) {
                    boolean z3 = true;
                    showToast(i2 == 1 ? "关注成功!" : "取消关注成功!");
                    if (i2 != 1) {
                        z3 = false;
                    }
                    X0(z3);
                } else {
                    showToast(n02.getData().getMsg());
                }
                return;
            } catch (Exception unused) {
                showToast("网络异常！");
                return;
            }
        }
        showToast("当前网络不可用！");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            S0();
        } else {
            F0(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void H0() {
        if (this.f37583x != null && this.B.size() > 0) {
            MainLabelBean mainLabelBean = this.f37583x;
            String forum_name = mainLabelBean != null ? mainLabelBean.getForum_name() : "";
            if (TextUtils.isEmpty(this.f37568i)) {
                forum_name = this.f37568i;
            }
            PostingActivity_.v b4 = PostingActivity_.U1(this).e(this.f37583x.getTag_name()).b(100);
            PostingActivity_.v h4 = b4.h(this.f37564e + "");
            h4.i(this.f37565f + "").g(getType()).f(forum_name).a(this.f37567h).startForResult(PostingActivity.C0);
        }
    }

    u0 I0() {
        y yVar = this.D;
        if (yVar != null) {
            return yVar.a();
        }
        return null;
    }

    public int J0() {
        ViewPager viewPager = this.f37574o;
        if (viewPager != null) {
            return viewPager.getCurrentItem();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        try {
            ResultResMainBean<MainLabelBean> p3 = this.f37560a.p(this.f37561b.getUid(), this.f37564e, this.f37567h, this.f37565f);
            if (p3.getError() == 0) {
                Y0(p3.getData());
                L0();
            } else {
                T0();
            }
        } catch (Exception e4) {
            t0.b("MainLabel", "getMainLabelInfo Exception:" + e4.getMessage());
            T0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f37575p.setVisibility(0);
        this.f37563d.setVisibility(8);
        this.f37562c.setVisibility(8);
    }

    void M0(MainLabelBean mainLabelBean) {
        List<MainLabelBean.TagType> tag_type = mainLabelBean.getTag_type();
        this.B.clear();
        this.B.addAll(tag_type);
        int size = this.B.size();
        this.f37578s.setRlOrderByVisibility(size <= 1);
        this.A = new d3[size];
        x xVar = new x(getSupportFragmentManager());
        this.C = xVar;
        xVar.d(O0(tag_type));
        this.f37574o.setAdapter(this.C);
        this.f37574o.setOffscreenPageLimit(this.C.getCount());
        this.f37574o.addOnPageChangeListener(new c());
        this.f37572m.setViewPager(this.f37574o);
        this.f37572m.setOnPageChangeListener(new d());
        this.f37572m.g();
        this.C.notifyDataSetChanged();
        this.f37573n.setDraggableView(this.f37578s);
        if (size <= 1) {
            this.E.setVisibility(8);
            this.f37573n.removeView(this.E);
        } else {
            this.E.setVisibility(0);
            if (this.C.getCount() <= 4) {
                this.f37572m.setShouldExpand(true);
            } else {
                this.f37572m.setShouldExpand(false);
            }
        }
        this.D = new z(this.f37574o, getSupportFragmentManager());
        this.f37573n.setCanScrollVerticallyDelegate(new e());
        this.f37573n.setOnFlingOverListener(new f());
        this.f37573n.invalidate();
        this.f37573n.w(new g());
    }

    boolean N0() {
        if (isFinishing()) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 17 && isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void Q0() {
        ((c3) this.C.getItem(this.f37579t)).O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void R0() {
        showSort(this.f37577r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S0() {
        a0.c0(this).m(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
        this.f37575p.setVisibility(8);
        this.f37563d.setVisibility(8);
        this.f37562c.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        try {
            this.f37575p.setVisibility(8);
            this.f37563d.setVisibility(0);
            this.f37562c.setVisibility(8);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void V0(String str) {
        this.f37581v = str;
        this.A[this.f37574o.getCurrentItem()].j0(str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void W0() {
        F0(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0(boolean z3) {
        if (z3) {
            this.f37569j.setVisibility(8);
            this.f37570k.setVisibility(0);
            this.f37570k.setSelected(true);
        } else {
            this.f37570k.setVisibility(8);
            this.f37569j.setVisibility(0);
        }
        if ((this.f37582w == 1) != z3) {
            com.join.mgps.pref.h.n(this).o0(true);
        } else {
            com.join.mgps.pref.h.n(this).o0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0(MainLabelBean mainLabelBean) {
        if (!com.join.mgps.pref.h.n(this).A() && this.f37583x != null && mainLabelBean.getIs_follow() != mainLabelBean.getIs_follow()) {
            com.join.mgps.pref.h.n(this).o0(true);
        } else {
            this.f37582w = mainLabelBean.getIs_follow();
        }
        this.f37583x = mainLabelBean;
        if (this.f37564e == 0) {
            this.f37564e = mainLabelBean.getTag_id();
        }
        this.f37578s.setViewData(mainLabelBean);
        if (mainLabelBean.is_allow()) {
            this.f37571l.setVisibility(0);
            this.f37584y.setVisibility(8);
        } else {
            this.f37584y.setVisibility(0);
            this.f37571l.setVisibility(8);
        }
        X0(mainLabelBean.getIs_follow() == 1);
        M0(mainLabelBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f37560a = com.join.mgps.rpc.impl.f.A0();
        if (this.f37567h <= 0) {
            this.f37566g = 1;
        }
        this.f37585z = getSupportFragmentManager();
        this.f37578s.setOnClickListener(new a());
        this.f37578s.setFilterVisibility(this.f37566g == 2, this.f37568i);
        this.f37573n.setFriction(0.09f);
        this.f37573n.setAutoMaxScroll(false);
        this.f37578s.setmOnMeasureHeight(new b());
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    int getType() {
        if (this.B.size() <= 1) {
            return this.B.get(0).getType_id();
        }
        return this.B.get(this.f37574o.getCurrentItem()).getType_id();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i2 == 17476 && i4 == -1 && com.join.android.app.common.utils.f.j(this)) {
            d3[] d3VarArr = this.A;
            if (d3VarArr != null && d3VarArr.length > 0) {
                this.f37581v = "new";
                d3VarArr[this.f37574o.getCurrentItem()].j0(this.f37581v, true);
                return;
            }
            getData();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        c3 c3Var;
        try {
            x xVar = this.C;
            if (xVar != null) {
                int count = xVar.getCount();
                int i2 = this.f37579t;
                if (count >= i2 && (c3Var = (c3) this.C.getItem(i2)) != null) {
                    if (c3Var.onBackPressedMy()) {
                        return;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        h hVar = this.f37580u;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    public void showSort(View view) {
        h hVar = this.f37580u;
        if (hVar != null && hVar.isShowing()) {
            this.f37580u.dismiss();
        }
        int applyDimension = (int) TypedValue.applyDimension(1, 126.0f, getResources().getDisplayMetrics());
        if (this.f37580u == null) {
            h hVar2 = new h(this, -2, -2);
            this.f37580u = hVar2;
            hVar2.setWidth(applyDimension);
        }
        h hVar3 = this.f37580u;
        if (hVar3 != null && hVar3.getContentView() != null) {
            this.f37580u.getContentView().measure(0, 0);
            applyDimension = this.f37580u.getContentView().getMeasuredWidth();
            this.f37580u.setHeight(this.f37580u.getContentView().getMeasuredHeight());
        }
        this.f37580u.showAsDropDown(view, (view.getMeasuredWidth() - applyDimension) - getResources().getDimensionPixelOffset(R.dimen.dp17), 0);
        this.f37580u.e(this.f37581v);
        this.f37580u.getContentView().invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        if (N0()) {
            return;
        }
        i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends PopupWindow {

        /* renamed from: a  reason: collision with root package name */
        private Context f37593a;

        /* renamed from: b  reason: collision with root package name */
        String f37594b;

        /* renamed from: c  reason: collision with root package name */
        RadioGroup f37595c;

        /* renamed from: d  reason: collision with root package name */
        RadioButton f37596d;

        /* renamed from: e  reason: collision with root package name */
        RadioButton f37597e;

        /* renamed from: f  reason: collision with root package name */
        RadioButton f37598f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 4) {
                    h.this.dismiss();
                    return true;
                }
                return false;
            }
        }

        public h(Context context) {
            super(context);
            this.f37593a = context;
            c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(RadioGroup radioGroup, int i2) {
            if (i2 == R.id.radioButton_mostReply) {
                MainLabelActivity.this.V0("");
            } else if (i2 == R.id.radioButton_new) {
                MainLabelActivity.this.V0("new");
            } else if (i2 == R.id.radioButton_hot) {
                MainLabelActivity.this.V0("hot");
            }
            dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(String str) {
            this.f37594b = str;
            if (str.equals("new")) {
                this.f37595c.check(R.id.radioButton_new);
            } else if (this.f37594b.equals("hot")) {
                this.f37595c.check(R.id.radioButton_hot);
            } else {
                this.f37595c.check(R.id.radioButton_mostReply);
            }
        }

        private void f() {
            setBackgroundDrawable(new BitmapDrawable());
            setFocusable(true);
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new a());
        }

        void c() {
            View inflate = LayoutInflater.from(this.f37593a).inflate(R.layout.pop_lable_list_sort, (ViewGroup) null);
            inflate.setLayoutParams(new ViewGroup.LayoutParams((int) TypedValue.applyDimension(1, 126.0f, this.f37593a.getResources().getDisplayMetrics()), -2));
            setContentView(inflate);
            setWidth((int) TypedValue.applyDimension(1, 126.0f, this.f37593a.getResources().getDisplayMetrics()));
            setHeight(-2);
            f();
            RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.rgSort);
            this.f37595c = radioGroup;
            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.join.mgps.activity.label.a
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public final void onCheckedChanged(RadioGroup radioGroup2, int i2) {
                    MainLabelActivity.h.this.d(radioGroup2, i2);
                }
            });
        }

        public h(Context context, int i2, int i4) {
            super(i2, i4);
            this.f37593a = context;
            c();
        }
    }
}
