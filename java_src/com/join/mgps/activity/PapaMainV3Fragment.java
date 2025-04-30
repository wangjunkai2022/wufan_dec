package com.join.mgps.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.presenter.HomeViewModle;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.adapter.t4;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PAPAItemTitle2;
import com.join.mgps.dto.PapaHomeCheckNewDataBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestOnlineCouponArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.psk.eventmodule.Event;
import com.psk.eventmodule.StatFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
@EFragment(R.layout.mgpapa_mainfragment_new_layout_v3)
/* loaded from: classes.dex */
public class PapaMainV3Fragment extends o0.a implements View.OnClickListener {

    /* renamed from: g1  reason: collision with root package name */
    private static final String f34751g1 = "MGPapaMainFragmentNewV2";
    private t4 A;
    private int A0;
    private List<MgpapaMainItemBean> B;
    private boolean B0;
    private int C;
    private int C0;
    private int D;
    private boolean D0;
    private long E;
    private boolean E0;
    private long F0;
    private boolean G0;
    @ViewById
    PtrClassicFrameLayout H;
    private boolean H0;
    @ViewById
    View I;
    com.join.mgps.customview.t M0;
    private int P0;
    private int Q0;
    private RecomDatabean R0;
    private RecomDatabean S0;

    /* renamed from: a1  reason: collision with root package name */
    private long f34752a1;

    /* renamed from: b1  reason: collision with root package name */
    private int f34753b1;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XRecyclerView2 f34754c;
    @StringRes(resName = "net_excption")

    /* renamed from: d  reason: collision with root package name */
    String f34756d;

    /* renamed from: d1  reason: collision with root package name */
    private String f34757d1;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: e  reason: collision with root package name */
    String f34758e;

    /* renamed from: e1  reason: collision with root package name */
    private boolean f34759e1;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.d f34760f;

    /* renamed from: f1  reason: collision with root package name */
    private boolean f34761f1;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f34762g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f34763h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f34764i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f34765j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    View f34766k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    SimpleDraweeView f34767l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f34768m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f34769n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    FrameLayout f34771o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ViewFlipper f34773p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    ImageView f34775q;

    /* renamed from: q0  reason: collision with root package name */
    com.join.android.app.component.video.c f34776q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    AppBarLayout f34777r;

    /* renamed from: r0  reason: collision with root package name */
    MGMainActivity f34778r0;

    /* renamed from: s  reason: collision with root package name */
    private Context f34779s;

    /* renamed from: s0  reason: collision with root package name */
    HomeViewModle f34780s0;

    /* renamed from: t  reason: collision with root package name */
    private List<DownloadTask> f34781t;

    /* renamed from: t0  reason: collision with root package name */
    private String f34782t0;

    /* renamed from: u  reason: collision with root package name */
    private boolean f34783u;

    /* renamed from: v0  reason: collision with root package name */
    private Handler f34786v0;
    @Pref

    /* renamed from: x  reason: collision with root package name */
    PrefDef_ f34789x;

    /* renamed from: y  reason: collision with root package name */
    private LinearLayout f34791y;

    /* renamed from: y0  reason: collision with root package name */
    private String f34792y0;

    /* renamed from: z  reason: collision with root package name */
    private LinearLayout f34793z;

    /* renamed from: z0  reason: collision with root package name */
    private ArrayList<String> f34794z0;

    /* renamed from: v  reason: collision with root package name */
    List<RecomDatabeanBusiness> f34785v = null;

    /* renamed from: w  reason: collision with root package name */
    private Map<String, DownloadTask> f34787w = new ConcurrentHashMap();
    private boolean F = false;
    com.join.mgps.pref.f G = null;
    private boolean J = false;
    private boolean K = false;

    /* renamed from: n0  reason: collision with root package name */
    private String f34770n0 = "m1";

    /* renamed from: o0  reason: collision with root package name */
    private int f34772o0 = 1;

    /* renamed from: p0  reason: collision with root package name */
    private int f34774p0 = 0;

    /* renamed from: u0  reason: collision with root package name */
    private List<PAPAHomeBeanV7.HomeBeanDTO> f34784u0 = null;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f34788w0 = true;

    /* renamed from: x0  reason: collision with root package name */
    private List<Integer> f34790x0 = new ArrayList();
    int I0 = 0;
    boolean J0 = true;
    Handler K0 = new e();
    private String L0 = "28";
    private int N0 = 0;
    private int O0 = 0;
    private String T0 = "";
    long U0 = 0;
    long V0 = 0;
    boolean W0 = true;
    private boolean X0 = true;
    private SparseArray Y0 = new SparseArray(0);
    GestureDetector Z0 = new GestureDetector(new a());

    /* renamed from: c1  reason: collision with root package name */
    Runnable f34755c1 = new b();

    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            Fresco.getImagePipeline().I();
            return super.onFling(motionEvent, motionEvent2, f4, f5);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
            papaMainV3Fragment.W0 = false;
            if (papaMainV3Fragment.B0) {
                if (PapaMainV3Fragment.this.f34789x.isFirstCommendVersion().d().booleanValue() && PapaMainV3Fragment.this.f34789x.isFirst35().d().booleanValue()) {
                    return;
                }
                PapaMainV3Fragment papaMainV3Fragment2 = PapaMainV3Fragment.this;
                XRecyclerView2 xRecyclerView2 = papaMainV3Fragment2.f34754c;
                if (xRecyclerView2 != null) {
                    papaMainV3Fragment2.C = xRecyclerView2.getLastCompletelyVisiblePosition();
                }
                for (int i2 = 0; i2 < PapaMainV3Fragment.this.B.size(); i2++) {
                    if (i2 <= PapaMainV3Fragment.this.C) {
                        MgpapaMainItemBean mgpapaMainItemBean = (MgpapaMainItemBean) PapaMainV3Fragment.this.B.get(i2);
                        if (!mgpapaMainItemBean.isHasExposure()) {
                            switch (mgpapaMainItemBean.getShowtype()) {
                                case 29:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    if (homeBeanDTO != null) {
                                        if (TextUtils.equals(homeBeanDTO.getPosition(), "22-11-1")) {
                                            PapaMainV3Fragment.this.D1("20201", homeBeanDTO.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO));
                                            break;
                                        } else if (TextUtils.equals(homeBeanDTO.getPosition(), "22-12-1")) {
                                            PapaMainV3Fragment.this.D1("20202", homeBeanDTO.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO));
                                            break;
                                        }
                                    }
                                    break;
                                case 30:
                                    List list = (List) mgpapaMainItemBean.getObject();
                                    if (list != null && list.size() > 0) {
                                        for (int i4 = 0; i4 < list.size() && i4 < 4; i4++) {
                                            PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO = (PAPAHomeBeanV7.NgSelectionDTO) list.get(i4);
                                            if (ngSelectionDTO != null) {
                                                PapaMainV3Fragment.this.D1("204", ngSelectionDTO.getPosition(), ngSelectionDTO.getId());
                                                ngSelectionDTO.setHasExposure(true);
                                                list.set(i4, ngSelectionDTO);
                                            }
                                        }
                                        mgpapaMainItemBean.setObject(list);
                                        PapaMainV3Fragment.this.B.set(i2, mgpapaMainItemBean);
                                        break;
                                    }
                                    break;
                                case 32:
                                    PAPAHomeBeanV7.RankingListDTO rankingListDTO = (PAPAHomeBeanV7.RankingListDTO) mgpapaMainItemBean.getObject();
                                    if (rankingListDTO != null && rankingListDTO.getList() != null && rankingListDTO.getList().size() > 0) {
                                        PapaMainV3Fragment.this.F0(0, rankingListDTO.getList(), "20501");
                                        break;
                                    }
                                    break;
                                case 34:
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list2 = (List) mgpapaMainItemBean.getObject();
                                    if (list2 != null && list2.size() > 0) {
                                        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 : list2) {
                                            if (homeBeanDTO2 != null) {
                                                PapaMainV3Fragment.this.D1("206", homeBeanDTO2.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO2));
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case 35:
                                    List list3 = (List) mgpapaMainItemBean.getObject();
                                    if (list3 != null && list3.size() > 0) {
                                        for (int i5 = 0; i5 < list3.size() && i5 < 4; i5++) {
                                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) list3.get(i5);
                                            if (homeBeanDTO3 != null) {
                                                PapaMainV3Fragment.this.D1("206", homeBeanDTO3.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO3));
                                                homeBeanDTO3.setHasExposure(true);
                                                list3.set(i5, homeBeanDTO3);
                                            }
                                        }
                                        mgpapaMainItemBean.setObject(list3);
                                        PapaMainV3Fragment.this.B.set(i2, mgpapaMainItemBean);
                                        break;
                                    }
                                    break;
                                case 36:
                                    PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO4 = (PAPAHomeBeanV7.HomeBeanDTO) mgpapaMainItemBean.getObject();
                                    PapaMainV3Fragment.this.D1("206", homeBeanDTO4.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO4));
                                    break;
                                case 37:
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list4 = (List) mgpapaMainItemBean.getObject();
                                    if (list4 != null && list4.size() > 0) {
                                        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO5 : list4) {
                                            if (homeBeanDTO5 != null) {
                                                PapaMainV3Fragment.this.D1("201", homeBeanDTO5.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO5));
                                                PapaMainV3Fragment.this.G1(Event.exposure, homeBeanDTO5);
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case 38:
                                    List<PAPAHomeBeanV7.HomeBeanDTO> list5 = (List) mgpapaMainItemBean.getObject();
                                    if (list5 != null && list5.size() > 0) {
                                        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO6 : list5) {
                                            if (homeBeanDTO6 != null) {
                                                PapaMainV3Fragment.this.D1("203", homeBeanDTO6.getPosition(), PapaMainV3Fragment.this.N0(homeBeanDTO6));
                                                PapaMainV3Fragment.this.G1(Event.exposure, homeBeanDTO6);
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case 39:
                                    PapaMainV3Fragment.k0(PapaMainV3Fragment.this);
                                    PapaMainV3Fragment papaMainV3Fragment3 = PapaMainV3Fragment.this;
                                    papaMainV3Fragment3.C1(papaMainV3Fragment3.f34753b1);
                                    break;
                            }
                            mgpapaMainItemBean.setHasExposure(true);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            PapaMainV3Fragment.this.f34759e1 = false;
            PapaMainV3Fragment.this.f34761f1 = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            PapaMainV3Fragment.this.f34759e1 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            PapaMainV3Fragment.this.f34759e1 = false;
            PapaMainV3Fragment.this.f34761f1 = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            PapaMainV3Fragment.this.f34759e1 = true;
        }
    }

    /* loaded from: classes3.dex */
    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
                com.join.android.app.component.video.c cVar = papaMainV3Fragment.f34776q0;
                if (cVar != null) {
                    cVar.C(papaMainV3Fragment.J0);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements l1.a {
        f() {
        }

        @Override // l1.a
        public void onClickCancle() {
        }

        @Override // l1.a
        public void onClickOk() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements o1.e {
        g() {
        }

        @Override // o1.e
        public void a(String str, int i2) {
            if (i2 == 1 || IntentUtil.getInstance().goLoginNetGame(PapaMainV3Fragment.this.f34779s)) {
                return;
            }
            PapaMainV3Fragment.this.I0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements XRecyclerView2.g {
        h() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView2.g
        public void onLoadMore() {
            StringBuilder sb = new StringBuilder();
            sb.append("onLoadMore: ");
            sb.append(PapaMainV3Fragment.this.f34772o0);
            sb.append("  ");
            sb.append(PapaMainV3Fragment.this.f34788w0);
            if (!PapaMainV3Fragment.this.f34788w0 || PapaMainV3Fragment.this.H0) {
                return;
            }
            PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
            papaMainV3Fragment.e1(papaMainV3Fragment.f34770n0, PapaMainV3Fragment.this.f34772o0);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView2.g
        public void onRefresh() {
            PapaMainV3Fragment.this.x1();
            PapaMainV3Fragment.this.G0 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements t4.i {
        i() {
        }

        @Override // com.join.mgps.adapter.t4.i
        public void a(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            PapaMainV3Fragment.this.J0(homeBeanDTO.getG_info().getId(), homeBeanDTO);
        }

        @Override // com.join.mgps.adapter.t4.i
        public void b(int i2, List<List<PAPAHomeBeanV7.HomeBeanDTO>> list) {
            PapaMainV3Fragment.this.F0(i2, list, i2 != 0 ? i2 != 1 ? i2 != 2 ? "" : "20503" : "20502" : "20501");
        }

        @Override // com.join.mgps.adapter.t4.i
        public void c(int i2, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends RecyclerView.OnScrollListener {
        j() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            PapaMainV3Fragment.this.p1(recyclerView, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
            PapaMainV3Fragment papaMainV3Fragment = PapaMainV3Fragment.this;
            papaMainV3Fragment.C = papaMainV3Fragment.f34754c.getLastVisiblePosition();
            PapaMainV3Fragment papaMainV3Fragment2 = PapaMainV3Fragment.this;
            papaMainV3Fragment2.D = papaMainV3Fragment2.f34754c.getFirstVisiblePosition();
            int i5 = PapaMainV3Fragment.this.C - PapaMainV3Fragment.this.D;
            int itemCount = PapaMainV3Fragment.this.A.getItemCount();
            PapaMainV3Fragment papaMainV3Fragment3 = PapaMainV3Fragment.this;
            com.join.android.app.component.video.c cVar = papaMainV3Fragment3.f34776q0;
            if (cVar != null) {
                cVar.f(recyclerView, papaMainV3Fragment3.D, i5, itemCount);
            }
            MGMainActivity mGMainActivity = (MGMainActivity) PapaMainV3Fragment.this.getActivity();
            if (PapaMainV3Fragment.this.D < PapaMainV3Fragment.this.f34774p0 || PapaMainV3Fragment.this.f34774p0 == 0) {
                if (PapaMainV3Fragment.this.C + 1 < PapaMainV3Fragment.this.f34774p0) {
                    if (!PapaMainV3Fragment.this.X0) {
                        mGMainActivity.setHomeTabImage(true);
                    }
                    PapaMainV3Fragment.this.X0 = true;
                }
            } else {
                if (PapaMainV3Fragment.this.X0) {
                    mGMainActivity.setHomeTabImage(false);
                }
                PapaMainV3Fragment.this.X0 = false;
            }
            if (System.currentTimeMillis() - PapaMainV3Fragment.this.f34752a1 > 500) {
                PapaMainV3Fragment.this.E0();
                PapaMainV3Fragment.this.f34752a1 = System.currentTimeMillis();
            }
            if (PapaMainV3Fragment.this.G0 && PapaMainV3Fragment.this.A.t(PapaMainV3Fragment.this.f34754c.getFirstCompletelyVisiblePosition()).getPage() == 2) {
                PapaMainV3Fragment.this.K1();
                Bundle bundle = new Bundle();
                bundle.putBoolean("homeHasNewData", false);
                PapaMainV3Fragment.this.G.callHomePageNewData(bundle);
                PapaMainV3Fragment.this.G0 = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements View.OnTouchListener {
        k() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PapaMainV3Fragment.this.Z0.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends LinearSmoothScroller {
        l(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return super.calculateSpeedPerPixel(displayMetrics);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getVerticalSnapPreference() {
            return -1;
        }
    }

    /* loaded from: classes3.dex */
    class m {

        /* renamed from: a  reason: collision with root package name */
        int f34809a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f34810b = 0;

        m() {
        }
    }

    /* loaded from: classes3.dex */
    class n {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f34812a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f34813b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f34814c;

        n() {
        }
    }

    private void A0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C1(int i2) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setReMarks(String.valueOf(i2));
        StringBuilder sb = new StringBuilder();
        sb.append("sendExposurePoint: ");
        sb.append(i2);
        com.papa.sim.statistic.p.l(this.f34779s).h0(com.papa.sim.statistic.Event.pullDownModelExp, ext, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D1(String str, String str2, String str3) {
        Ext ext = new Ext();
        ext.setPage("home");
        ext.setFrom(str);
        ext.setGameId(str3);
        ext.setPosition(str2);
        com.papa.sim.statistic.p.l(this.f34779s).h0(com.papa.sim.statistic.Event.expGameAdPage, ext, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        if (this.f34786v0 == null) {
            this.f34786v0 = new Handler();
        }
        this.f34786v0.post(this.f34755c1);
    }

    private void E1(boolean z3) {
        Ext ext = new Ext();
        ext.setPage(ExtFrom.home.name());
        ext.setPosition(z3 ? this.f34757d1 : null);
        com.papa.sim.statistic.p.l(this.f34779s).i1(com.papa.sim.statistic.Event.appPageVisit, ext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(int i2, List<List<PAPAHomeBeanV7.HomeBeanDTO>> list, String str) {
        List<Integer> list2 = this.f34790x0;
        if (list2 == null || list2.contains(Integer.valueOf(i2)) || list == null || i2 > list.size() - 1) {
            return;
        }
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list.get(i2)) {
            D1(str, homeBeanDTO.getPosition(), N0(homeBeanDTO));
        }
        this.f34790x0.add(Integer.valueOf(i2));
    }

    private void F1(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("22-");
        sb.append(str);
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f34779s);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f34779s).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G1(Event event, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        String str;
        if (homeBeanDTO == null || homeBeanDTO.getG_info() == null || homeBeanDTO.getPosition() == null || homeBeanDTO.getG_info().getPosition_path() == null) {
            return;
        }
        String[] split = homeBeanDTO.getPosition().split("-");
        String str2 = "";
        if (split.length <= 2) {
            str = "0";
        } else if (!"22".equals(split[0])) {
            return;
        } else {
            if ("4".equals(split[1])) {
                str2 = "大家都在玩";
            } else if ("13".equals(split[1])) {
                str2 = "最新网游";
            }
            str = split[2];
        }
        String str3 = str;
        String str4 = str2;
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        String str5 = str4 + str3;
        if (TextUtils.equals(event.name(), Event.exposure.name()) && this.f34780s0.getLists().contains(str5)) {
            com.join.mgps.Util.t0.d("volcannoEvent", "hasSend= " + str4 + "  " + str3);
            return;
        }
        this.f34780s0.getLists().add(str5);
        StatFactory.Companion.getInstance(this.f34779s).sendEvent(new StatFactory.VolcanoEvent(event, homeBeanDTO.getG_info().getId(), new StatFactory.SpmData("wufun", "home", str4, str3, false), homeBeanDTO.getG_info().getPosition_path(), UtilsMy.G1(homeBeanDTO.getG_info().getTag_id())));
    }

    private void I1(List<RecomDatabean> list, int i2, int i4) {
        AppBean game_info;
        if (list != null) {
            for (RecomDatabean recomDatabean : list) {
                if (recomDatabean.getSub() != null && recomDatabean.getSub().size() > 0 && (game_info = recomDatabean.getSub().get(0).getGame_info()) != null) {
                    game_info.set_from(i2);
                    game_info.set_from_type(i4);
                }
            }
        }
    }

    private void L1(MgpapaMainItemBean mgpapaMainItemBean) {
        List<AppBeanMain> sub;
        String str;
        int showtype = mgpapaMainItemBean.getShowtype();
        if ((showtype == 3 || showtype == 13) && (sub = mgpapaMainItemBean.getRecomDatabeanLeft().getSub()) != null && sub.size() > 0) {
            AppBean game_info = sub.get(0).getGame_info();
            String[] split = mgpapaMainItemBean.getMoreType2().split("-");
            str = "0";
            String str2 = "模块";
            if (split.length <= 0) {
                str2 = "";
            } else if (split[0].equals("4")) {
                str = split.length > 1 ? split[1] : "0";
                str2 = "大家都在玩";
            } else if (split[0].equals("7")) {
                str = split.length > 1 ? split[1] : "0";
                str2 = "网游推荐";
            } else if (split[0].equals("5")) {
                str = split.length > 1 ? split[1] : "0";
                str2 = "最新网游";
            } else {
                str = split.length > 2 ? split[2] : "0";
                if (split.length > 3) {
                    str2 = "模块" + split[1];
                    str = split[3];
                }
            }
            game_info.setRecPosition("home-" + str2 + "-" + str);
        }
    }

    private void M0() {
        Bundle bundle = new Bundle();
        bundle.putInt("localType", 1);
        com.join.mgps.pref.f fVar = this.G;
        if (fVar != null) {
            fVar.callOnlineCoupon(bundle);
        }
    }

    private void M1(List<RecomDatabean> list, List<RecomDatabean> list2, String str) {
        List<RecomDatabeanBusiness> r12 = r1(list, null);
        this.f34785v.addAll(r12);
        if (r12 == null || r12.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < r12.size(); i2++) {
            MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
            if (i2 != 0) {
                mgpapaMainItemBean.setMoreType2(str + (i2 + 1) + "-");
                mgpapaMainItemBean.setShowtype(3);
            } else if (list2 != null) {
                RecomDatabean recomDatabean = list2.get(0);
                mgpapaMainItemBean.setShowtype(13);
                r12.get(i2).getMain().setPic_remote(recomDatabean.getMain().getPic_remote());
                r12.get(i2).getMain().setVedio_url(recomDatabean.getMain().getVedio_url());
                mgpapaMainItemBean.setMoreType2(str + "x");
            }
            mgpapaMainItemBean.setMoreType(i2);
            mgpapaMainItemBean.setRecomDatabeanLeft(r12.get(i2));
            L1(mgpapaMainItemBean);
            this.B.add(mgpapaMainItemBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String N0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        if (homeBeanDTO == null || homeBeanDTO.getG_info() == null) {
            return null;
        }
        if (!TextUtils.isEmpty(homeBeanDTO.getG_info().getId()) && !TextUtils.equals(homeBeanDTO.getG_info().getId(), "0")) {
            return homeBeanDTO.getG_info().getId();
        }
        return homeBeanDTO.getG_info().getMod_id();
    }

    private int P0() {
        int i2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = this.D;
            if (i4 >= i2) {
                break;
            }
            m mVar = (m) this.Y0.get(i4);
            if (mVar != null) {
                i5 += mVar.f34809a;
            }
            i4++;
        }
        m mVar2 = (m) this.Y0.get(i2);
        if (mVar2 == null) {
            mVar2 = new m();
        }
        return i5 - mVar2.f34810b;
    }

    private void U0() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 11) {
            this.f34765j.setVisibility(8);
        }
        this.D0 = com.join.android.app.common.utils.f.j(this.f34779s);
        HomeViewModle homeViewModle = (HomeViewModle) new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(MApplication.f9223q)).get(HomeViewModle.class);
        this.f34780s0 = homeViewModle;
        homeViewModle.initStat(this.f34779s);
        this.f34780s0.getLists().clear();
        if (i2 >= 21) {
            int v3 = com.join.android.app.common.utils.j.v(getContext());
            if (v3 > this.f34779s.getResources().getDimension(R.dimen.wdp62)) {
                this.f34771o.setPadding(0, v3, 0, 0);
            }
        }
        this.f34785v = new ArrayList();
        this.f34784u0 = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.B = arrayList;
        t4 t4Var = new t4(this.f34779s, this, arrayList, this.f34776q0, new g());
        this.A = t4Var;
        t4Var.setHasStableIds(true);
        LayoutInflater.from(this.f34779s).inflate(R.layout.mg_papa_title_include_v2, (ViewGroup) null, false);
        this.f34754c.setLoadingListener(new h());
        this.f34754c.setPtrFrameLayout(this.H);
        this.f34754c.setPreLoadCount(10);
        this.A.N(new i());
        this.f34754c.setLayoutManager(new LinearLayoutManager(this.f34779s));
        this.f34754c.setAdapter(this.A);
        this.f34754c.addOnScrollListener(new j());
        this.f34754c.setOnTouchListener(new k());
        this.H.j(true);
        this.f34777r.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.join.mgps.activity.l2
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i4) {
                PapaMainV3Fragment.this.b1(appBarLayout, i4);
            }
        });
    }

    private void V0(PAPAHomeBeanV7.SScrollingTxtDTO sScrollingTxtDTO) {
        if (sScrollingTxtDTO == null) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>(sScrollingTxtDTO.getText());
        this.f34794z0 = arrayList;
        if (arrayList.size() <= 0) {
            this.f34794z0 = new ArrayList<>();
        }
        this.f34773p.stopFlipping();
        this.f34773p.removeAllViews();
        Iterator<String> it2 = this.f34794z0.iterator();
        while (it2.hasNext()) {
            TextView textView = (TextView) LayoutInflater.from(this.f34779s).inflate(R.layout.item_search_hint_viewflipper, (ViewGroup) null);
            textView.setText(it2.next());
            this.f34773p.addView(textView);
        }
        int interval = sScrollingTxtDTO.getInterval();
        this.A0 = interval;
        if (interval < 1) {
            this.A0 = 1;
        }
        this.f34773p.setFlipInterval(this.A0 * 1000);
        this.f34773p.startFlipping();
    }

    private void W1(DownloadTask downloadTask) {
        RecyclerView recyclerView;
        com.join.mgps.adapter.m2 m2Var;
        int i2 = this.D;
        if (i2 >= 0) {
            for (int i4 = i2; i4 <= Math.min(this.C + 1, this.A.getItemCount() - 1); i4++) {
                MgpapaMainItemBean t3 = this.A.t(i4);
                if (t3 != null) {
                    int showtype = t3.getShowtype();
                    if (showtype != 28) {
                        if (showtype != 29) {
                            switch (showtype) {
                                case 35:
                                    try {
                                        List<PAPAHomeBeanV7.HomeBeanDTO> list = (List) t3.getObject();
                                        RecyclerView.ViewHolder childViewHolder = this.f34754c.getChildViewHolder(this.f34754c.getChildAt(i4 - this.D));
                                        if (childViewHolder instanceof t4.p) {
                                            t4.p pVar = (t4.p) childViewHolder;
                                            if (list != null && (recyclerView = pVar.f44237a) != null && (m2Var = (com.join.mgps.adapter.m2) recyclerView.getAdapter()) != null && m2Var.getData() != null) {
                                                for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list) {
                                                    if (homeBeanDTO != null && homeBeanDTO.getDownloadTask() != null && TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO.getDownloadTask().getCrc_link_type_val())) {
                                                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(homeBeanDTO.getDownloadTask().getCrc_link_type_val());
                                                        if (f4 != null) {
                                                            homeBeanDTO.setDownloadTask(f4);
                                                        }
                                                    }
                                                }
                                                m2Var.setNewData(list);
                                                break;
                                            }
                                        } else {
                                            break;
                                        }
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                        break;
                                    }
                                    break;
                            }
                        }
                        try {
                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) t3.getObject();
                            RecyclerView.ViewHolder childViewHolder2 = this.f34754c.getChildViewHolder(this.f34754c.getChildAt(i4 - this.D));
                            if (childViewHolder2 instanceof t4.j) {
                                t4.j jVar = (t4.j) childViewHolder2;
                                if (homeBeanDTO2 != null && (TextUtils.equals(homeBeanDTO2.getG_info().getId(), downloadTask.getCrc_link_type_val()) || (homeBeanDTO2.getDownloadTask() != null && TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO2.getDownloadTask().getCrc_link_type_val())))) {
                                    update(homeBeanDTO2, jVar.f44186c, jVar.f44192i, jVar.f44193j, jVar.f44194k, jVar.f44187d, jVar.f44188e, jVar.f44189f, jVar.f44190g, jVar.f44191h);
                                }
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    try {
                        List list2 = (List) t3.getObject();
                        RecyclerView.ViewHolder childViewHolder3 = this.f34754c.getChildViewHolder(this.f34754c.getChildAt(i4 - this.D));
                        if (childViewHolder3 instanceof t4.l) {
                            t4.l lVar = (t4.l) childViewHolder3;
                            if (list2 != null && list2.size() > 1) {
                                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(0);
                                if (homeBeanDTO3 != null) {
                                    if (TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO3.getG_info().getId()) || (homeBeanDTO3.getDownloadTask() != null && TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO3.getDownloadTask().getCrc_link_type_val()))) {
                                        update(homeBeanDTO3, lVar.f44203c, lVar.f44209i, lVar.f44210j, lVar.f44211k, lVar.f44204d, lVar.f44205e, lVar.f44206f, lVar.f44207g, lVar.f44208h);
                                    }
                                }
                                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO4 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(1);
                                if (homeBeanDTO4 != null && (TextUtils.equals(homeBeanDTO4.getG_info().getId(), downloadTask.getCrc_link_type_val()) || (homeBeanDTO4.getDownloadTask() != null && TextUtils.equals(downloadTask.getCrc_link_type_val(), homeBeanDTO4.getDownloadTask().getCrc_link_type_val())))) {
                                    update(homeBeanDTO4, lVar.f44215o, lVar.f44221u, lVar.f44222v, lVar.f44223w, lVar.f44216p, lVar.f44217q, lVar.f44218r, lVar.f44219s, lVar.f44220t);
                                }
                            }
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
            }
        }
    }

    private void Y1(DownloadTask downloadTask) {
        try {
            List<RecomDatabeanBusiness> list = this.f34785v;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i2 = 0; i2 < this.f34785v.size(); i2++) {
                AppBean game_info = this.f34785v.get(i2).getSub().get(0).getGame_info();
                if (game_info != null) {
                    if (game_info.getMod_info() != null) {
                        ModInfoBean mod_info = game_info.getMod_info();
                        DownloadTask downloadTask2 = this.f34787w.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f34787w.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z3 = false;
                        }
                        if (z3 && z4) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.f34785v.get(i2).d(downloadTask);
                            }
                        } else if (z3) {
                            if (game_info.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(game_info.getMod_info().getMod_game_id())) {
                                this.f34785v.get(i2).d(downloadTask);
                            }
                        } else if (z4) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.f34785v.get(i2).d(downloadTask);
                            }
                        } else {
                            DownloadTask downloadTask4 = game_info.getMod_info() != null ? this.f34787w.get(game_info.getMod_info().getMod_game_id()) : null;
                            if (downloadTask4 == null) {
                                downloadTask4 = this.f34787w.get(game_info.getCrc_sign_id());
                            }
                            if (downloadTask4 != null && downloadTask.getCrc_link_type_val().equals(downloadTask4.getCrc_link_type_val())) {
                                this.f34785v.get(i2).d(downloadTask);
                            }
                        }
                    } else if (game_info.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        this.f34785v.get(i2).d(downloadTask);
                        this.f34787w.put(downloadTask.getCrc_link_type_val(), downloadTask);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a1() {
        this.H0 = false;
        this.f34776q0.r();
        this.f34776q0.J(this.f34754c);
        this.f34788w0 = true;
        this.f34754c.setNoMoreView(false);
        this.f34772o0 = 2;
        e1(this.f34770n0, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b1(AppBarLayout appBarLayout, int i2) {
        this.H.setEnabled(i2 >= 0);
    }

    private void b2(TextView textView, LinearLayout linearLayout, ProgressBar progressBar, ProgressBar progressBar2, boolean z3, boolean z4) {
        if (z3) {
            textView.setVisibility(0);
            linearLayout.setVisibility(8);
            progressBar.setVisibility(8);
            progressBar2.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        textView.setVisibility(8);
        if (z4) {
            progressBar2.setVisibility(0);
            progressBar.setVisibility(8);
            return;
        }
        progressBar.setVisibility(0);
        progressBar2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c1() {
        SimpleDraweeView simpleDraweeView = this.f34767l;
        if (simpleDraweeView == null || this.f34759e1 || !this.f34761f1 || simpleDraweeView.getVisibility() != 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f34767l, "translationX", this.f34779s.getResources().getDimension(R.dimen.wdp113), 0.0f).setDuration(150L);
        duration.addListener(new d());
        duration.start();
    }

    private void c2() {
        RecyclerView recyclerView;
        com.join.mgps.adapter.m2 m2Var;
        int i2 = this.D;
        if (i2 >= 0) {
            for (int i4 = i2; i4 <= Math.min(this.C + 1, this.A.getItemCount() - 1); i4++) {
                MgpapaMainItemBean t3 = this.A.t(i4);
                if (t3 != null) {
                    int showtype = t3.getShowtype();
                    if (showtype != 28) {
                        if (showtype != 29) {
                            switch (showtype) {
                                case 35:
                                    try {
                                        List<PAPAHomeBeanV7.HomeBeanDTO> list = (List) t3.getObject();
                                        RecyclerView.ViewHolder childViewHolder = this.f34754c.getChildViewHolder(this.f34754c.getChildAt(i4 - this.D));
                                        if (childViewHolder instanceof t4.p) {
                                            t4.p pVar = (t4.p) childViewHolder;
                                            if (list != null && (recyclerView = pVar.f44237a) != null && (m2Var = (com.join.mgps.adapter.m2) recyclerView.getAdapter()) != null && m2Var.getData() != null) {
                                                for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list) {
                                                    if (homeBeanDTO != null && homeBeanDTO.getDownloadTask() != null) {
                                                        DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(homeBeanDTO.getDownloadTask().getCrc_link_type_val());
                                                        if (f4 != null) {
                                                            homeBeanDTO.setDownloadTask(f4);
                                                        }
                                                    }
                                                }
                                                m2Var.setNewData(list);
                                                break;
                                            }
                                        } else {
                                            break;
                                        }
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                        break;
                                    }
                                    break;
                            }
                        }
                        try {
                            PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO2 = (PAPAHomeBeanV7.HomeBeanDTO) t3.getObject();
                            RecyclerView.ViewHolder childViewHolder2 = this.f34754c.getChildViewHolder(this.f34754c.getChildAt(i4 - this.D));
                            if (childViewHolder2 instanceof t4.j) {
                                t4.j jVar = (t4.j) childViewHolder2;
                                if (homeBeanDTO2 != null && homeBeanDTO2.getDownloadTask() != null) {
                                    DownloadTask downloadTask = homeBeanDTO2.getDownloadTask();
                                    DownloadTask f5 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                                    if (f5 != null) {
                                        long parseDouble = (long) (Double.parseDouble(f5.getShowSize()) * 1024.0d * 1024.0d);
                                        if (downloadTask.getSize() == 0) {
                                            TextView textView = jVar.f44188e;
                                            textView.setText(UtilsMy.f(f5.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble));
                                        } else {
                                            TextView textView2 = jVar.f44188e;
                                            textView2.setText(UtilsMy.f(f5.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble));
                                        }
                                        if (downloadTask.getStatus() == 12) {
                                            jVar.f44190g.setProgress((int) f5.getProgress());
                                        } else {
                                            jVar.f44191h.setProgress((int) f5.getProgress());
                                        }
                                        if (downloadTask.getStatus() == 2) {
                                            TextView textView3 = jVar.f44189f;
                                            textView3.setText(f5.getSpeed() + "/S");
                                        }
                                    }
                                }
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    try {
                        List list2 = (List) t3.getObject();
                        RecyclerView.ViewHolder childViewHolder3 = this.f34754c.getChildViewHolder(this.f34754c.getChildAt(i4 - this.D));
                        if (childViewHolder3 instanceof t4.l) {
                            t4.l lVar = (t4.l) childViewHolder3;
                            if (list2 != null && list2.size() > 1) {
                                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO3 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(0);
                                if (homeBeanDTO3 != null && homeBeanDTO3.getDownloadTask() != null) {
                                    DownloadTask downloadTask2 = homeBeanDTO3.getDownloadTask();
                                    DownloadTask f6 = com.join.android.app.common.servcie.a.e().f(downloadTask2.getCrc_link_type_val());
                                    if (f6 != null) {
                                        long parseDouble2 = (long) (Double.parseDouble(f6.getShowSize()) * 1024.0d * 1024.0d);
                                        if (downloadTask2.getSize() == 0) {
                                            TextView textView4 = lVar.f44205e;
                                            textView4.setText(UtilsMy.f(f6.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble2));
                                        } else {
                                            TextView textView5 = lVar.f44205e;
                                            textView5.setText(UtilsMy.f(f6.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble2));
                                        }
                                        if (downloadTask2.getStatus() == 12) {
                                            lVar.f44207g.setProgress((int) f6.getProgress());
                                        } else {
                                            lVar.f44208h.setProgress((int) f6.getProgress());
                                        }
                                        if (downloadTask2.getStatus() == 2) {
                                            TextView textView6 = lVar.f44206f;
                                            textView6.setText(f6.getSpeed() + "/S");
                                        }
                                    }
                                }
                                PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO4 = (PAPAHomeBeanV7.HomeBeanDTO) list2.get(1);
                                if (homeBeanDTO4 != null && homeBeanDTO4.getDownloadTask() != null) {
                                    DownloadTask downloadTask3 = homeBeanDTO4.getDownloadTask();
                                    DownloadTask f7 = com.join.android.app.common.servcie.a.e().f(downloadTask3.getCrc_link_type_val());
                                    if (f7 != null) {
                                        long parseDouble3 = (long) (Double.parseDouble(f7.getShowSize()) * 1024.0d * 1024.0d);
                                        if (downloadTask3.getSize() == 0) {
                                            TextView textView7 = lVar.f44217q;
                                            textView7.setText(UtilsMy.f(f7.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble3));
                                        } else {
                                            TextView textView8 = lVar.f44217q;
                                            textView8.setText(UtilsMy.f(f7.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(parseDouble3));
                                        }
                                        if (downloadTask3.getStatus() == 12) {
                                            lVar.f44219s.setProgress((int) f7.getProgress());
                                        } else {
                                            lVar.f44220t.setProgress((int) f7.getProgress());
                                        }
                                        if (downloadTask3.getStatus() == 2) {
                                            TextView textView9 = lVar.f44218r;
                                            textView9.setText(f7.getSpeed() + "/S");
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
            }
        }
    }

    private PAPAHomeBeanV7.HomeBeanDTO f2(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, int i2, int i4) {
        List<PAPAHomeBeanV7.HomeBeanDTO> g22 = g2(new ArrayList<PAPAHomeBeanV7.HomeBeanDTO>(homeBeanDTO) { // from class: com.join.mgps.activity.PapaMainV3Fragment.8

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f34795a;

            {
                this.f34795a = homeBeanDTO;
                add(homeBeanDTO);
            }
        }, i2, i4);
        return (g22 == null || g22.size() <= 0) ? homeBeanDTO : g22.get(0);
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> g2(List<PAPAHomeBeanV7.HomeBeanDTO> list, int i2, int i4) {
        if (list != null && list.size() > 0) {
            List<DownloadTask> d4 = g1.f.G().d();
            for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : list) {
                Iterator<DownloadTask> it2 = d4.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        DownloadTask next = it2.next();
                        if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getMod_id())) {
                            homeBeanDTO.setDownloadTask(next);
                            break;
                        } else if (TextUtils.equals(next.getCrc_link_type_val(), homeBeanDTO.getG_info().getId())) {
                            homeBeanDTO.setDownloadTask(next);
                        }
                    }
                }
                homeBeanDTO.set_from(i2);
                homeBeanDTO.set_from_type(i4);
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> h2(List<PAPAHomeBeanV7.HomeBeanDTO> list, String str) {
        if (list != null && list.size() > 0) {
            int i2 = 0;
            while (i2 < list.size()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                i2++;
                sb.append(i2);
                list.get(i2).setPosition(sb.toString());
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.HomeBeanDTO> i2(List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        if (list != null && list.size() > 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.get(i2).setPosition("22-18-" + (this.C0 + 1));
                this.C0 = this.C0 + 1;
            }
        }
        return list;
    }

    private List<PAPAHomeBeanV7.NgSelectionDTO> j2(List<PAPAHomeBeanV7.NgSelectionDTO> list, int i2) {
        if (list != null && list.size() > 0) {
            int i4 = 0;
            while (i4 < list.size()) {
                StringBuilder sb = new StringBuilder();
                sb.append("22-14-");
                int i5 = i4 + 1;
                sb.append(i5);
                list.get(i4).setPosition(sb.toString());
                list.get(i4).set_from(i2);
                list.get(i4).set_from_type(i2);
                i4 = i5;
            }
        }
        return list;
    }

    static /* synthetic */ int k0(PapaMainV3Fragment papaMainV3Fragment) {
        int i2 = papaMainV3Fragment.f34753b1;
        papaMainV3Fragment.f34753b1 = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1(RecyclerView recyclerView, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("onScrollStateChange: ");
        sb.append(i2);
        sb.append("  ");
        sb.append(this.f34754c.getLastCompletelyVisiblePosition());
        sb.append("  ");
        sb.append(this.A.getData().size() - 1);
        if (i2 == 0) {
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
            W0();
        } else if (this.f34754c.getLastCompletelyVisiblePosition() < this.A.getData().size() || this.f34788w0) {
            X0();
        }
        com.join.android.app.component.video.c cVar = this.f34776q0;
        if (cVar != null && recyclerView != null) {
            cVar.j(recyclerView, i2);
        }
        E0();
        if (System.currentTimeMillis() - this.F0 > com.join.mgps.data.c.f47286a) {
            C0();
        }
    }

    private RecomDatabeanBusiness q1(RecomDatabean recomDatabean) {
        if (recomDatabean != null) {
            return new RecomDatabeanBusiness(recomDatabean);
        }
        return null;
    }

    private List<RecomDatabeanBusiness> r1(List<RecomDatabean> list, List<RecomDatabeanBusiness> list2) {
        if (list2 == null) {
            list2 = new ArrayList<>();
        } else {
            list2.clear();
        }
        if (list != null) {
            for (RecomDatabean recomDatabean : list) {
                list2.add(new RecomDatabeanBusiness(recomDatabean));
            }
        }
        return list2;
    }

    private void s1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34784u0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(null);
            }
        }
        l1();
        W1(downloadTask);
    }

    private void t1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34784u0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        l1();
        W1(downloadTask);
    }

    private void u1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34784u0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        l1();
        W1(downloadTask);
    }

    private void update(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO, TextView textView, TextView textView2, FrameLayout frameLayout, TextView textView3, LinearLayout linearLayout, TextView textView4, TextView textView5, ProgressBar progressBar, ProgressBar progressBar2) {
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        long size = downloadTask != null ? downloadTask.getSize() : 0L;
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                textView3.setText("开始");
                textView.setVisibility(8);
                return;
            }
        }
        if (downloadTask == null) {
            b2(textView2, linearLayout, progressBar2, progressBar, true, false);
            textView3.setText("获取");
            if (gameBean == null) {
                return;
            }
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.f34779s).c(this.f34779s, gameBean.getPackageName()) && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f34779s).k(this.f34779s, gameBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(gameBean.getVer()) && k4.d() < Integer.parseInt(gameBean.getVer())) {
                        textView3.setText("更新");
                        return;
                    } else {
                        textView3.setText("启动");
                        return;
                    }
                }
                UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.t2(textView3, frameLayout, gameBean);
                return;
            }
            UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
            UtilsMy.t2(textView3, frameLayout, gameBean);
            return;
        }
        int status = downloadTask.getStatus();
        if (gameBean != null && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                textView3.setText("暂停");
                return;
            } else if (status == 48) {
                textView3.setText("安装中");
                b2(textView2, linearLayout, progressBar2, progressBar, true, false);
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7) {
                                if (status != 42) {
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                textView3.setText("更新");
                                                b2(textView2, linearLayout, progressBar2, progressBar, true, false);
                                                return;
                                            case 10:
                                                textView3.setText("等待");
                                                b2(textView2, linearLayout, progressBar2, progressBar, false, false);
                                                textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                try {
                                                    progressBar2.setProgress((int) downloadTask.getProgress());
                                                } catch (Exception e4) {
                                                    e4.printStackTrace();
                                                }
                                                textView5.setText("等待中");
                                                return;
                                            case 11:
                                                textView3.setText("安装");
                                                b2(textView2, linearLayout, progressBar2, progressBar, true, false);
                                                return;
                                            case 12:
                                                b2(textView2, linearLayout, progressBar2, progressBar, false, true);
                                                textView4.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                textView5.setText("解压中..");
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                                textView3.setText("解压中");
                                                return;
                                            case 13:
                                                b2(textView2, linearLayout, progressBar2, progressBar, false, true);
                                                textView4.setText(UtilsMy.f(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                                                textView5.setText("点击重新解压");
                                                progressBar.setProgress((int) downloadTask.getProgress());
                                                textView3.setText("解压");
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    textView3.setText("启动");
                    b2(textView2, linearLayout, progressBar2, progressBar, true, true);
                    return;
                }
                textView3.setText("继续");
                b2(textView2, linearLayout, progressBar2, progressBar, false, false);
                try {
                    if (downloadTask.getSize() == 0) {
                        textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    } else {
                        textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                    }
                    progressBar2.setProgress((int) downloadTask.getProgress());
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                textView5.setText("暂停中");
                return;
            } else {
                UtilsMy.C3(downloadTask);
                textView3.setText("暂停");
                b2(textView2, linearLayout, progressBar2, progressBar, false, false);
                if (downloadTask.getSize() == 0) {
                    textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                } else {
                    textView4.setText(UtilsMy.f(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.f(size));
                }
                progressBar2.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                textView5.setText(speed + "/S");
                return;
            }
        }
        textView3.setText("获取");
        UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
        UtilsMy.t2(textView3, frameLayout, gameBean);
        b2(textView2, linearLayout, progressBar2, progressBar, true, false);
    }

    private void v1(DownloadTask downloadTask) {
        for (PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO : this.f34784u0) {
            if (homeBeanDTO.getG_info() != null && (TextUtils.equals(homeBeanDTO.getG_info().getId(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(homeBeanDTO.getG_info().getMod_id(), downloadTask.getCrc_link_type_val()))) {
                homeBeanDTO.setDownloadTask(downloadTask);
            }
        }
        l1();
        W1(downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1() {
        if (this.F) {
            return;
        }
        if (this.f34754c.getFirstVisiblePosition() > 1) {
            h1();
        }
        this.f34770n0 = "m1";
        this.f34772o0 = 1;
        this.f34774p0 = 0;
        this.f34754c.setNoMoreView(false);
        this.f34788w0 = true;
        e1(this.f34770n0, this.f34772o0);
        Q0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void A1(PAPAHomeBeanV7 pAPAHomeBeanV7) {
        this.f34789x.homeAllDataV3().g(JsonMapper.toJsonString(pAPAHomeBeanV7));
        com.join.mgps.Util.t0.c("保存数据完成   " + System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B0() {
        K1();
        this.f34753b1 = 0;
        this.C0 = 0;
        this.H0 = true;
        int i2 = 0;
        for (MgpapaMainItemBean mgpapaMainItemBean : this.B) {
            if (mgpapaMainItemBean.getPage() == 1) {
                i2++;
                if (mgpapaMainItemBean.getShowtype() == 39) {
                    this.f34753b1++;
                } else if (mgpapaMainItemBean.getShowtype() == 34 && mgpapaMainItemBean.getShowtype() == 35 && mgpapaMainItemBean.getShowtype() == 36) {
                    this.C0++;
                }
            }
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f34754c.getLayoutManager();
        if (linearLayoutManager != null) {
            l lVar = new l(this.f34779s);
            lVar.setTargetPosition(i2);
            linearLayoutManager.startSmoothScroll(lVar);
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f34777r.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() != 0) {
                behavior2.setTopAndBottomOffset(0);
            }
        }
        if (this.f34786v0 == null) {
            this.f34786v0 = new Handler();
        }
        this.E0 = true;
        this.f34786v0.postDelayed(new Runnable() { // from class: com.join.mgps.activity.m2
            @Override // java.lang.Runnable
            public final void run() {
                PapaMainV3Fragment.this.a1();
            }
        }, Math.max(1000, this.f34754c.getLastVisiblePosition() * 10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B1() {
        IntentUtil.getInstance().goSearchHintActivity(this.f34779s, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void C0() {
        PapaHomeCheckNewDataBean data;
        try {
            this.F0 = System.currentTimeMillis();
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f34779s);
            requestModel.setArgs(new RequestOnlineCouponArgs());
            ResponseModel<PapaHomeCheckNewDataBean> body = com.join.mgps.rpc.impl.h.L().J().r0(requestModel.makeSign()).execute().body();
            if (body == null || body.getCode() != 200 || (data = body.getData()) == null || data.getState() != 1) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("homeHasNewData", true);
            this.G.callHomePageNewData(bundle);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        String plugin_num = gameBean.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(gameBean.getDown_url_remote());
            if (downloadTask == null) {
                downloadTask = gameBean.getDownloadtaskDown();
            }
            UtilsMy.h2(downloadTask, this.f34779s);
            IntentUtil.getInstance().intentActivity(this.f34779s, intentDateBean);
        } else if (downloadTask == null) {
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (gameBean.getMod_info() == null) {
                    if (com.join.android.app.common.utils.a.g0(this.f34779s).c(this.f34779s, gameBean.getPackageName())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.f34779s).k(this.f34779s, gameBean.getPackageName());
                        if (!com.join.mgps.Util.d2.i(gameBean.getVer()) || k4.d() >= Integer.parseInt(gameBean.getVer())) {
                            com.join.android.app.common.utils.a.g0(this.f34779s);
                            APKUtils.X(this.f34779s, gameBean.getPackageName());
                            return;
                        }
                    }
                } else {
                    boolean c4 = com.join.android.app.common.utils.a.g0(this.f34779s).c(this.f34779s, gameBean.getPackageName());
                    boolean D = com.join.mgps.va.overmind.e.p().D(gameBean.getPackageName());
                    if (c4 || D) {
                        com.join.android.app.common.utils.a.g0(this.f34779s);
                        APKUtils.S(this.f34779s, gameBean.getMod_info());
                        return;
                    }
                }
            }
            if (UtilsMy.o0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.f34779s, gameBean.getCrc_sign_id());
            } else {
                UtilsMy.J0(this.f34779s, gameBean);
            }
            G1(Event.check, homeBeanDTO);
        } else {
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            downloadTask.set_from(homeBeanDTO.get_from());
            downloadTask.set_from_type(homeBeanDTO.get_from_type());
            if (UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status != 13) {
                    if (status != 2) {
                        if (status != 3) {
                            if (status == 5) {
                                UtilsMy.c3(this.f34779s, downloadTask);
                                return;
                            } else if (status != 6) {
                                if (status != 7) {
                                    if (status == 42) {
                                        if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                            return;
                                        }
                                        downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                        downloadTask.setVer(gameBean.getVer());
                                        downloadTask.setVer_name(gameBean.getVer_name());
                                        downloadTask.setUrl(gameBean.getDown_url_remote());
                                        UtilsMy.w3(this.f34779s, downloadTask);
                                        return;
                                    } else if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (!com.join.android.app.common.utils.f.j(this.f34779s)) {
                                                    com.join.mgps.Util.i2.a(this.f34779s).b("无网络连接");
                                                    return;
                                                } else if (downloadTask.getCrc_link_type_val() == null || downloadTask.getCrc_link_type_val().equals("")) {
                                                    return;
                                                } else {
                                                    DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                                                    if (UtilsMy.T0(this.f34779s, downloadTask)) {
                                                        return;
                                                    }
                                                    if (gameBean.getDown_status() == 5) {
                                                        UtilsMy.R0(this.f34779s, downloadTask);
                                                        return;
                                                    }
                                                    downloadTask.setId(B.getId());
                                                    com.php25.PDownload.d.b(downloadTask);
                                                    downloadTask.setVer(gameBean.getVer());
                                                    downloadTask.setVer_name(gameBean.getVer_name());
                                                    downloadTask.setUrl(gameBean.getDown_url_remote());
                                                    com.php25.PDownload.d.c(downloadTask, this.f34779s);
                                                    return;
                                                }
                                            case 10:
                                                break;
                                            case 11:
                                                UtilsMy.j3(downloadTask, this.f34779s);
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, this.f34779s);
                        return;
                    }
                    com.php25.PDownload.d.h(downloadTask);
                    return;
                }
                com.php25.PDownload.d.k(this.f34779s, downloadTask);
                return;
            }
            if (UtilsMy.o0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
                UtilsMy.m3(this.f34779s, gameBean.getCrc_sign_id());
                return;
            }
            UtilsMy.c1(downloadTask, gameBean);
            if (UtilsMy.T0(this.f34779s, downloadTask)) {
                return;
            }
            if (gameBean.getDown_status() == 5) {
                UtilsMy.R0(this.f34779s, downloadTask);
            } else {
                UtilsMy.F0(this.f34779s, downloadTask, gameBean.getTp_down_url(), gameBean.getOther_down_switch(), gameBean.getCdn_down_switch());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        ArrayList<String> arrayList = this.f34794z0;
        if (arrayList != null && arrayList.size() > 0) {
            ViewFlipper viewFlipper = this.f34773p;
            if (viewFlipper != null && viewFlipper.getCurrentView() != null && !TextUtils.isEmpty(((TextView) this.f34773p.getCurrentView()).getText())) {
                int indexOf = this.f34794z0.indexOf(((TextView) this.f34773p.getCurrentView()).getText().toString());
                if (indexOf >= 0) {
                    ArrayList<String> arrayList2 = this.f34794z0;
                    List<String> subList = arrayList2.subList(indexOf, arrayList2.size());
                    List<String> subList2 = this.f34794z0.subList(0, indexOf);
                    ArrayList<String> arrayList3 = new ArrayList<>();
                    arrayList3.addAll(subList);
                    arrayList3.addAll(subList2);
                    this.f34794z0 = arrayList3;
                }
            }
            IntentUtil.getInstance().goSearchHintActivity(this.f34779s, this.f34794z0, this.A0);
        } else {
            IntentUtil.getInstance().goSearchHintActivity(this.f34779s);
        }
        this.f34757d1 = null;
    }

    void H0(String str) {
        z0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H1() {
        com.join.android.app.common.manager.a.h().j(this.f34779s, this.f34758e, 1);
    }

    void I0(String str) {
        H0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(String str, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        CollectionBeanSub data;
        if (homeBeanDTO.getGameBean() != null) {
            D0(homeBeanDTO);
            return;
        }
        if (com.join.android.app.common.utils.f.j(this.f34779s)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f34779s).getAccountData();
                if (accountData == null) {
                    accountData = new AccountBean();
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.f34779s);
                requestModel.setArgs(new RequestGameIdArgs(str, 1, accountData.getUid()));
                ResponseModel<CollectionBeanSub> body = com.join.mgps.rpc.impl.h.L().J().A0(requestModel.makeSign()).execute().body();
                if (body != null && body.getCode() == 200 && (data = body.getData()) != null) {
                    data.set_from(homeBeanDTO.get_from());
                    data.set_from_type(homeBeanDTO.get_from_type());
                    data.setPosition_path(homeBeanDTO.getG_info() == null ? null : homeBeanDTO.getG_info().getPosition_path());
                    data.setRecPosition(homeBeanDTO.getPosition());
                    homeBeanDTO.setGameBean(data);
                    D0(homeBeanDTO);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showMessage("获取下载信息失败");
            }
        } else {
            showMessage("当前网络不可用");
        }
        y1(homeBeanDTO);
    }

    public void J1(String str) {
        this.f34757d1 = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        if (com.join.android.app.common.utils.f.j(this.f34779s)) {
            try {
                HomeFloatData data = this.f34760f.K0(O0()).getMessages().getData();
                if (data != null) {
                    P1(data);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K1() {
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f34779s);
            requestModel.setArgs(new RequestOnlineCouponArgs());
            com.join.mgps.rpc.impl.h.L().J().W(requestModel.makeSign()).execute().body();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        List<RecomDatabean> data;
        try {
            ResultMainBean<List<RecomDatabean>> l12 = this.f34760f.l1(RequestBeanUtil.getInstance(this.f34779s).getRequestPnAndPc(1, 1));
            if (l12 == null || l12.getFlag() != 1 || (data = l12.getMessages().getData()) == null || data.size() <= 0) {
                return;
            }
            this.L0 = data.get(0).getSub().get(0).getLink_type_val();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void N1() {
        com.join.mgps.Util.r.i(this.f34779s);
    }

    public CommonRequestBean O0() {
        return RequestBeanUtil.getInstance(this.f34779s).getFloatadRequestBean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O1() {
        if (getUserVisibleHint()) {
            com.join.mgps.Util.a0.c0(this.f34779s).O(this.f34779s, 1, new f()).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void P() {
        if (!this.F) {
            this.f34770n0 = "m1";
            this.f34772o0 = 1;
            this.f34788w0 = true;
            this.f34754c.u1();
            e1(this.f34770n0, this.f34772o0);
            Q0();
        }
        this.f34780s0.initStat(this.f34779s);
        if (isVisible()) {
            M0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P1(HomeFloatData homeFloatData) {
        try {
            List<RecomDatabean> pendant = homeFloatData.getPendant();
            List<RecomDatabean> coin_entrance = homeFloatData.getCoin_entrance();
            if (this.f34767l != null) {
                if (pendant != null && pendant.size() > 0) {
                    RecomDatabean recomDatabean = pendant.get(0);
                    this.R0 = recomDatabean;
                    if (recomDatabean != null && recomDatabean.getMain().getAd_switch() == 1) {
                        this.f34767l.setVisibility(0);
                        if (com.join.mgps.Util.d2.i(this.R0.getMain().getPic_remote())) {
                            if (!this.T0.equals(this.R0.getMain().getPic_remote())) {
                                this.T0 = this.R0.getMain().getPic_remote();
                                MyImageLoader.d(this.f34767l, R.drawable.translate_drawable, this.R0.getMain().getPic_remote());
                            }
                        } else {
                            this.f34767l.setVisibility(8);
                        }
                    } else {
                        this.f34767l.setVisibility(8);
                    }
                } else {
                    this.f34767l.setVisibility(8);
                }
            }
            if (coin_entrance == null || coin_entrance.size() <= 0) {
                return;
            }
            this.S0 = coin_entrance.get(0);
            Intent intent = new Intent(f1.a.E);
            intent.putExtra("coinFloatData", this.S0);
            this.f34779s.sendBroadcast(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0() {
        if (com.join.android.app.common.utils.f.j(this.f34779s)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f34779s).getAccountData();
                if (accountData == null) {
                    return;
                }
                ResultMainBean<List<VipPopData>> R0 = this.f34760f.R0(RequestBeanUtil.getInstance(this.f34779s).vipMessage(accountData.getUid()));
                if (R0 != null && R0.getFlag() == 1) {
                    List<VipPopData> data = R0.getMessages().getData();
                    if (data != null && data.size() > 0) {
                        S1(data);
                    } else {
                        e2();
                    }
                } else {
                    e2();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                e2();
                return;
            }
        }
        e2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Q1() {
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.papa.maintab.clicked"})
    public void R0(Intent intent) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R1() {
        com.join.mgps.Util.t0.c("显示主界面main");
        LinearLayout linearLayout = this.f34764i;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f34763h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView2 xRecyclerView2 = this.f34754c;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(0);
        }
        FrameLayout frameLayout = this.f34771o;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        if (this.J) {
            this.J = false;
            TextView textView = this.f34762g;
            if (textView != null) {
                textView.setVisibility(0);
            }
            S0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void S0() {
        TextView textView = this.f34762g;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S1(List<VipPopData> list) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T0(int i2, String str) {
        try {
            this.f34760f.e0(RequestBeanUtil.getInstance(this.f34779s).getIgnoreMessageRequest(AccountUtil_.getInstance_(this.f34779s).getAccountData().getUid(), i2, str));
        } catch (Exception unused) {
        }
    }

    public void T1() {
        com.join.android.app.component.video.c cVar = this.f34776q0;
        if (cVar != null) {
            cVar.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U1() {
        IntentUtil.getInstance().goSearchHintActivity(this.f34779s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007b, code lost:
        if (r1.getSub() == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008f, code lost:
        if (r1.getSub().get(0).getCrc_link_type_val().equals(r8) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0091, code lost:
        r1 = r1.getSub().get(0).getGame_info();
        r1.setIs_bespeak(1);
        r1.setBespeak_count((java.lang.Integer.parseInt(r1.getBespeak_count()) + 1) + "");
        k1();
        O1();
     */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void V1(java.lang.String r8) {
        /*
            r7 = this;
            java.util.List<com.join.mgps.dto.MgpapaMainItemBean> r0 = r7.B
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lc5
            java.lang.Object r1 = r0.next()
            com.join.mgps.dto.MgpapaMainItemBean r1 = (com.join.mgps.dto.MgpapaMainItemBean) r1
            int r2 = r1.getShowtype()
            r3 = 11
            if (r2 != r3) goto L6
            com.join.mgps.business.RecomDatabeanBusiness r2 = r1.getRecomDatabeanLeft()
            com.join.mgps.business.RecomDatabeanBusiness r1 = r1.getRecomDatabeanRight()
            java.lang.String r3 = ""
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L75
            java.util.List r6 = r2.getSub()
            if (r6 == 0) goto L75
            java.util.List r6 = r2.getSub()
            java.lang.Object r6 = r6.get(r5)
            com.join.mgps.dto.AppBeanMain r6 = (com.join.mgps.dto.AppBeanMain) r6
            java.lang.String r6 = r6.getCrc_link_type_val()
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L75
            java.util.List r1 = r2.getSub()
            java.lang.Object r1 = r1.get(r5)
            com.join.mgps.dto.AppBeanMain r1 = (com.join.mgps.dto.AppBeanMain) r1
            com.join.mgps.dto.AppBean r1 = r1.getGame_info()
            r1.setIs_bespeak(r4)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = r1.getBespeak_count()
            int r5 = java.lang.Integer.parseInt(r5)
            int r5 = r5 + r4
            r2.append(r5)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.setBespeak_count(r2)
            r7.k1()
            r7.O1()
            goto L6
        L75:
            if (r1 == 0) goto L6
            java.util.List r2 = r1.getSub()
            if (r2 == 0) goto L6
            java.util.List r2 = r1.getSub()
            java.lang.Object r2 = r2.get(r5)
            com.join.mgps.dto.AppBeanMain r2 = (com.join.mgps.dto.AppBeanMain) r2
            java.lang.String r2 = r2.getCrc_link_type_val()
            boolean r2 = r2.equals(r8)
            if (r2 == 0) goto L6
            java.util.List r1 = r1.getSub()
            java.lang.Object r1 = r1.get(r5)
            com.join.mgps.dto.AppBeanMain r1 = (com.join.mgps.dto.AppBeanMain) r1
            com.join.mgps.dto.AppBean r1 = r1.getGame_info()
            r1.setIs_bespeak(r4)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = r1.getBespeak_count()
            int r5 = java.lang.Integer.parseInt(r5)
            int r5 = r5 + r4
            r2.append(r5)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.setBespeak_count(r2)
            r7.k1()
            r7.O1()
            goto L6
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.PapaMainV3Fragment.V1(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        if (this.f34786v0 == null) {
            this.f34786v0 = new Handler();
        }
        this.f34786v0.postDelayed(new Runnable() { // from class: com.join.mgps.activity.n2
            @Override // java.lang.Runnable
            public final void run() {
                PapaMainV3Fragment.this.c1();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
        SimpleDraweeView simpleDraweeView = this.f34767l;
        if (simpleDraweeView == null || this.f34759e1 || this.f34761f1 || simpleDraweeView.getVisibility() != 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f34767l, "translationX", 0.0f, this.f34779s.getResources().getDimension(R.dimen.wdp113)).setDuration(250L);
        duration.addListener(new c());
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X1(PAPAHomeBeanV7 pAPAHomeBeanV7, String str, int i2, boolean z3) {
        try {
            MGMainActivity mGMainActivity = (MGMainActivity) getActivity();
            if (mGMainActivity != null) {
                mGMainActivity.setHomeTabImage(true);
            }
            V0(pAPAHomeBeanV7.getS_scrolling_txt());
            if (this.E0) {
                Iterator<MgpapaMainItemBean> it2 = this.B.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getPage() != 1) {
                        it2.remove();
                    }
                }
                this.E0 = false;
            }
            new MgpapaMainItemBean();
            if (i2 == 1) {
                this.B0 = z3;
                this.f34753b1 = 0;
                this.C0 = 0;
                this.f34780s0.getLists().clear();
                this.B.clear();
                MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
                mgpapaMainItemBean.setShowtype(33);
                mgpapaMainItemBean.setObject(Float.valueOf(1.0f));
                mgpapaMainItemBean.setPage(i2);
                mgpapaMainItemBean.setMoreType2(this.f34792y0);
                this.B.add(mgpapaMainItemBean);
                MgpapaMainItemBean mgpapaMainItemBean2 = new MgpapaMainItemBean();
                mgpapaMainItemBean2.setShowtype(26);
                if (this.f34792y0 != null) {
                    pAPAHomeBeanV7.getTop_channel().setBg_color(this.f34792y0);
                }
                mgpapaMainItemBean2.setObject(pAPAHomeBeanV7.getTop_channel());
                mgpapaMainItemBean2.setPage(i2);
                this.B.add(mgpapaMainItemBean2);
                MgpapaMainItemBean mgpapaMainItemBean3 = new MgpapaMainItemBean();
                mgpapaMainItemBean3.setShowtype(27);
                mgpapaMainItemBean3.setObject(pAPAHomeBeanV7.getFast_entry());
                mgpapaMainItemBean3.setPage(i2);
                this.B.add(mgpapaMainItemBean3);
                MgpapaMainItemBean mgpapaMainItemBean4 = new MgpapaMainItemBean();
                mgpapaMainItemBean4.setShowtype(33);
                mgpapaMainItemBean4.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp8)));
                mgpapaMainItemBean4.setPage(i2);
                this.B.add(mgpapaMainItemBean4);
                List<PAPAHomeBeanV7.HomeBeanDTO> eo_playing = pAPAHomeBeanV7.getEo_playing();
                if (eo_playing != null && eo_playing.size() > 0) {
                    List<PAPAHomeBeanV7.HomeBeanDTO> h22 = h2(eo_playing, "22-4-");
                    MgpapaMainItemBean mgpapaMainItemBean5 = new MgpapaMainItemBean();
                    mgpapaMainItemBean5.setPage(i2);
                    mgpapaMainItemBean5.setShowtype(31);
                    mgpapaMainItemBean5.setObject(new PAPAItemTitle2("大家都在玩"));
                    this.B.add(mgpapaMainItemBean5);
                    MgpapaMainItemBean mgpapaMainItemBean6 = new MgpapaMainItemBean();
                    mgpapaMainItemBean6.setShowtype(33);
                    mgpapaMainItemBean6.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp12)));
                    mgpapaMainItemBean6.setPage(i2);
                    this.B.add(mgpapaMainItemBean6);
                    int i4 = 0;
                    while (i4 < h22.size() / 2) {
                        int i5 = i4 * 2;
                        i4++;
                        List<PAPAHomeBeanV7.HomeBeanDTO> g22 = g2(h22.subList(i5, i4 * 2), 201, 201);
                        MgpapaMainItemBean mgpapaMainItemBean7 = new MgpapaMainItemBean();
                        mgpapaMainItemBean7.setShowtype(37);
                        mgpapaMainItemBean7.setObject(g22);
                        mgpapaMainItemBean7.setPage(i2);
                        this.B.add(mgpapaMainItemBean7);
                        this.f34784u0.addAll(g22);
                    }
                    MgpapaMainItemBean mgpapaMainItemBean8 = new MgpapaMainItemBean();
                    mgpapaMainItemBean8.setShowtype(39);
                    mgpapaMainItemBean8.setPage(i2);
                    this.B.add(mgpapaMainItemBean8);
                    MgpapaMainItemBean mgpapaMainItemBean9 = new MgpapaMainItemBean();
                    mgpapaMainItemBean9.setShowtype(33);
                    mgpapaMainItemBean9.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp26)));
                    mgpapaMainItemBean9.setPage(i2);
                    this.B.add(mgpapaMainItemBean9);
                    if (!z3) {
                        return;
                    }
                }
                if (pAPAHomeBeanV7.getF_video_ad() != null) {
                    PAPAHomeBeanV7.HomeBeanDTO f22 = f2(pAPAHomeBeanV7.getF_video_ad(), IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS, IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS);
                    f22.setPosition("22-11-1");
                    MgpapaMainItemBean mgpapaMainItemBean10 = new MgpapaMainItemBean();
                    mgpapaMainItemBean10.setShowtype(29);
                    mgpapaMainItemBean10.setObject(f22);
                    mgpapaMainItemBean10.setPage(i2);
                    this.B.add(mgpapaMainItemBean10);
                    this.f34784u0.add(f22);
                    MgpapaMainItemBean mgpapaMainItemBean11 = new MgpapaMainItemBean();
                    mgpapaMainItemBean11.setShowtype(39);
                    mgpapaMainItemBean11.setPage(i2);
                    this.B.add(mgpapaMainItemBean11);
                    MgpapaMainItemBean mgpapaMainItemBean12 = new MgpapaMainItemBean();
                    mgpapaMainItemBean12.setShowtype(33);
                    mgpapaMainItemBean12.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp42)));
                    mgpapaMainItemBean12.setPage(i2);
                    this.B.add(mgpapaMainItemBean12);
                }
                List<PAPAHomeBeanV7.HomeBeanDTO> jys_like = pAPAHomeBeanV7.getJys_like();
                if (jys_like != null && jys_like.size() > 0) {
                    List<PAPAHomeBeanV7.HomeBeanDTO> h23 = h2(jys_like, "22-13-");
                    MgpapaMainItemBean mgpapaMainItemBean13 = new MgpapaMainItemBean();
                    mgpapaMainItemBean13.setShowtype(31);
                    mgpapaMainItemBean13.setObject(new PAPAItemTitle2("像你一样的玩家都喜欢"));
                    mgpapaMainItemBean13.setPage(i2);
                    this.B.add(mgpapaMainItemBean13);
                    MgpapaMainItemBean mgpapaMainItemBean14 = new MgpapaMainItemBean();
                    mgpapaMainItemBean14.setShowtype(33);
                    mgpapaMainItemBean14.setPage(i2);
                    mgpapaMainItemBean14.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp12)));
                    this.B.add(mgpapaMainItemBean14);
                    int i6 = 0;
                    while (i6 < h23.size() / 2) {
                        int i7 = i6 * 2;
                        i6++;
                        List<PAPAHomeBeanV7.HomeBeanDTO> g23 = g2(h23.subList(i7, i6 * 2), 203, 203);
                        MgpapaMainItemBean mgpapaMainItemBean15 = new MgpapaMainItemBean();
                        mgpapaMainItemBean15.setShowtype(38);
                        mgpapaMainItemBean15.setObject(g23);
                        mgpapaMainItemBean15.setPage(i2);
                        this.B.add(mgpapaMainItemBean15);
                        this.f34784u0.addAll(g23);
                    }
                    MgpapaMainItemBean mgpapaMainItemBean16 = new MgpapaMainItemBean();
                    mgpapaMainItemBean16.setShowtype(39);
                    mgpapaMainItemBean16.setPage(i2);
                    this.B.add(mgpapaMainItemBean16);
                    MgpapaMainItemBean mgpapaMainItemBean17 = new MgpapaMainItemBean();
                    mgpapaMainItemBean17.setShowtype(33);
                    mgpapaMainItemBean17.setPage(i2);
                    mgpapaMainItemBean17.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp26)));
                    this.B.add(mgpapaMainItemBean17);
                }
                List<PAPAHomeBeanV7.NgSelectionDTO> j22 = j2(pAPAHomeBeanV7.getNg_selection(), 204);
                if (j22 != null && j22.size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean18 = new MgpapaMainItemBean();
                    mgpapaMainItemBean18.setShowtype(31);
                    mgpapaMainItemBean18.setObject(new PAPAItemTitle2("新游精选"));
                    mgpapaMainItemBean18.setPage(i2);
                    this.B.add(mgpapaMainItemBean18);
                    MgpapaMainItemBean mgpapaMainItemBean19 = new MgpapaMainItemBean();
                    mgpapaMainItemBean19.setShowtype(33);
                    mgpapaMainItemBean19.setPage(i2);
                    mgpapaMainItemBean19.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp24)));
                    this.B.add(mgpapaMainItemBean19);
                    MgpapaMainItemBean mgpapaMainItemBean20 = new MgpapaMainItemBean();
                    mgpapaMainItemBean20.setShowtype(30);
                    mgpapaMainItemBean20.setPage(i2);
                    mgpapaMainItemBean20.setObject(j22);
                    this.B.add(mgpapaMainItemBean20);
                    MgpapaMainItemBean mgpapaMainItemBean21 = new MgpapaMainItemBean();
                    mgpapaMainItemBean21.setShowtype(39);
                    mgpapaMainItemBean21.setPage(i2);
                    this.B.add(mgpapaMainItemBean21);
                    MgpapaMainItemBean mgpapaMainItemBean22 = new MgpapaMainItemBean();
                    mgpapaMainItemBean22.setShowtype(33);
                    mgpapaMainItemBean22.setPage(i2);
                    mgpapaMainItemBean22.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp42)));
                    this.B.add(mgpapaMainItemBean22);
                }
                if (pAPAHomeBeanV7.getS_video_ad() != null) {
                    PAPAHomeBeanV7.HomeBeanDTO f23 = f2(pAPAHomeBeanV7.getS_video_ad(), IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS, IjkMediaPlayer.FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS);
                    f23.setPosition("22-12-1");
                    MgpapaMainItemBean mgpapaMainItemBean23 = new MgpapaMainItemBean();
                    mgpapaMainItemBean23.setShowtype(29);
                    mgpapaMainItemBean23.setObject(f23);
                    mgpapaMainItemBean23.setPage(i2);
                    this.B.add(mgpapaMainItemBean23);
                    this.f34784u0.add(f23);
                    MgpapaMainItemBean mgpapaMainItemBean24 = new MgpapaMainItemBean();
                    mgpapaMainItemBean24.setShowtype(39);
                    mgpapaMainItemBean24.setPage(i2);
                    this.B.add(mgpapaMainItemBean24);
                    MgpapaMainItemBean mgpapaMainItemBean25 = new MgpapaMainItemBean();
                    mgpapaMainItemBean25.setShowtype(33);
                    mgpapaMainItemBean25.setPage(i2);
                    mgpapaMainItemBean25.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp42)));
                    this.B.add(mgpapaMainItemBean25);
                }
                if (pAPAHomeBeanV7.getRanking_list() != null && !TextUtils.isEmpty(pAPAHomeBeanV7.getRanking_list().getTxt()) && pAPAHomeBeanV7.getRanking_list().getList() != null) {
                    List<List<PAPAHomeBeanV7.HomeBeanDTO>> list = pAPAHomeBeanV7.getRanking_list().getList();
                    for (int i8 = 0; i8 < list.size(); i8++) {
                        List<PAPAHomeBeanV7.HomeBeanDTO> list2 = list.get(i8);
                        if (i8 == 0) {
                            list.set(0, g2(h2(list2, "22-15-"), 20501, 20501));
                        } else if (i8 == 1) {
                            list.set(1, g2(h2(list2, "22-16-"), 20502, 20502));
                        } else if (i8 == 2) {
                            list.set(2, g2(h2(list2, "22-17-"), 20503, 20503));
                        }
                    }
                    pAPAHomeBeanV7.getRanking_list().setList(list);
                    MgpapaMainItemBean mgpapaMainItemBean26 = new MgpapaMainItemBean();
                    mgpapaMainItemBean26.setShowtype(32);
                    mgpapaMainItemBean26.setObject(pAPAHomeBeanV7.getRanking_list());
                    mgpapaMainItemBean26.setPage(i2);
                    this.B.add(mgpapaMainItemBean26);
                    MgpapaMainItemBean mgpapaMainItemBean27 = new MgpapaMainItemBean();
                    mgpapaMainItemBean27.setShowtype(39);
                    mgpapaMainItemBean27.setPage(i2);
                    this.B.add(mgpapaMainItemBean27);
                    MgpapaMainItemBean mgpapaMainItemBean28 = new MgpapaMainItemBean();
                    mgpapaMainItemBean28.setShowtype(33);
                    mgpapaMainItemBean28.setPage(i2);
                    mgpapaMainItemBean28.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp32)));
                    this.B.add(mgpapaMainItemBean28);
                }
            }
            List<PAPAHomeBeanV7.RecommendListDTO> recommend_list = pAPAHomeBeanV7.getRecommend_list();
            if (recommend_list != null && recommend_list.size() > 0) {
                for (PAPAHomeBeanV7.RecommendListDTO recommendListDTO : recommend_list) {
                    if (recommendListDTO.getList() != null && recommendListDTO.getList().size() > 0 && (recommendListDTO.getTpl_type().intValue() != 0 || recommendListDTO.getList().size() >= 2)) {
                        MgpapaMainItemBean mgpapaMainItemBean29 = new MgpapaMainItemBean();
                        mgpapaMainItemBean29.setShowtype(31);
                        mgpapaMainItemBean29.setObject(new PAPAItemTitle2(recommendListDTO.getTitle(), recommendListDTO.getSub_title()));
                        mgpapaMainItemBean29.setPage(i2);
                        this.B.add(mgpapaMainItemBean29);
                        List<PAPAHomeBeanV7.HomeBeanDTO> g24 = g2(recommendListDTO.getList(), 206, 206);
                        if (recommendListDTO.getTpl_type().intValue() == 0) {
                            MgpapaMainItemBean mgpapaMainItemBean30 = new MgpapaMainItemBean();
                            mgpapaMainItemBean30.setShowtype(33);
                            mgpapaMainItemBean30.setPage(i2);
                            mgpapaMainItemBean30.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp12)));
                            this.B.add(mgpapaMainItemBean30);
                            List<PAPAHomeBeanV7.HomeBeanDTO> i22 = i2(g24.subList(0, 2));
                            MgpapaMainItemBean mgpapaMainItemBean31 = new MgpapaMainItemBean();
                            mgpapaMainItemBean31.setShowtype(34);
                            mgpapaMainItemBean31.setObject(i22);
                            mgpapaMainItemBean31.setPage(i2);
                            this.B.add(mgpapaMainItemBean31);
                            this.f34784u0.addAll(i22);
                            MgpapaMainItemBean mgpapaMainItemBean32 = new MgpapaMainItemBean();
                            mgpapaMainItemBean32.setShowtype(39);
                            mgpapaMainItemBean32.setPage(i2);
                            this.B.add(mgpapaMainItemBean32);
                            MgpapaMainItemBean mgpapaMainItemBean33 = new MgpapaMainItemBean();
                            mgpapaMainItemBean33.setShowtype(33);
                            mgpapaMainItemBean33.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp26)));
                            mgpapaMainItemBean33.setPage(i2);
                            this.B.add(mgpapaMainItemBean33);
                        } else if (recommendListDTO.getTpl_type().intValue() == 1) {
                            MgpapaMainItemBean mgpapaMainItemBean34 = new MgpapaMainItemBean();
                            mgpapaMainItemBean34.setShowtype(33);
                            mgpapaMainItemBean34.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp24)));
                            mgpapaMainItemBean34.setPage(i2);
                            this.B.add(mgpapaMainItemBean34);
                            List<PAPAHomeBeanV7.HomeBeanDTO> i23 = i2(g24);
                            MgpapaMainItemBean mgpapaMainItemBean35 = new MgpapaMainItemBean();
                            mgpapaMainItemBean35.setShowtype(35);
                            mgpapaMainItemBean35.setObject(i23);
                            mgpapaMainItemBean35.setPage(i2);
                            this.B.add(mgpapaMainItemBean35);
                            this.f34784u0.addAll(i23);
                            MgpapaMainItemBean mgpapaMainItemBean36 = new MgpapaMainItemBean();
                            mgpapaMainItemBean36.setShowtype(39);
                            mgpapaMainItemBean36.setPage(i2);
                            this.B.add(mgpapaMainItemBean36);
                            MgpapaMainItemBean mgpapaMainItemBean37 = new MgpapaMainItemBean();
                            mgpapaMainItemBean37.setShowtype(33);
                            mgpapaMainItemBean37.setPage(i2);
                            mgpapaMainItemBean37.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp42)));
                            this.B.add(mgpapaMainItemBean37);
                        } else if (recommendListDTO.getTpl_type().intValue() == 2) {
                            MgpapaMainItemBean mgpapaMainItemBean38 = new MgpapaMainItemBean();
                            mgpapaMainItemBean38.setShowtype(33);
                            mgpapaMainItemBean38.setPage(i2);
                            mgpapaMainItemBean38.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp24)));
                            this.B.add(mgpapaMainItemBean38);
                            List<PAPAHomeBeanV7.HomeBeanDTO> i24 = i2(g24);
                            MgpapaMainItemBean mgpapaMainItemBean39 = new MgpapaMainItemBean();
                            mgpapaMainItemBean39.setShowtype(36);
                            mgpapaMainItemBean39.setPage(i2);
                            mgpapaMainItemBean39.setObject(i24.get(0));
                            this.B.add(mgpapaMainItemBean39);
                            this.f34784u0.add(i24.get(0));
                            MgpapaMainItemBean mgpapaMainItemBean40 = new MgpapaMainItemBean();
                            mgpapaMainItemBean40.setShowtype(39);
                            mgpapaMainItemBean40.setPage(i2);
                            this.B.add(mgpapaMainItemBean40);
                            MgpapaMainItemBean mgpapaMainItemBean41 = new MgpapaMainItemBean();
                            mgpapaMainItemBean41.setShowtype(33);
                            mgpapaMainItemBean41.setPage(i2);
                            mgpapaMainItemBean41.setObject(Float.valueOf(this.f34779s.getResources().getDimension(R.dimen.wdp42)));
                            this.B.add(mgpapaMainItemBean41);
                        }
                    }
                }
            }
            this.A.L(this.B);
            if (i2 == 1) {
                p1(null, 0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Y0() {
        try {
            if (com.join.mgps.Util.d2.i(this.R0.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(this.f34779s, this.R0.getSub().get(0).getIntentDataBean());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        TextView textView = (TextView) this.f34773p.getCurrentView();
        if (textView != null && !TextUtils.isEmpty(textView.getText().toString())) {
            SearchListActivity1_.s1(this.f34779s).d(textView.getText().toString()).c(false).a(0).start();
            com.papa.sim.statistic.p.l(this.f34779s).h1(com.papa.sim.statistic.Event.clickSearchButton, textView.getText().toString(), ExtFrom.home.name());
        } else {
            IntentUtil.getInstance().goSearchHintActivity(this.f34779s);
        }
        this.f34757d1 = null;
    }

    void Z1(List<RecomDatabeanBusiness> list) {
        try {
            if (this.f34787w == null || list == null || list.size() <= 0) {
                return;
            }
            for (RecomDatabeanBusiness recomDatabeanBusiness : list) {
                List<AppBeanMain> sub = recomDatabeanBusiness.getSub();
                if (sub != null && sub.size() != 0) {
                    boolean z3 = false;
                    AppBean game_info = sub.get(0).getGame_info();
                    if (game_info != null) {
                        if (game_info.getMod_info() != null) {
                            ModInfoBean mod_info = game_info.getMod_info();
                            DownloadTask downloadTask = this.f34787w.get(mod_info.getMain_game_id());
                            boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                            DownloadTask downloadTask2 = this.f34787w.get(mod_info.getMod_game_id());
                            if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                                z3 = true;
                            }
                            if (z3 && z4) {
                                if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.d(downloadTask);
                                }
                            } else if (z3) {
                                if (game_info.getMod_info() != null && downloadTask2.getRef_crc_sign_id().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.d(downloadTask2);
                                }
                            } else if (z4) {
                                if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                    recomDatabeanBusiness.d(downloadTask);
                                }
                            } else {
                                DownloadTask downloadTask3 = this.f34787w.get(mod_info.getMod_game_id());
                                if (downloadTask3 == null) {
                                    downloadTask3 = this.f34787w.get(game_info.getCrc_sign_id());
                                }
                                if (downloadTask3 != null && (downloadTask3.getCrc_link_type_val().equals(game_info.getCrc_sign_id()) || downloadTask3.getRef_crc_sign_id().equals(game_info.getCrc_sign_id()))) {
                                    recomDatabeanBusiness.d(downloadTask3);
                                }
                            }
                        } else {
                            DownloadTask downloadTask4 = this.f34787w.get(game_info.getCrc_sign_id());
                            if (downloadTask4 != null && downloadTask4.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                recomDatabeanBusiness.d(downloadTask4);
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a2() {
        XRecyclerView2 xRecyclerView2 = this.f34754c;
        if (xRecyclerView2 != null) {
            xRecyclerView2.A1();
            this.f34754c.z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.t0.c("MGPapaMainFragmentNew afterview   " + System.currentTimeMillis());
        this.f34760f = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f34779s = getActivity();
        this.E = System.currentTimeMillis();
        this.f34776q0 = new com.join.android.app.component.video.c(this.f34779s, "PapaMainAdapter");
        this.f34778r0 = (MGMainActivity) getActivity();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.I.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.topMargin = com.join.android.app.common.utils.j.v(this.f34779s);
        }
        this.I.setLayoutParams(layoutParams);
        U0();
        showLoding();
        d1();
        Q0();
        L0();
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d1() {
        String d4 = this.f34789x.homeAllDataV3().d();
        PAPAHomeBeanV7 pAPAHomeBeanV7 = com.join.mgps.Util.d2.i(d4) ? (PAPAHomeBeanV7) JsonMapper.getInstance().fromJson(d4, PAPAHomeBeanV7.class) : null;
        if (pAPAHomeBeanV7 != null) {
            X1(pAPAHomeBeanV7, "m1", 1, false);
            com.join.mgps.Util.t0.c("显示主界面   " + System.currentTimeMillis());
            R1();
            this.f34783u = false;
            if (pAPAHomeBeanV7.getTop_channel() != null) {
                this.f34782t0 = pAPAHomeBeanV7.getTop_channel().getBg_color();
            } else {
                this.f34782t0 = "";
            }
            z1();
        } else {
            com.join.mgps.Util.t0.c("数据库没有数据不显示主界面   " + System.currentTimeMillis());
            this.f34783u = true;
        }
        f1();
    }

    void d2(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    u1(downloadTask);
                    return;
                case 3:
                    s1(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    v1(downloadTask);
                    return;
                case 6:
                    t1(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e1(String str, int i2) {
        com.join.mgps.Util.t0.c("开始加载数据   " + System.currentTimeMillis());
        String uid = AccountUtil_.getInstance_(this.f34779s).getUid();
        if (!this.H0 && com.join.android.app.common.utils.f.j(this.f34779s) && !this.F && uid != null && !TextUtils.equals(uid, "0")) {
            this.F = true;
            PAPAHomeBeanV7 pAPAHomeBeanV7 = null;
            try {
                try {
                    AccountBean accountData = AccountUtil_.getInstance_(this.f34779s).getAccountData();
                    RequestModel requestModel = new RequestModel();
                    requestModel.setDefault(this.f34779s);
                    LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
                    luckHistoryrequest.setPage(i2);
                    luckHistoryrequest.setUid(accountData.getUid());
                    requestModel.setArgs(luckHistoryrequest);
                    ResponseModel<PAPAHomeBeanV7> body = com.join.mgps.rpc.impl.h.L().J().C0(requestModel.makeSign()).execute().body();
                    com.join.mgps.Util.t0.c("开始加载数据完成   " + System.currentTimeMillis());
                    if (body != null && body.getCode() == 200) {
                        PAPAHomeBeanV7 data = body.getData();
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("lodeBannerDate: ");
                            sb.append(data.isEmpty());
                            sb.append("  ");
                            sb.append(this.f34772o0);
                            sb.append("  ");
                            sb.append(this.f34788w0);
                            if (data.isEmpty()) {
                                this.f34788w0 = false;
                                j1();
                            } else {
                                this.f34788w0 = true;
                                this.f34772o0 = i2 + 1;
                            }
                            if (i2 == 1) {
                                A1(data);
                                if (data.getTop_channel() != null) {
                                    this.f34782t0 = data.getTop_channel().getBg_color();
                                } else {
                                    this.f34782t0 = "";
                                }
                                z1();
                                e1(this.f34770n0, this.f34772o0);
                            }
                            R1();
                            pAPAHomeBeanV7 = data;
                        } catch (Exception e4) {
                            e = e4;
                            pAPAHomeBeanV7 = data;
                            e.printStackTrace();
                            this.f34788w0 = false;
                            j1();
                            if (this.f34783u && i2 == 1) {
                                showLodingFailed();
                            }
                            a2();
                            this.F = false;
                            if (pAPAHomeBeanV7 == null) {
                                return;
                            }
                            X1(pAPAHomeBeanV7, str, i2, true);
                        } catch (Throwable th) {
                            th = th;
                            pAPAHomeBeanV7 = data;
                            a2();
                            this.F = false;
                            if (pAPAHomeBeanV7 != null) {
                                X1(pAPAHomeBeanV7, str, i2, true);
                            }
                            throw th;
                        }
                    } else {
                        this.f34788w0 = false;
                        j1();
                        if (this.f34783u && i2 == 1) {
                            showLodingFailed();
                        } else {
                            R1();
                        }
                    }
                    a2();
                    this.F = false;
                    if (pAPAHomeBeanV7 == null) {
                        return;
                    }
                } catch (Exception e5) {
                    e = e5;
                }
                X1(pAPAHomeBeanV7, str, i2, true);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            if (this.f34783u && i2 == 1 && !this.F && !this.H0) {
                showLodingFailed();
            }
            a2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e2() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1() {
        e1("m1", 1);
    }

    public void g1() {
        x1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void h1() {
        this.f34754c.smoothScrollToPosition(0);
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f34777r.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() != 0) {
                behavior2.setTopAndBottomOffset(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i1() {
        com.join.android.app.common.manager.a.h().j(this.f34779s, this.f34756d, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j1() {
        XRecyclerView2 xRecyclerView2 = this.f34754c;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setNoMore();
        }
        W0();
    }

    void k1() {
        t4 t4Var = this.A;
        if (t4Var != null) {
            t4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"android.net.wifi.WIFI_STATE_CHANGED", "android.net.wifi.STATE_CHANGE", "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.SCAN_RESULTS"})
    public void m1(Intent intent) {
        if (this.f34754c != null && !this.D0 && com.join.android.app.common.utils.f.j(this.f34779s)) {
            this.f34788w0 = true;
            this.f34754c.setNoMoreView(false);
        }
        this.D0 = com.join.android.app.common.utils.f.j(this.f34779s);
    }

    public void n1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void o1(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        if (this.A == null || this.f34754c.isComputingLayout()) {
            return;
        }
        this.A.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getActivity() instanceof MGMainActivity) {
            this.G = (MGMainActivity) getActivity();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.android.app.component.video.c cVar;
        com.join.mgps.Util.c0.a().e(this);
        this.K = true;
        MGMainActivity mGMainActivity = this.f34778r0;
        if (mGMainActivity != null && mGMainActivity.getPositionNum() == 3 && (cVar = this.f34776q0) != null) {
            cVar.z();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            d2(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    d2(a4, 6);
                } else if (c4 == 7) {
                    d2(a4, 3);
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.f34787w;
                    if (map != null && !map.isEmpty()) {
                        c2();
                    }
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            d2(a4, 7);
                            break;
                        case 12:
                            d2(a4, 8);
                            break;
                        case 13:
                            d2(a4, 9);
                            break;
                    }
                }
            }
            d2(a4, 5);
        } else {
            d2(a4, 2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("receiveStart: ");
        sb.append(lVar.c());
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        com.join.mgps.Util.t0.d("notify time", com.join.mgps.Util.x.w(currentTimeMillis));
        long j4 = this.E;
        if (currentTimeMillis - j4 > 3600000 && j4 != 0) {
            long currentTimeMillis2 = System.currentTimeMillis();
            this.E = currentTimeMillis2;
            com.join.mgps.Util.t0.d("notify time lastUpdateTime", com.join.mgps.Util.x.w(currentTimeMillis2));
            this.J = true;
            e1(this.f34770n0, this.f34772o0);
        } else if (j4 == 0) {
            this.E = System.currentTimeMillis();
            com.join.mgps.Util.t0.d("notify time lastUpdateTime2", com.join.mgps.Util.x.w(currentTimeMillis));
        }
        M0();
        E1(false);
        C0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar;
        super.onPause();
        this.J0 = false;
        MGMainActivity mGMainActivity = this.f34778r0;
        if (mGMainActivity == null || mGMainActivity.getPositionNum() != 3 || (cVar = this.f34776q0) == null) {
            return;
        }
        cVar.A();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        List<MgpapaMainItemBean> list;
        super.onResume();
        this.J0 = true;
        setUserVisibleHint(true);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f34781t = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f34781t) {
                this.f34787w.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        } else {
            this.f34781t = new ArrayList();
        }
        Z1(this.f34785v);
        MGMainActivity mGMainActivity = this.f34778r0;
        if (mGMainActivity != null && mGMainActivity.getPositionNum() == 3) {
            com.join.android.app.component.video.c cVar = this.f34776q0;
            if (cVar != null) {
                cVar.B();
            }
            this.K0.sendEmptyMessageDelayed(1, 700L);
        }
        if (this.W0 && (list = this.B) != null && list.size() > 0) {
            p1(null, 0);
        }
        E1(true);
        C0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.P0 = getResources().getDimensionPixelOffset(R.dimen.round_pointmagin_l_r_size);
        this.Q0 = getResources().getDimensionPixelOffset(R.dimen.round_point_size);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        setUserVisibleHint(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        this.f34770n0 = "m1";
        this.f34772o0 = 1;
        this.f34788w0 = true;
        e1("m1", 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.t0.c("显示加载中");
        LinearLayout linearLayout = this.f34763h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f34764i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView2 xRecyclerView2 = this.f34754c;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f34764i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f34763h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView2 xRecyclerView2 = this.f34754c;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(8);
        }
        FrameLayout frameLayout = this.f34771o;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f34779s).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void w1(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            if (com.join.mgps.Util.d2.i(stringExtra)) {
                V1(stringExtra);
            }
        }
    }

    public void x0() {
        com.join.android.app.component.video.c cVar;
        if (this.f34754c == null || (cVar = this.f34776q0) == null) {
            return;
        }
        cVar.F(1);
        this.f34776q0.n(this.f34754c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        homeBeanDTO.setRequesting(false);
        this.A.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void z0(String str) {
        String str2;
        if (com.join.android.app.common.utils.f.j(this.f34779s)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f34779s).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f34779s.getPackageManager().getPackageInfo(this.f34779s.getPackageName(), 0);
                str2 = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                str2 = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str2);
            requestdetialFolowAndBeSpeak.setGame_id(str);
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
            ResultMainBean d02 = this.f34760f.d0(RequestBeanUtil.getInstance(this.f34779s).getDetialFollowAnd(requestdetialFolowAndBeSpeak));
            if (d02 == null || d02.getFlag() != 1) {
                return;
            }
            V1(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z1() {
        int measuredHeight;
        FrameLayout frameLayout = this.f34771o;
        if (frameLayout != null && (measuredHeight = frameLayout.getMeasuredHeight()) > 0) {
            double d4 = measuredHeight;
            Double.isNaN(d4);
            double dimension = measuredHeight + this.f34779s.getResources().getDimension(R.dimen.wdp300);
            Double.isNaN(dimension);
            String s12 = UtilsMy.s1(this.f34782t0);
            this.f34782t0 = s12;
            this.f34792y0 = UtilsMy.R(s12, "#F7F8F9", (d4 * 1.0d) / dimension);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor(this.f34782t0), Color.parseColor(this.f34792y0)});
            gradientDrawable.setGradientType(0);
            this.f34771o.setBackground(gradientDrawable);
        }
    }
}
