package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.SlidingTabLayoutNoViewPager;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dialog.u;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.ClassifyGameTagBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_classify_game)
/* loaded from: classes.dex */
public class ClassifyGameActivity extends BaseAppCompatActivity implements View.OnClickListener, u.a {

    /* renamed from: n0  reason: collision with root package name */
    private static final String f28579n0 = ClassifyGameActivity.class.getSimpleName();
    com.join.mgps.activity.f C;
    ClassifyGameTagBean D;
    private com.join.mgps.dialog.u E;
    private FlowLayout F;
    private FlowLayout G;
    private Button H;
    private LinearLayout I;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f28580a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SwipeRefresh f28581b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    AppBarLayout f28582c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    Toolbar f28583d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    SlidingTabLayoutNoViewPager f28584e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    SlidingTabLayoutNoViewPager f28585f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    SlidingTabLayoutNoViewPager f28586g;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: h  reason: collision with root package name */
    CustomerDownloadView f28587h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f28588i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    FrameLayout f28589j;

    /* renamed from: k  reason: collision with root package name */
    List<ClassifyGameTagBean> f28590k;

    /* renamed from: q  reason: collision with root package name */
    private Context f28596q;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.rpc.d f28597r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f28598s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f28599t;
    @Extra

    /* renamed from: u  reason: collision with root package name */
    int f28600u;
    @Extra

    /* renamed from: v  reason: collision with root package name */
    int f28601v;
    @Extra

    /* renamed from: w  reason: collision with root package name */
    String f28602w;
    @Extra

    /* renamed from: x  reason: collision with root package name */
    String f28603x;

    /* renamed from: y  reason: collision with root package name */
    protected LoadingLayout f28604y;

    /* renamed from: l  reason: collision with root package name */
    private ArrayList<Fragment> f28591l = new ArrayList<>();

    /* renamed from: m  reason: collision with root package name */
    private List<String> f28592m = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    private List<String> f28593n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    Map<String, DownloadTask> f28594o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    Map<String, DownloadTask> f28595p = new HashMap();

    /* renamed from: z  reason: collision with root package name */
    private int f28605z = 0;
    List<ClassifyGameTagBean> A = new ArrayList();
    List<ClassifyGameTagBean> B = new ArrayList();
    private int J = 0;
    private String K = "default";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements SwipeRefresh.j {
        a() {
        }

        @Override // com.join.mgps.customview.swiperefresh.SwipeRefresh.j
        public void onRefresh() {
            com.join.mgps.activity.f fVar = ClassifyGameActivity.this.C;
            if (fVar != null) {
                fVar.h0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements w0.b {
        b() {
        }

        @Override // w0.b
        public void onTabReselect(int i2) {
        }

        @Override // w0.b
        public void onTabSelect(int i2) {
            if (i2 == 1) {
                ClassifyGameActivity.this.K = "time";
            } else if (i2 == 2) {
                ClassifyGameActivity.this.K = "score";
            } else {
                ClassifyGameActivity.this.K = "default";
            }
            ClassifyGameActivity.this.O0(null);
            ClassifyGameActivity.this.S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements AppBarLayout.OnOffsetChangedListener {
        c() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            ClassifyGameActivity.this.f28583d.setAlpha(Math.abs(i2 * 1.0f) / appBarLayout.getTotalScrollRange());
            if (Math.abs(i2) > ClassifyGameActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp75)) {
                ClassifyGameActivity.this.f28583d.setVisibility(0);
            } else {
                ClassifyGameActivity.this.f28583d.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements w0.b {
        d() {
        }

        @Override // w0.b
        public void onTabReselect(int i2) {
        }

        @Override // w0.b
        public void onTabSelect(int i2) {
            ClassifyGameActivity.this.S0();
            if (ClassifyGameActivity.this.A.size() >= i2) {
                ClassifyGameActivity classifyGameActivity = ClassifyGameActivity.this;
                classifyGameActivity.f28601v = classifyGameActivity.A.get(i2).getId();
            }
            ClassifyGameActivity.this.O0(null);
            ClassifyGameActivity classifyGameActivity2 = ClassifyGameActivity.this;
            classifyGameActivity2.f28598s.setText((CharSequence) classifyGameActivity2.f28592m.get(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements w0.b {
        e() {
        }

        @Override // w0.b
        public void onTabReselect(int i2) {
        }

        @Override // w0.b
        public void onTabSelect(int i2) {
            ClassifyGameActivity.this.S0();
            if (ClassifyGameActivity.this.B.size() >= i2) {
                ClassifyGameActivity classifyGameActivity = ClassifyGameActivity.this;
                classifyGameActivity.f28600u = classifyGameActivity.B.get(i2).getId();
            }
            ClassifyGameActivity.this.O0(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = ClassifyGameActivity.this.f28604y;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = ClassifyGameActivity.this.f28604y;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = ClassifyGameActivity.this.f28604y;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    private void I0() {
        this.E.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void F0() {
        String str = this.f28603x;
        if (str == null || str.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < this.f28592m.size() && !this.f28603x.equals(this.f28592m.get(i2)); i2++) {
        }
    }

    public String G0() {
        return this.K;
    }

    protected void H0() {
        new Handler(Looper.getMainLooper()).post(new h());
    }

    @Background
    public void J0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                com.join.mgps.rpc.d dVar = this.f28597r;
                RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
                int i2 = this.f28600u;
                int i4 = i2 == 0 ? 1 : 2;
                int i5 = this.f28601v;
                if (i5 != 0) {
                    i2 = i5;
                }
                ResultMainBean<ClassfyTypeBean> M0 = dVar.M0(requestBeanUtil.getClassifyGameBean(i4, i2));
                if (M0 != null && M0.getFlag() == 1 && M0.getMessages() != null) {
                    ClassfyTypeBean data = M0.getMessages().getData();
                    if (data != null) {
                        ClassifyGameTagBean classifyGameTagBean = new ClassifyGameTagBean();
                        classifyGameTagBean.setId(0);
                        classifyGameTagBean.setTitle(LocalGameActivity.f32927r);
                        this.A.addAll(data.getGame_type());
                        this.B.add(classifyGameTagBean);
                        this.B.addAll(data.getSimulator_type());
                        for (ClassifyGameTagBean classifyGameTagBean2 : this.A) {
                            this.f28592m.add(classifyGameTagBean2.getTitle());
                        }
                        for (ClassifyGameTagBean classifyGameTagBean3 : this.B) {
                            this.f28593n.add(classifyGameTagBean3.getTitle());
                        }
                        if (this.f28592m.size() > 0) {
                            O0(null);
                            K0();
                            F0();
                            return;
                        }
                        R0();
                        return;
                    }
                    P0();
                    return;
                }
                P0();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                P0();
                return;
            }
        }
        P0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void K0() {
        this.f28580a.setVisibility(8);
        this.f28589j.setVisibility(0);
        H0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f28582c.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() == (-this.f28582c.getTotalScrollRange())) {
                behavior2.setTopAndBottomOffset(0);
                this.f28583d.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void M0() {
        finish();
    }

    public void N0(boolean z3) {
        if (!z3) {
            this.f28581b.setRefreshing(false);
        } else {
            this.f28581b.setRefreshing(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0(ClassifyGameTagBean classifyGameTagBean) {
        try {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            this.D = classifyGameTagBean;
            com.join.mgps.activity.f fVar = this.C;
            String str = "10001";
            if (fVar == null) {
                if (classifyGameTagBean == null) {
                    SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager = this.f28585f;
                    List<String> list = this.f28592m;
                    slidingTabLayoutNoViewPager.setmTitles((String[]) list.toArray(new String[list.size()]));
                    for (int i2 = 0; i2 < this.A.size(); i2++) {
                        if (this.A.get(i2).getId() == this.f28601v) {
                            V0(this.f28585f, i2);
                        }
                    }
                    this.f28585f.setOnTabSelectListener(new d());
                    SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager2 = this.f28586g;
                    List<String> list2 = this.f28593n;
                    slidingTabLayoutNoViewPager2.setmTitles((String[]) list2.toArray(new String[list2.size()]));
                    for (int i4 = 0; i4 < this.B.size(); i4++) {
                        if (this.B.get(i4).getId() == this.f28600u) {
                            V0(this.f28586g, i4);
                        }
                    }
                    this.f28586g.setOnTabSelectListener(new e());
                    String str2 = this.f28600u == 0 ? "" : this.f28600u + "";
                    if (this.f28601v != 0) {
                        str = this.f28601v + "";
                    }
                    this.C = com.join.mgps.activity.f.V(str2, str);
                } else {
                    String str3 = this.f28600u == 0 ? "" : this.f28600u + "";
                    if (this.f28601v != 0) {
                        str = this.f28601v + "";
                    }
                    this.C = com.join.mgps.activity.f.V(str3, str);
                }
                beginTransaction.add(R.id.mViewpagerV4, this.C);
                beginTransaction.commit();
            } else if (classifyGameTagBean == null) {
                String str4 = this.f28600u == 0 ? "" : this.f28600u + "";
                if (this.f28601v != 0) {
                    str = this.f28601v + "";
                }
                fVar.n0(str4, str);
            } else {
                String str5 = this.f28600u == 0 ? "" : this.f28600u + "";
                if (this.f28601v != 0) {
                    str = this.f28601v + "";
                }
                fVar.n0(str5, str);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        S0();
    }

    protected void P0() {
        new Handler(Looper.getMainLooper()).post(new f());
    }

    protected void Q0() {
        new Handler(Looper.getMainLooper()).post(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0() {
        this.f28580a.setVisibility(0);
        this.f28589j.setVisibility(8);
        H0();
    }

    public void S0() {
        TextView textView = this.f28599t;
        textView.setText(this.f28584e.getSelectTabName() + " · " + this.f28585f.getSelectTabName() + " · " + this.f28586g.getSelectTabName());
        TextView textView2 = this.f28598s;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f28585f.getSelectTabName());
        sb.append(com.join.mgps.Util.g0.f27568a);
        sb.append(this.f28586g.getSelectTabName());
        textView2.setText(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        SearchHintActivity_.S1(this.f28596q).start();
        com.papa.sim.statistic.p.l(this.f28596q).m2(Where.classGame, AccountUtil_.getInstance_(this.f28596q).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void V0(SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager, int i2) {
        slidingTabLayoutNoViewPager.setItemSelected(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f28597r = com.join.mgps.rpc.impl.c.P1();
        this.f28596q = this;
        this.f28604y = (LoadingLayout) findViewById(R.id.mLoadingLayout);
        getDownloadTaskInfo();
        org.greenrobot.eventbus.c.f().t(this);
        this.f28587h.setVisibility(0);
        this.f28588i.setVisibility(0);
        this.f28598s.setText(this.f28602w);
        this.f28605z = ((WindowManager) this.f28596q.getSystemService("window")).getDefaultDisplay().getWidth();
        J0();
        this.f28581b.setOnRefreshListener(new a());
        ArrayList arrayList = new ArrayList();
        List<ClassifyGameTagBean> list = this.f28590k;
        if (list != null) {
            for (ClassifyGameTagBean classifyGameTagBean : list) {
                arrayList.add(classifyGameTagBean.getName());
            }
        } else {
            this.f28590k = new ArrayList();
        }
        this.f28584e.setmTitles(new String[]{"综合", "最新", "评分"});
        this.f28584e.setOnTabSelectListener(new b());
        this.f28582c.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28594o
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28594o
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28595p
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28595p
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28594o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28594o
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28594o
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28594o
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f28595p
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28594o
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28594o
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28595p
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f28595p
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ClassifyGameActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f28594o.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f28595p.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.join.mgps.dialog.u.a
    public void l0() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.dialog.u uVar = this.E;
        if (uVar != null) {
            uVar.dismiss();
        }
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        changeDownloadTaskNumber(lVar.a(), lVar.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f28594o.size();
        int size2 = this.f28595p.size();
        this.f28587h.setDownloadGameNum(size);
        StringBuilder sb = new StringBuilder();
        sb.append("updateDownloadView: ");
        sb.append(size2);
        sb.append("::::已经进入下载队列中的数量:::");
        sb.append(size);
        if (size2 > 0) {
            this.f28587h.d();
        } else {
            this.f28587h.g();
        }
    }
}
