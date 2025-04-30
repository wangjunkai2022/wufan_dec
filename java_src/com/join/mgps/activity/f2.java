package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.CloseableWrappedIterable;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.c70;
import com.join.kotlin.presenter.HomeViewModle;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.o0;
import com.join.mgps.adapter.h4;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.LoopViewPager;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.AppBeanMainTable;
import com.join.mgps.db.tables.AppBeanTable;
import com.join.mgps.db.tables.AppMoreBeanTable;
import com.join.mgps.db.tables.BannerAndTablesTable;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.ModleBeanTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.RecomDatabeanTable;
import com.join.mgps.db.tables.TipBeanTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.AppMoreBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.BannerImage;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameDiscoverChannelBean;
import com.join.mgps.dto.GameinterestingBean;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.MgpapaMainItemBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ModleBean;
import com.join.mgps.dto.PAPAHomeBeanV6;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.ExtFrom;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
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
/* compiled from: PapaMainFragment.java */
@EFragment(R.layout.mgpapa_mainfragment_new_layout)
/* loaded from: classes.dex */
public class f2 extends o0.a implements View.OnClickListener, AbsListView.OnScrollListener {
    private static final String U0 = "MGPapaMainFragmentNew";
    @Pref
    PrefDef_ D;
    private LinearLayout E;
    com.join.mgps.customview.t E0;
    private LinearLayout F;
    private h4 G;
    private List<MgpapaMainItemBean> H;
    private int H0;
    private int I;
    private int I0;
    private int J;
    private RecomDatabean J0;
    private long K;
    private RecomDatabean K0;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    XListView2 f37000c;
    @StringRes(resName = "net_excption")

    /* renamed from: d  reason: collision with root package name */
    String f37001d;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: e  reason: collision with root package name */
    String f37002e;

    /* renamed from: f  reason: collision with root package name */
    com.join.mgps.rpc.d f37003f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f37004g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f37005h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f37006i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f37007j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    View f37008k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    SimpleDraweeView f37009l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f37010m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f37011n;

    /* renamed from: o  reason: collision with root package name */
    ViewFlipper f37013o;

    /* renamed from: o0  reason: collision with root package name */
    private FrameLayout f37014o0;

    /* renamed from: p  reason: collision with root package name */
    private Context f37015p;

    /* renamed from: q  reason: collision with root package name */
    private com.join.mgps.adapter.a f37017q;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    PtrClassicFrameLayout f37018q0;

    /* renamed from: r  reason: collision with root package name */
    private List<BannerBean> f37019r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    View f37020r0;

    /* renamed from: s  reason: collision with root package name */
    private LinearLayout f37021s;

    /* renamed from: t  reason: collision with root package name */
    private LinearLayout f37023t;

    /* renamed from: u  reason: collision with root package name */
    private LinearLayout f37025u;

    /* renamed from: v  reason: collision with root package name */
    private LinearLayout f37027v;

    /* renamed from: w  reason: collision with root package name */
    private List<DownloadTask> f37029w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f37031x;

    /* renamed from: x0  reason: collision with root package name */
    com.join.android.app.component.video.c f37032x0;

    /* renamed from: y  reason: collision with root package name */
    private ArrayList<BannerImage> f37033y;

    /* renamed from: y0  reason: collision with root package name */
    MGMainActivity f37034y0;

    /* renamed from: z  reason: collision with root package name */
    private ViewGroup f37035z;

    /* renamed from: z0  reason: collision with root package name */
    HomeViewModle f37036z0;
    private ImageView[] A = null;
    List<RecomDatabeanBusiness> B = null;
    private Map<String, DownloadTask> C = new ConcurrentHashMap();

    /* renamed from: n0  reason: collision with root package name */
    private boolean f37012n0 = false;

    /* renamed from: p0  reason: collision with root package name */
    com.join.mgps.pref.f f37016p0 = null;

    /* renamed from: s0  reason: collision with root package name */
    private boolean f37022s0 = false;

    /* renamed from: t0  reason: collision with root package name */
    private boolean f37024t0 = false;

    /* renamed from: u0  reason: collision with root package name */
    private String f37026u0 = "m1";

    /* renamed from: v0  reason: collision with root package name */
    private int f37028v0 = 1;

    /* renamed from: w0  reason: collision with root package name */
    private int f37030w0 = 0;
    int A0 = 0;
    boolean B0 = true;
    Handler C0 = new e();
    private String D0 = "28";
    private int F0 = 0;
    private int G0 = 0;
    private String L0 = "";
    long M0 = 0;
    long N0 = 0;
    Handler O0 = new Handler();
    Runnable P0 = new Runnable() { // from class: com.join.mgps.activity.e2
        @Override // java.lang.Runnable
        public final void run() {
            f2.this.w0();
        }
    };
    boolean Q0 = true;
    private boolean R0 = true;
    private SparseArray S0 = new SparseArray(0);
    GestureDetector T0 = new GestureDetector(new b());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37037a;

        a(List list) {
            this.f37037a = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int currentItem = ((o0.a) f2.this).f27730b.getCurrentItem() % this.f37037a.size();
            if (this.f37037a.size() < currentItem) {
                currentItem = 110;
            }
            f2.this.k1(this.f37037a, currentItem);
        }
    }

    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            Fresco.getImagePipeline().I();
            return super.onFling(motionEvent, motionEvent2, f4, f5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VipPopData f37040a;

        c(VipPopData vipPopData) {
            this.f37040a = vipPopData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDataBean = this.f37040a.getIntentDataBean();
            if (intentDataBean.getLink_type() == 777) {
                IntentUtil.getInstance().goShareWebActivity(f2.this.f37015p, "http://www.baidu.com");
            } else if (intentDataBean.getLink_type() == 888) {
                IntentUtil.getInstance().goShareWebActivity(f2.this.f37015p, "http://www.baidu.com");
            } else if (intentDataBean.getLink_type() == 999) {
                IntentUtil.getInstance().goVip(f2.this.f37015p);
            } else if (intentDataBean.getLink_type() == 0) {
            } else {
                IntentUtil.getInstance().intentActivity(f2.this.f37015p, intentDataBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f37042a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ VipPopData f37043b;

        d(View view, VipPopData vipPopData) {
            this.f37042a = view;
            this.f37043b = vipPopData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f2.this.f37013o.removeView(this.f37042a);
            f2 f2Var = f2.this;
            int i2 = f2Var.A0 - 1;
            f2Var.A0 = i2;
            if (i2 == 1) {
                f2Var.f37013o.stopFlipping();
            } else if (i2 == 0) {
                f2Var.f37013o.setVisibility(8);
            }
            f2.this.t0(this.f37043b.getId(), this.f37043b.getType());
        }
    }

    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    class e extends Handler {
        e() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                f2 f2Var = f2.this;
                com.join.android.app.component.video.c cVar = f2Var.f37032x0;
                if (cVar != null) {
                    cVar.C(f2Var.B0);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
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
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class g implements o1.e {
        g() {
        }

        @Override // o1.e
        public void a(String str, int i2) {
            if (i2 == 1 || IntentUtil.getInstance().goLoginNetGame(f2.this.f37015p)) {
                return;
            }
            f2.this.i0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class h implements com.join.mgps.customview.j {
        h() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (f2.this.f37012n0) {
                return;
            }
            f2.this.f37026u0 = "m1";
            f2.this.f37028v0 = 1;
            f2.this.f37030w0 = 0;
            f2 f2Var = f2.this;
            f2Var.A0(f2Var.f37026u0, f2.this.f37028v0);
            f2.this.p0();
            f2.this.k0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class i implements com.join.mgps.customview.i {
        i() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            f2 f2Var = f2.this;
            f2Var.A0(f2Var.f37026u0, f2.this.f37028v0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class j implements View.OnTouchListener {
        j() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            f2.this.T0.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class k implements ViewPager.OnPageChangeListener {
        k() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            if (i2 == 0) {
                ((o0.a) f2.this).f27729a.sendEmptyMessageDelayed(1, 5000L);
            } else if (i2 != 1) {
            } else {
                ((o0.a) f2.this).f27729a.sendEmptyMessage(2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            try {
                ((o0.a) f2.this).f27729a.sendMessage(Message.obtain(((o0.a) f2.this).f27729a, 4, i2, 0));
                int size = i2 % f2.this.f37033y.size();
                for (int i4 = 0; i4 < f2.this.f37033y.size(); i4++) {
                    f2.this.A[size].setBackgroundResource(R.drawable.pointselected);
                    if (size != i4) {
                        f2.this.A[i4].setBackgroundResource(R.drawable.pointnormal);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    public class l {

        /* renamed from: a  reason: collision with root package name */
        int f37052a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f37053b = 0;

        l() {
        }
    }

    /* compiled from: PapaMainFragment.java */
    /* loaded from: classes3.dex */
    class m {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f37055a;

        /* renamed from: b  reason: collision with root package name */
        private TextView f37056b;

        /* renamed from: c  reason: collision with root package name */
        private ImageView f37057c;

        m() {
        }
    }

    private RecomDatabeanBusiness J0(RecomDatabean recomDatabean) {
        if (recomDatabean != null) {
            return new RecomDatabeanBusiness(recomDatabean);
        }
        return null;
    }

    private List<RecomDatabeanBusiness> K0(List<RecomDatabean> list, List<RecomDatabeanBusiness> list2) {
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

    private List<RecomDatabean> L0(int i2) {
        ArrayList arrayList = new ArrayList();
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("dataFrom", Integer.valueOf(i2));
            List<RecomDatabeanTable> h4 = n1.f0.p().h(hashMap);
            for (int i4 = 0; i4 < h4.size(); i4++) {
                RecomDatabeanTable recomDatabeanTable = h4.get(i4);
                RecomDatabean recomDatabean = new RecomDatabean();
                recomDatabean.setDataFrom(recomDatabeanTable.getDataFrom());
                ModleBeanTable main = recomDatabeanTable.getMain();
                recomDatabean.setMain(main != null ? main.getModleBean() : null);
                CloseableWrappedIterable<AppMoreBeanTable> wrappedIterable = recomDatabeanTable.getMore().getWrappedIterable();
                ArrayList arrayList2 = new ArrayList();
                for (AppMoreBeanTable appMoreBeanTable : wrappedIterable) {
                    arrayList2.add(appMoreBeanTable.getAppMoreBean());
                    recomDatabean.setMore(arrayList2);
                }
                CloseableWrappedIterable<AppBeanMainTable> wrappedIterable2 = recomDatabeanTable.getSub().getWrappedIterable();
                ArrayList arrayList3 = new ArrayList();
                for (AppBeanMainTable appBeanMainTable : wrappedIterable2) {
                    AppBeanMain appbeanMain = appBeanMainTable.getAppbeanMain();
                    arrayList3.add(appbeanMain);
                    AppBeanTable game_info = appBeanMainTable.getGame_info();
                    if (game_info != null) {
                        AppBean appBean = game_info.getAppBean();
                        if (game_info.getTag_info() != null) {
                            ArrayList arrayList4 = new ArrayList();
                            for (TipBeanTable tipBeanTable : game_info.getTag_info().getWrappedIterable()) {
                                arrayList4.add(tipBeanTable.getTipBean());
                            }
                            appBean.setTag_info(arrayList4);
                        }
                        if (game_info.getTp_down_url() != null) {
                            ArrayList arrayList5 = new ArrayList();
                            for (DownloadUrlTable downloadUrlTable : game_info.getTp_down_url().getWrappedIterable()) {
                                arrayList5.add(downloadUrlTable.getDownUrlBean());
                            }
                            appBean.setTp_down_url(arrayList5);
                        }
                        appbeanMain.setGame_info(appBean);
                    }
                }
                recomDatabean.setSub(arrayList3);
                arrayList.add(recomDatabean);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        r2 = r7.B.get(r1).getSub().get(0).getGame_info();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
        if (r2 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
        if (r2.getMod_info() == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        r3 = r7.C.get(r2.getMod_info().getMod_game_id());
        r5 = r7.C.get(r2.getCrc_sign_id());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0073, code lost:
        if (r3 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
        if (r5 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        r7.B.get(r1).d(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0083, code lost:
        if (r3 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
        r7.B.get(r1).d(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        if (r5 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0093, code lost:
        r7.B.get(r1).d(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ab, code lost:
        if (r2.getCrc_sign_id().equals(r8.getCrc_link_type_val()) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ad, code lost:
        r7.B.get(r1).d(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c5, code lost:
        if (r2.getCrc_sign_id().equals(r8.getCrc_link_type_val()) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c7, code lost:
        r7.B.get(r1).d(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d2, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        r7.C.remove(r1.getCrc_link_type_val());
        r0.remove();
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r1 >= r7.B.size()) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void M0(com.github.snowdream.android.app.downloader.DownloadTask r8) {
        /*
            r7 = this;
            java.util.List<com.github.snowdream.android.app.downloader.DownloadTask> r0 = r7.f37029w     // Catch: java.lang.Exception -> Ld6
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> Ld6
        L6:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> Ld6
            if (r1 == 0) goto Lda
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> Ld6
            com.github.snowdream.android.app.downloader.DownloadTask r1 = (com.github.snowdream.android.app.downloader.DownloadTask) r1     // Catch: java.lang.Exception -> Ld6
            java.lang.String r2 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r3 = r8.getCrc_link_type_val()     // Catch: java.lang.Exception -> Ld6
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Ld6
            if (r2 == 0) goto L6
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r2 = r7.C     // Catch: java.lang.Exception -> Ld6
            java.lang.String r1 = r1.getCrc_link_type_val()     // Catch: java.lang.Exception -> Ld6
            r2.remove(r1)     // Catch: java.lang.Exception -> Ld6
            r0.remove()     // Catch: java.lang.Exception -> Ld6
            r0 = 0
            r1 = 0
        L2e:
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            int r2 = r2.size()     // Catch: java.lang.Exception -> Ld6
            if (r1 >= r2) goto Lda
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.business.RecomDatabeanBusiness r2 = (com.join.mgps.business.RecomDatabeanBusiness) r2     // Catch: java.lang.Exception -> Ld6
            java.util.List r2 = r2.getSub()     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.dto.AppBeanMain r2 = (com.join.mgps.dto.AppBeanMain) r2     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.dto.AppBean r2 = r2.getGame_info()     // Catch: java.lang.Exception -> Ld6
            if (r2 != 0) goto L50
            goto Ld2
        L50:
            com.join.mgps.dto.ModInfoBean r3 = r2.getMod_info()     // Catch: java.lang.Exception -> Ld6
            r4 = 0
            if (r3 == 0) goto Lb9
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r7.C     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.dto.ModInfoBean r5 = r2.getMod_info()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r5 = r5.getMod_game_id()     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r3 = r3.get(r5)     // Catch: java.lang.Exception -> Ld6
            com.github.snowdream.android.app.downloader.DownloadTask r3 = (com.github.snowdream.android.app.downloader.DownloadTask) r3     // Catch: java.lang.Exception -> Ld6
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r5 = r7.C     // Catch: java.lang.Exception -> Ld6
            java.lang.String r6 = r2.getCrc_sign_id()     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Exception -> Ld6
            com.github.snowdream.android.app.downloader.DownloadTask r5 = (com.github.snowdream.android.app.downloader.DownloadTask) r5     // Catch: java.lang.Exception -> Ld6
            if (r3 != 0) goto L83
            if (r5 != 0) goto L83
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.business.RecomDatabeanBusiness r2 = (com.join.mgps.business.RecomDatabeanBusiness) r2     // Catch: java.lang.Exception -> Ld6
            r2.d(r4)     // Catch: java.lang.Exception -> Ld6
            goto Ld2
        L83:
            if (r3 == 0) goto L91
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.business.RecomDatabeanBusiness r2 = (com.join.mgps.business.RecomDatabeanBusiness) r2     // Catch: java.lang.Exception -> Ld6
            r2.d(r3)     // Catch: java.lang.Exception -> Ld6
            goto Ld2
        L91:
            if (r5 == 0) goto L9f
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.business.RecomDatabeanBusiness r2 = (com.join.mgps.business.RecomDatabeanBusiness) r2     // Catch: java.lang.Exception -> Ld6
            r2.d(r5)     // Catch: java.lang.Exception -> Ld6
            goto Ld2
        L9f:
            java.lang.String r2 = r2.getCrc_sign_id()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r3 = r8.getCrc_link_type_val()     // Catch: java.lang.Exception -> Ld6
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Ld6
            if (r2 == 0) goto Ld2
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.business.RecomDatabeanBusiness r2 = (com.join.mgps.business.RecomDatabeanBusiness) r2     // Catch: java.lang.Exception -> Ld6
            r2.d(r4)     // Catch: java.lang.Exception -> Ld6
            goto Ld2
        Lb9:
            java.lang.String r2 = r2.getCrc_sign_id()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r3 = r8.getCrc_link_type_val()     // Catch: java.lang.Exception -> Ld6
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Ld6
            if (r2 == 0) goto Ld2
            java.util.List<com.join.mgps.business.RecomDatabeanBusiness> r2 = r7.B     // Catch: java.lang.Exception -> Ld6
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Exception -> Ld6
            com.join.mgps.business.RecomDatabeanBusiness r2 = (com.join.mgps.business.RecomDatabeanBusiness) r2     // Catch: java.lang.Exception -> Ld6
            r2.d(r4)     // Catch: java.lang.Exception -> Ld6
        Ld2:
            int r1 = r1 + 1
            goto L2e
        Ld6:
            r8 = move-exception
            r8.printStackTrace()
        Lda:
            r7.G0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.f2.M0(com.github.snowdream.android.app.downloader.DownloadTask):void");
    }

    private void N0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.C;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            DownloadTask downloadTask2 = map.get(downloadTask.getCrc_link_type_val());
            if (downloadTask2 != null) {
                downloadTask2.setStatus(downloadTask.getStatus());
                G0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void O0(DownloadTask downloadTask) {
        try {
            if (this.C.containsKey(downloadTask.getCrc_link_type_val())) {
                UtilsMy.C3(this.C.get(downloadTask.getCrc_link_type_val()));
                this.C.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                if (this.f37029w == null) {
                    this.f37029w = new ArrayList();
                }
                if (this.C == null) {
                    this.C = new HashMap();
                }
                this.f37029w.add(downloadTask);
                this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
            p1(downloadTask);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        G0();
    }

    private void P0(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.C;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            UtilsMy.C3(this.C.get(downloadTask.getCrc_link_type_val()));
            if (this.f37029w == null) {
                this.f37029w = new ArrayList();
            }
            this.f37029w.add(downloadTask);
            this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        p1(downloadTask);
        DownloadTask downloadTask2 = this.C.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        G0();
    }

    private void T0(List<RecomDatabean> list, int i2) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            try {
                RecomDatabean recomDatabean = list.get(i4);
                RecomDatabeanTable recomDatabeanTable = new RecomDatabeanTable();
                recomDatabeanTable.setDataFrom(i2);
                ModleBean main = recomDatabean.getMain();
                if (main != null) {
                    ModleBeanTable modleBeanTable = new ModleBeanTable(main);
                    try {
                        n1.c0.n().m(modleBeanTable);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    recomDatabeanTable.setMain(modleBeanTable);
                }
                try {
                    n1.f0.p().m(recomDatabeanTable);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                List<AppBeanMain> sub = recomDatabean.getSub();
                if (sub != null) {
                    for (int i5 = 0; i5 < sub.size(); i5++) {
                        AppBeanMain appBeanMain = sub.get(i5);
                        AppBeanMainTable appBeanMainTable = new AppBeanMainTable(appBeanMain);
                        appBeanMainTable.setRecomDatabeanTable(recomDatabeanTable);
                        AppBean game_info = appBeanMain.getGame_info();
                        if (game_info != null) {
                            AppBeanTable appBeanTable = new AppBeanTable(game_info);
                            n1.b.n().m(appBeanTable);
                            ArrayList<TipBean> tag_info = game_info.getTag_info();
                            if (tag_info == null) {
                                tag_info = new ArrayList<>();
                            }
                            for (int i6 = 0; i6 < tag_info.size(); i6++) {
                                TipBeanTable tipBeanTable = new TipBeanTable(tag_info.get(i6));
                                tipBeanTable.setAppBeanTable(appBeanTable);
                                n1.k0.n().m(tipBeanTable);
                            }
                            List<DownloadUrlBean> tp_down_url = game_info.getTp_down_url();
                            if (tp_down_url == null) {
                                tp_down_url = new ArrayList<>();
                            }
                            for (int i7 = 0; i7 < tp_down_url.size(); i7++) {
                                DownloadUrlTable downloadUrlTable = new DownloadUrlTable(tp_down_url.get(i7));
                                downloadUrlTable.setAppBeanTable(appBeanTable);
                                n1.l.n().m(downloadUrlTable);
                            }
                            appBeanMainTable.setGame_info(appBeanTable);
                        }
                        n1.a.n().m(appBeanMainTable);
                    }
                }
                List<AppMoreBean> more = recomDatabean.getMore();
                if (more != null && more.size() > 0) {
                    AppMoreBeanTable appMoreBeanTable = new AppMoreBeanTable(more.get(0));
                    appMoreBeanTable.setRecomDatabeanTable(recomDatabeanTable);
                    n1.c.n().k(appMoreBeanTable);
                }
            } catch (Exception e6) {
                e6.printStackTrace();
                return;
            }
        }
    }

    private void V0(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("22-");
        sb.append(str);
        com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(this.f37015p);
        String name = ExtFrom.home.name();
        l4.s(name, "22-" + str, AccountUtil_.getInstance_(this.f37015p).getUid());
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void W0(java.lang.String r12, java.lang.String r13, com.psk.eventmodule.StatFactory.VolcanoOther r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.f2.W0(java.lang.String, java.lang.String, com.psk.eventmodule.StatFactory$VolcanoOther, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X0 */
    public void w0() {
        MgpapaMainItemBean mgpapaMainItemBean;
        int showtype;
        List<AppBeanMain> sub;
        XListView2 xListView2;
        if (this.J == 0 && this.I == 1 && (xListView2 = this.f37000c) != null) {
            this.I = xListView2.getLastVisiblePosition();
            this.J = this.f37000c.getFirstVisiblePosition();
        }
        int i2 = this.J;
        if (i2 == 0 && this.I == 0) {
            return;
        }
        if (i2 == 0 && this.I == 1) {
            return;
        }
        this.Q0 = false;
        for (int i4 = 0; i4 < this.H.size(); i4++) {
            if (i4 <= this.I && i4 >= this.J && (((showtype = (mgpapaMainItemBean = this.H.get(i4)).getShowtype()) == 3 || showtype == 13) && (sub = mgpapaMainItemBean.getRecomDatabeanLeft().getSub()) != null && sub.size() > 0)) {
                AppBean game_info = sub.get(0).getGame_info();
                W0(mgpapaMainItemBean.getMoreType2(), game_info.getGame_id(), game_info.getPosition_path(), UtilsMy.F1(game_info.getTag_info()));
            }
        }
    }

    private void Z0(List<RecomDatabean> list, int i2, int i4) {
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

    private void a1(MgpapaMainItemBean mgpapaMainItemBean) {
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

    private void c1(List<RecomDatabean> list, List<RecomDatabean> list2, String str) {
        List<RecomDatabeanBusiness> K0 = K0(list, null);
        this.B.addAll(K0);
        if (K0 == null || K0.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < K0.size(); i2++) {
            MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
            if (i2 != 0) {
                mgpapaMainItemBean.setMoreType2(str + (i2 + 1) + "-");
                mgpapaMainItemBean.setShowtype(3);
            } else if (list2 != null) {
                RecomDatabean recomDatabean = list2.get(0);
                mgpapaMainItemBean.setShowtype(13);
                K0.get(i2).getMain().setPic_remote(recomDatabean.getMain().getPic_remote());
                K0.get(i2).getMain().setVedio_url(recomDatabean.getMain().getVedio_url());
                mgpapaMainItemBean.setMoreType2(str + "x");
            }
            mgpapaMainItemBean.setMoreType(i2);
            mgpapaMainItemBean.setRecomDatabeanLeft(K0.get(i2));
            a1(mgpapaMainItemBean);
            this.H.add(mgpapaMainItemBean);
        }
    }

    private List<BannerBean> j0() {
        ArrayList arrayList = new ArrayList();
        for (BannerAndTablesTable bannerAndTablesTable : n1.d.n().d()) {
            arrayList.add(bannerAndTablesTable.getBannerBean());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1(List<BannerBean> list, int i2) {
        if (list == null || list.size() == 0) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(list.get(i2).getJump_type());
        intentDateBean.setLink_type(list.get(i2).getLink_type());
        intentDateBean.setLink_type_val(list.get(i2).getLink_type_val());
        if (list.get(i2).getLink_type() == 1) {
            intentDateBean.setTpl_type(list.get(i2).getGame_info_tpl_type());
            intentDateBean.setExtBean(new ExtBean(105));
        } else {
            intentDateBean.setTpl_type(list.get(i2).getTpl_type());
        }
        intentDateBean.setCrc_link_type_val(list.get(i2).getCrc_link_type_val());
        intentDateBean.setObject(list.get(i2).getTitle());
        V0("1-" + (i2 + 1) + "");
        IntentUtil.getInstance().intentActivity(this.f37015p, intentDateBean);
    }

    private void m0() {
        Bundle bundle = new Bundle();
        bundle.putInt("localType", 1);
        com.join.mgps.pref.f fVar = this.f37016p0;
        if (fVar != null) {
            fVar.callOnlineCoupon(bundle);
        }
    }

    private int o0() {
        int i2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = this.J;
            if (i4 >= i2) {
                break;
            }
            l lVar = (l) this.S0.get(i4);
            if (lVar != null) {
                i5 += lVar.f37052a;
            }
            i4++;
        }
        l lVar2 = (l) this.S0.get(i2);
        if (lVar2 == null) {
            lVar2 = new l();
        }
        return i5 - lVar2.f37053b;
    }

    private void p1(DownloadTask downloadTask) {
        try {
            List<RecomDatabeanBusiness> list = this.B;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (int i2 = 0; i2 < this.B.size(); i2++) {
                AppBean game_info = this.B.get(i2).getSub().get(0).getGame_info();
                if (game_info != null) {
                    if (game_info.getMod_info() != null) {
                        ModInfoBean mod_info = game_info.getMod_info();
                        DownloadTask downloadTask2 = this.C.get(mod_info.getMain_game_id());
                        boolean z3 = true;
                        boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.C.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z3 = false;
                        }
                        if (z3 && z4) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.B.get(i2).d(downloadTask);
                            }
                        } else if (z3) {
                            if (game_info.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(game_info.getMod_info().getMod_game_id())) {
                                this.B.get(i2).d(downloadTask);
                            }
                        } else if (z4) {
                            if (downloadTask.getCrc_link_type_val().equals(game_info.getCrc_sign_id())) {
                                this.B.get(i2).d(downloadTask);
                            }
                        } else {
                            DownloadTask downloadTask4 = game_info.getMod_info() != null ? this.C.get(game_info.getMod_info().getMod_game_id()) : null;
                            if (downloadTask4 == null) {
                                downloadTask4 = this.C.get(game_info.getCrc_sign_id());
                            }
                            if (downloadTask4 != null && downloadTask.getCrc_link_type_val().equals(downloadTask4.getCrc_link_type_val())) {
                                this.B.get(i2).d(downloadTask);
                            }
                        }
                    } else if (game_info.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        this.B.get(i2).d(downloadTask);
                        this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void s1() {
        RecomDatabeanBusiness recomDatabeanLeft;
        if (this.J < 0 || this.I >= this.f37000c.getCount()) {
            return;
        }
        for (int i2 = this.J; i2 <= this.I; i2++) {
            MgpapaMainItemBean mgpapaMainItemBean = (MgpapaMainItemBean) this.f37000c.getItemAtPosition(i2);
            if (mgpapaMainItemBean != null && mgpapaMainItemBean.getShowtype() == 3 && (recomDatabeanLeft = mgpapaMainItemBean.getRecomDatabeanLeft()) != null) {
                List<AppBeanMain> sub = recomDatabeanLeft.getSub();
                if (sub == null || sub.size() == 0) {
                    return;
                }
                AppBeanMain appBeanMain = recomDatabeanLeft.getSub().get(0);
                if (appBeanMain == null) {
                    continue;
                } else {
                    appBeanMain.getGame_info();
                    DownloadTask a4 = recomDatabeanLeft.a();
                    if (a4 != null && (a4.getStatus() == 2 || a4.getStatus() == 12)) {
                        View childAt = this.f37000c.getChildAt(i2 - this.J);
                        if (childAt.getTag() instanceof h4.h2) {
                            h4.h2 h2Var = (h4.h2) childAt.getTag();
                            try {
                                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(a4.getCrc_link_type_val());
                                if (f4 == null) {
                                    return;
                                }
                                long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                                if (a4.getSize() == 0) {
                                    TextView textView = h2Var.f41877h;
                                    textView.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                } else {
                                    TextView textView2 = h2Var.f41877h;
                                    textView2.setText(UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble));
                                }
                                if (a4.getStatus() == 12) {
                                    h2Var.f41881l.setProgress((int) f4.getProgress());
                                } else {
                                    h2Var.f41880k.setProgress((int) f4.getProgress());
                                }
                                if (a4.getStatus() == 2) {
                                    TextView textView3 = h2Var.f41878i;
                                    textView3.setText(f4.getSpeed() + "/S");
                                }
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
    }

    private void u0() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 11) {
            this.f37007j.setVisibility(8);
        }
        HomeViewModle homeViewModle = (HomeViewModle) new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(MApplication.f9223q)).get(HomeViewModle.class);
        this.f37036z0 = homeViewModle;
        homeViewModle.initStat(this.f37015p);
        this.f37036z0.getLists().clear();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37011n.getLayoutParams();
        if (i2 >= 21) {
            layoutParams.height = com.join.android.app.common.utils.j.v(getContext());
        }
        this.f37011n.setLayoutParams(layoutParams);
        this.B = new ArrayList();
        this.H = new ArrayList();
        this.G = new h4(this.f37015p, this, this.H, this.f37032x0, new g());
        View inflate = LayoutInflater.from(this.f37015p).inflate(R.layout.mg_papa_title_include, (ViewGroup) null, false);
        this.f37000c.setPullRefreshEnable(new h());
        this.f37000c.setPreLoadCount(10);
        this.f37000c.setPullLoadEnable(new i());
        this.f37000c.addHeaderView(inflate);
        this.f37000c.setAdapter((ListAdapter) this.G);
        this.f37000c.setOnScrollListener(this);
        this.f37000c.setOnTouchListener(new j());
        this.f27729a = new com.join.mgps.Util.o0(new WeakReference(this));
        this.f37033y = new ArrayList<>();
        this.f37018q0.j(true);
        this.f27730b = (LoopViewPager) inflate.findViewById(R.id.top_ad_viewpager);
        this.f37035z = (ViewGroup) inflate.findViewById(R.id.point_group);
        this.F = (LinearLayout) inflate.findViewById(R.id.table2);
        this.E = (LinearLayout) inflate.findViewById(R.id.table1);
        this.f37013o = (ViewFlipper) inflate.findViewById(R.id.topLineView);
        this.f37014o0 = (FrameLayout) inflate.findViewById(R.id.onlyOne);
        this.f27730b.setOnPageChangeListener(new k());
        this.f27729a.sendEmptyMessageDelayed(3, 5000L);
        this.f37019r = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(int i2, BannerBean bannerBean, View view) {
        int i4;
        V0("2-" + i2);
        IntentDateBean intentDataBean = bannerBean.getIntentDataBean();
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (com.join.mgps.Util.d2.i(intentDataBean.getLink_type_val())) {
            i4 = Integer.parseInt(intentDataBean.getLink_type_val());
            if (intentDataBean.getLink_type() != 3 && intentDataBean.getJump_type() == 31) {
                com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(1));
                return;
            } else if (intentDataBean.getLink_type() != 3 && intentDataBean.getJump_type() == 2 && i4 == 1) {
                com.join.mgps.Util.c0.a().c(new IntentClassfyEvent(2));
                return;
            } else {
                intentDataBean.setExt1(bannerBean.getSub_title());
                IntentUtil.getInstance().intentActivity(this.f37015p, intentDataBean);
            }
        }
        i4 = 1;
        if (intentDataBean.getLink_type() != 3) {
        }
        if (intentDataBean.getLink_type() != 3) {
        }
        intentDataBean.setExt1(bannerBean.getSub_title());
        IntentUtil.getInstance().intentActivity(this.f37015p, intentDataBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b5 A[Catch: Exception -> 0x00bd, all -> 0x00f7, TryCatch #0 {Exception -> 0x00bd, blocks: (B:16:0x0098, B:18:0x009e, B:22:0x00ab, B:25:0x00b5, B:26:0x00b8, B:23:0x00af), top: B:62:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ff  */
    @org.androidannotations.annotations.Background
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A0(java.lang.String r9, int r10) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.f2.A0(java.lang.String, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void B0() {
        A0("m1", 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void C0() {
        this.f37000c.smoothScrollToPositionFromTop(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void D0() {
        com.join.android.app.common.manager.a.h().j(this.f37015p, this.f37001d, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void E0() {
        XListView2 xListView2 = this.f37000c;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    void F0() {
        h4 h4Var = this.G;
        if (h4Var != null) {
            h4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void G0() {
        h4 h4Var = this.G;
        if (h4Var != null) {
            h4Var.notifyDataSetChanged();
        }
    }

    public void H0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void I0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        h4 h4Var = this.G;
        if (h4Var != null) {
            h4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void O() {
        if (!this.f37012n0) {
            this.f37026u0 = "m1";
            this.f37028v0 = 1;
            this.f37000c.k();
            A0(this.f37026u0, this.f37028v0);
            p0();
        }
        this.f37036z0.initStat(this.f37015p);
        if (isVisible()) {
            m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    public void Q0(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            if (com.join.mgps.Util.d2.i(stringExtra)) {
                n1(stringExtra);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R0(List<BannerBean> list) {
        if (list == null && list.size() == 0) {
            return;
        }
        for (BannerBean bannerBean : list) {
            try {
                n1.d.n().k(new BannerAndTablesTable(bannerBean));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void S0(PAPAHomeBeanV6 pAPAHomeBeanV6) {
        this.D.homeAllData().g(JsonMapper.toJsonString(pAPAHomeBeanV6));
        com.join.mgps.Util.t0.c("保存数据完成   " + System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void U0() {
        IntentUtil.getInstance().goSearchHintActivity(this.f37015p, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        com.join.android.app.common.manager.a.h().j(this.f37015p, this.f37002e, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        com.join.mgps.Util.t0.c("MGPapaMainFragmentNew afterview   " + System.currentTimeMillis());
        this.f37003f = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f37015p = getActivity();
        this.K = System.currentTimeMillis();
        this.f37032x0 = new com.join.android.app.component.video.c(this.f37015p, "PapaMainAdapter");
        this.f37034y0 = (MGMainActivity) getActivity();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f37020r0.getLayoutParams();
        if (Build.VERSION.SDK_INT >= 21) {
            layoutParams.topMargin = com.join.android.app.common.utils.j.v(this.f37015p);
        }
        this.f37020r0.setLayoutParams(layoutParams);
        u0();
        showLoding();
        y0();
        p0();
        l0();
        k0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b1(List<BannerBean> list, boolean z3) {
        try {
            this.E.removeAllViews();
            this.F.removeAllViews();
            if (list != null) {
                int i2 = 0;
                while (i2 < list.size()) {
                    final int i4 = i2 + 1;
                    final BannerBean bannerBean = list.get(i2);
                    c70 c4 = c70.c(LayoutInflater.from(this.f37015p));
                    if (i2 < 5) {
                        this.E.addView(c4.getRoot());
                        c4.getRoot().setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    } else {
                        this.F.addView(c4.getRoot());
                        c4.getRoot().setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    }
                    MyImageLoader.h(c4.f18797b, bannerBean.getPic_remote());
                    c4.f18798c.setText(bannerBean.getSub_title());
                    c4.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.d2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            f2.this.x0(i4, bannerBean, view);
                        }
                    });
                    i2 = i4;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void d1() {
        com.join.mgps.Util.r.i(this.f37015p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1() {
        if (getUserVisibleHint()) {
            com.join.mgps.Util.a0.c0(this.f37015p).O(this.f37015p, 1, new f()).show();
        }
    }

    public void f0() {
        com.join.android.app.component.video.c cVar;
        if (this.f37000c == null || (cVar = this.f37032x0) == null) {
            return;
        }
        cVar.F(1);
        this.f37032x0.m(this.f37000c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1(HomeFloatData homeFloatData) {
        try {
            List<RecomDatabean> pendant = homeFloatData.getPendant();
            List<RecomDatabean> coin_entrance = homeFloatData.getCoin_entrance();
            if (this.f37009l != null) {
                if (pendant != null && pendant.size() > 0) {
                    RecomDatabean recomDatabean = pendant.get(0);
                    this.J0 = recomDatabean;
                    if (recomDatabean != null && recomDatabean.getMain().getAd_switch() == 1) {
                        this.f37009l.setVisibility(0);
                        if (com.join.mgps.Util.d2.i(this.J0.getMain().getPic_remote())) {
                            if (!this.L0.equals(this.J0.getMain().getPic_remote())) {
                                this.L0 = this.J0.getMain().getPic_remote();
                                MyImageLoader.d(this.f37009l, R.drawable.translate_drawable, this.J0.getMain().getPic_remote());
                            }
                        } else {
                            this.f37009l.setVisibility(8);
                        }
                    } else {
                        this.f37009l.setVisibility(8);
                    }
                } else {
                    this.f37009l.setVisibility(8);
                }
            }
            if (coin_entrance == null || coin_entrance.size() <= 0) {
                return;
            }
            this.K0 = coin_entrance.get(0);
            Intent intent = new Intent(f1.a.E);
            intent.putExtra("coinFloatData", this.K0);
            this.f37015p.sendBroadcast(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0(String str) {
        String str2;
        if (com.join.android.app.common.utils.f.j(this.f37015p)) {
            AccountBean accountData = AccountUtil_.getInstance_(this.f37015p).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.f37015p.getPackageManager().getPackageInfo(this.f37015p.getPackageName(), 0);
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
            ResultMainBean d02 = this.f37003f.d0(RequestBeanUtil.getInstance(this.f37015p).getDetialFollowAnd(requestdetialFolowAndBeSpeak));
            if (d02 == null || d02.getFlag() != 1) {
                return;
            }
            n1(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1() {
        k0();
    }

    void h0(String str) {
        g0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h1() {
        com.join.mgps.Util.t0.c("显示主界面main");
        LinearLayout linearLayout = this.f37006i;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f37005h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f37000c;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
        if (this.f37022s0) {
            this.f37022s0 = false;
            TextView textView = this.f37004g;
            if (textView != null) {
                textView.setVisibility(0);
            }
            r0();
        }
    }

    void i0(String str) {
        h0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i1(List<VipPopData> list) {
        this.f37013o.setInAnimation(AnimationUtils.loadAnimation(this.f37015p, R.anim.slide_in_topline));
        this.f37013o.setOutAnimation(AnimationUtils.loadAnimation(this.f37015p, R.anim.slide_out_topline));
        this.f37013o.setFlipInterval(5000);
        if (list != null && list.size() > 0) {
            this.A0 = list.size();
            this.f37013o.setVisibility(0);
            LayoutInflater from = LayoutInflater.from(this.f37015p);
            this.f37013o.removeAllViews();
            for (int i2 = 0; i2 < list.size(); i2++) {
                VipPopData vipPopData = list.get(i2);
                View inflate = from.inflate(R.layout.vip_pop_layout_item, (ViewGroup) null);
                TextView textView = (TextView) com.join.mgps.Util.o2.a(inflate, R.id.message);
                MyImageLoader.d((SimpleDraweeView) com.join.mgps.Util.o2.a(inflate, R.id.image), R.drawable.laba, vipPopData.getPic_remote());
                textView.setOnClickListener(new c(vipPopData));
                ((TextView) com.join.mgps.Util.o2.a(inflate, R.id.closeNotice)).setOnClickListener(new d(inflate, vipPopData));
                textView.setText(Html.fromHtml("<u>" + vipPopData.getTitle() + "</u>"));
                IntentDateBean intentDataBean = vipPopData.getIntentDataBean();
                if (intentDataBean.getLink_type() != 777 && intentDataBean.getLink_type() != 888 && intentDataBean.getLink_type() != 999 && intentDataBean.getLink_type() == 0) {
                    textView.setText(vipPopData.getTitle());
                }
                this.f37013o.addView(inflate);
            }
        }
        this.f37013o.startFlipping();
    }

    public void j1() {
        com.join.android.app.component.video.c cVar = this.f37032x0;
        if (cVar != null) {
            cVar.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void k0() {
        if (com.join.android.app.common.utils.f.j(this.f37015p)) {
            try {
                HomeFloatData data = this.f37003f.K0(n0()).getMessages().getData();
                if (data != null) {
                    f1(data);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void l0() {
        List<RecomDatabean> data;
        try {
            ResultMainBean<List<RecomDatabean>> l12 = this.f37003f.l1(RequestBeanUtil.getInstance(this.f37015p).getRequestPnAndPc(1, 1));
            if (l12 == null || l12.getFlag() != 1 || (data = l12.getMessages().getData()) == null || data.size() <= 0) {
                return;
            }
            this.D0 = data.get(0).getSub().get(0).getLink_type_val();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l1() {
        IntentUtil.getInstance().goSearchHintActivity(this.f37015p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m1(List<BannerBean> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                this.f37019r.clear();
                this.f37033y.clear();
                com.join.mgps.adapter.a aVar = this.f37017q;
                if (aVar != null) {
                    aVar.notifyDataSetChanged();
                }
                this.f37019r.addAll(list);
                StringBuilder sb = new StringBuilder();
                sb.append("updateBanner: wdp62 = ");
                sb.append((int) this.f37015p.getResources().getDimension(R.dimen.wdp62));
                for (int i2 = 0; i2 < this.f37019r.size(); i2++) {
                    BannerImage bannerImage = new BannerImage();
                    SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f37015p);
                    simpleDraweeView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    bannerImage.setImageView(simpleDraweeView);
                    bannerImage.setUrl(this.f37019r.get(i2).getPic_remote());
                    this.f37033y.add(bannerImage);
                    simpleDraweeView.setOnClickListener(new a(list));
                }
                this.f37035z.removeAllViews();
                this.A = new ImageView[this.f37019r.size()];
                int i4 = 0;
                while (true) {
                    ImageView[] imageViewArr = this.A;
                    if (i4 >= imageViewArr.length) {
                        break;
                    }
                    if (i4 <= 8) {
                        imageViewArr[i4] = new ImageView(this.f37015p);
                        getResources().getDimensionPixelSize(R.dimen.wdp8);
                        isAdded();
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 81;
                        int i5 = this.H0;
                        layoutParams.setMargins(i5, 0, i5, 0);
                        this.A[i4].setLayoutParams(layoutParams);
                        if (i4 == 0) {
                            this.A[i4].setBackgroundResource(R.drawable.pointselected);
                        } else {
                            this.A[i4].setBackgroundResource(R.drawable.pointnormal);
                        }
                        this.f37035z.addView(this.A[i4]);
                    }
                    i4++;
                }
                ArrayList<BannerImage> arrayList = this.f37033y;
                if (arrayList == null || arrayList.size() == 0) {
                    return;
                }
                this.f37014o0.setVisibility(4);
                this.f27730b.setVisibility(0);
                if (this.f37033y.size() == 1) {
                    SimpleDraweeView imageView = this.f37033y.get(0).getImageView();
                    MyImageLoader.h(imageView, this.f37033y.get(0).getUrl());
                    this.f37014o0.addView(imageView);
                    this.f37014o0.setVisibility(0);
                    this.f27730b.setVisibility(4);
                } else if (this.f37017q == null) {
                    com.join.mgps.adapter.a aVar2 = new com.join.mgps.adapter.a(this.f37015p, this.f37033y);
                    this.f37017q = aVar2;
                    this.f27730b.setAdapter(aVar2);
                    this.f27730b.getAdapter().notifyDataSetChanged();
                    this.f27730b.setCurrentItem(0);
                } else {
                    this.f27730b.removeAllViews();
                    com.join.mgps.adapter.a aVar3 = new com.join.mgps.adapter.a(this.f37015p, this.f37033y);
                    this.f37017q = aVar3;
                    this.f27730b.setAdapter(aVar3);
                    this.f37017q.b(this.f37033y);
                    this.f27730b.getAdapter().notifyDataSetChanged();
                    this.f27730b.setCurrentItem(0);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public CommonRequestBean n0() {
        return RequestBeanUtil.getInstance(this.f37015p).getFloatadRequestBean();
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
        F0();
        e1();
     */
    @org.androidannotations.annotations.UiThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void n1(java.lang.String r8) {
        /*
            r7 = this;
            java.util.List<com.join.mgps.dto.MgpapaMainItemBean> r0 = r7.H
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
            r7.F0()
            r7.e1()
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
            r7.F0()
            r7.e1()
            goto L6
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.f2.n1(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o1(PAPAHomeBeanV6 pAPAHomeBeanV6, String str, int i2, boolean z3) {
        List<RecomDatabean> list;
        List<RecomDatabean> list2;
        List<RecomDatabean> list3;
        try {
            MGMainActivity mGMainActivity = (MGMainActivity) getActivity();
            if (mGMainActivity != null) {
                mGMainActivity.setHomeTabImage(true);
            }
            new MgpapaMainItemBean();
            int i4 = 3;
            List<RecomDatabeanBusiness> list4 = null;
            if (i2 == 1) {
                this.f37036z0.getLists().clear();
                this.H.clear();
                List<BannerBean> banner = pAPAHomeBeanV6.getBanner();
                GameDiscoverChannelBean discover_channel = pAPAHomeBeanV6.getDiscover_channel();
                List<RecomDatabean> all_in_play = pAPAHomeBeanV6.getAll_in_play();
                if (discover_channel != null) {
                    list = discover_channel.getD_discover();
                    list2 = discover_channel.getS_channel();
                    list3 = discover_channel.getBroadcast();
                } else {
                    list = null;
                    list2 = null;
                    list3 = null;
                }
                m1(banner);
                b1(pAPAHomeBeanV6.fast_entry, true);
                MgpapaMainItemBean mgpapaMainItemBean = new MgpapaMainItemBean();
                mgpapaMainItemBean.setShowtype(1);
                mgpapaMainItemBean.setRecomDatabeans(K0(list, null));
                mgpapaMainItemBean.setRecomDatabeans2(K0(list3, null));
                mgpapaMainItemBean.setRecomDatabeans3(K0(list2, null));
                if (discover_channel != null) {
                    mgpapaMainItemBean.setObject(discover_channel.getThe_new());
                }
                this.H.add(mgpapaMainItemBean);
                if (all_in_play != null && all_in_play.size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean2 = new MgpapaMainItemBean();
                    mgpapaMainItemBean2.setShowtype(2);
                    mgpapaMainItemBean2.setRecomDatabeanLeft(J0(all_in_play.get(0)));
                    mgpapaMainItemBean2.setMoreType(0);
                    Z0(all_in_play, 11701, 11701);
                    List<RecomDatabeanBusiness> K0 = K0(all_in_play, null);
                    this.B.addAll(K0);
                    this.H.add(mgpapaMainItemBean2);
                    int i5 = 0;
                    while (i5 < all_in_play.size()) {
                        MgpapaMainItemBean mgpapaMainItemBean3 = new MgpapaMainItemBean();
                        mgpapaMainItemBean3.setShowtype(3);
                        mgpapaMainItemBean3.setMoreType(i5);
                        StringBuilder sb = new StringBuilder();
                        sb.append("4-");
                        int i6 = i5 + 1;
                        sb.append(i6);
                        sb.append("-");
                        mgpapaMainItemBean3.setMoreType2(sb.toString());
                        mgpapaMainItemBean3.setRecomDatabeanLeft(K0.get(i5));
                        a1(mgpapaMainItemBean3);
                        this.H.add(mgpapaMainItemBean3);
                        i5 = i6;
                    }
                    if (!z3) {
                        return;
                    }
                }
                GameinterestingBean simulator_channel = pAPAHomeBeanV6.getSimulator_channel();
                if (simulator_channel != null && simulator_channel.getMiddle() != null && simulator_channel.getMiddle().size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean4 = new MgpapaMainItemBean();
                    mgpapaMainItemBean4.setShowtype(2);
                    List<RecomDatabeanBusiness> K02 = K0(simulator_channel.getTop(), null);
                    if (K02 != null && K02.size() > 0) {
                        mgpapaMainItemBean4.setRecomDatabeanLeft(K02.get(0));
                    }
                    mgpapaMainItemBean4.setRecomDatabeans2(K0(simulator_channel.getMore(), null));
                    mgpapaMainItemBean4.setMoreType(6);
                    this.H.add(mgpapaMainItemBean4);
                    Z0(simulator_channel.getMiddle(), 11702, 11702);
                    Z0(simulator_channel.getTop(), 11702, 11702);
                    c1(simulator_channel.getMiddle(), simulator_channel.getTop(), "7-");
                }
                new MgpapaMainItemBean();
                GameinterestingBean new_online_game = pAPAHomeBeanV6.getNew_online_game();
                if (new_online_game != null && new_online_game.getMiddle() != null && new_online_game.getMiddle().size() > 0) {
                    MgpapaMainItemBean mgpapaMainItemBean5 = new MgpapaMainItemBean();
                    mgpapaMainItemBean5.setShowtype(2);
                    List<RecomDatabeanBusiness> K03 = K0(new_online_game.getTop(), null);
                    if (K03 != null && K03.size() > 0) {
                        mgpapaMainItemBean5.setRecomDatabeanLeft(K03.get(0));
                    }
                    mgpapaMainItemBean5.setRecomDatabeans2(K0(new_online_game.getMore(), null));
                    mgpapaMainItemBean5.setMoreType(4);
                    mgpapaMainItemBean5.setMoreType2("5-0-0");
                    this.H.add(mgpapaMainItemBean5);
                    Z0(new_online_game.getMiddle(), 11703, 11703);
                    Z0(new_online_game.getTop(), 11703, 11703);
                    c1(new_online_game.getMiddle(), new_online_game.getTop(), "5-");
                }
                if (pAPAHomeBeanV6.getGame_ranking() != null && pAPAHomeBeanV6.getGame_ranking().getRanking_title() != null) {
                    MgpapaMainItemBean mgpapaMainItemBean6 = new MgpapaMainItemBean();
                    mgpapaMainItemBean6.setShowtype(24);
                    mgpapaMainItemBean6.setObject(pAPAHomeBeanV6.getGame_ranking());
                    this.H.add(mgpapaMainItemBean6);
                }
                if (pAPAHomeBeanV6.getHot_game_fav() != null) {
                    MgpapaMainItemBean mgpapaMainItemBean7 = new MgpapaMainItemBean();
                    mgpapaMainItemBean7.setShowtype(2);
                    mgpapaMainItemBean7.setMoreType(10);
                    this.H.add(mgpapaMainItemBean7);
                    MgpapaMainItemBean mgpapaMainItemBean8 = new MgpapaMainItemBean();
                    mgpapaMainItemBean8.setShowtype(25);
                    mgpapaMainItemBean8.setObject(pAPAHomeBeanV6.getHot_game_fav());
                    this.H.add(mgpapaMainItemBean8);
                }
            }
            if (this.D0.equals("26")) {
                this.f37030w0 = this.H.size();
            }
            pAPAHomeBeanV6.getGame_broadcast();
            List<GameinterestingBean> dynamic_module = pAPAHomeBeanV6.getDynamic_module();
            if (i2 == 1) {
                if (this.D0.equals("27") || this.f37030w0 == 0) {
                    this.f37030w0 = this.H.size();
                }
                this.F0 = 0;
            }
            if (dynamic_module != null) {
                for (GameinterestingBean gameinterestingBean : dynamic_module) {
                    this.F0++;
                    new MgpapaMainItemBean();
                    List<RecomDatabean> top = gameinterestingBean.getTop();
                    List<RecomDatabean> middle = gameinterestingBean.getMiddle();
                    Z0(top, 11700, 11700);
                    Z0(middle, 11700, 11700);
                    List<RecomDatabeanBusiness> K04 = K0(middle, list4);
                    this.B.addAll(K04);
                    switch (gameinterestingBean.getDynamic_module_tpl_type()) {
                        case 1:
                        case 8:
                            MgpapaMainItemBean mgpapaMainItemBean9 = new MgpapaMainItemBean();
                            mgpapaMainItemBean9.setShowtype(19);
                            mgpapaMainItemBean9.setMoreType(1);
                            if (top != null) {
                                try {
                                    if (top.size() > 0 && top.get(0).getSub() != null && top.get(0).getSub().size() > 0) {
                                        mgpapaMainItemBean9.setMoreType(2);
                                        mgpapaMainItemBean9.setRecomDatabeanLeft(J0(top.get(0)));
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            this.H.add(mgpapaMainItemBean9);
                            if (middle != null) {
                                for (int i7 = 0; i7 < middle.size(); i7++) {
                                    MgpapaMainItemBean mgpapaMainItemBean10 = new MgpapaMainItemBean();
                                    if (gameinterestingBean.getDynamic_module_tpl_type() == 1) {
                                        mgpapaMainItemBean10.setReMarks(this.F0 + "-" + (i7 + 1));
                                    }
                                    if (i7 == 0) {
                                        mgpapaMainItemBean10.setShowtype(13);
                                        mgpapaMainItemBean10.setRecomDatabeanLeft(K04.get(0));
                                        mgpapaMainItemBean10.setMoreType2("0-" + this.F0 + "-1-x");
                                        a1(mgpapaMainItemBean10);
                                        this.H.add(mgpapaMainItemBean10);
                                    } else {
                                        mgpapaMainItemBean10.setShowtype(3);
                                        mgpapaMainItemBean10.setRecomDatabeanLeft(K04.get(i7));
                                        mgpapaMainItemBean10.setMoreType2("0-" + this.F0 + "-1-" + (i7 + 1) + "-");
                                        a1(mgpapaMainItemBean10);
                                        this.H.add(mgpapaMainItemBean10);
                                    }
                                }
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 2:
                        case 9:
                            MgpapaMainItemBean mgpapaMainItemBean11 = new MgpapaMainItemBean();
                            mgpapaMainItemBean11.setShowtype(19);
                            mgpapaMainItemBean11.setMoreType(1);
                            mgpapaMainItemBean11.setRecomDatabeanLeft(J0(top.get(0)));
                            this.H.add(mgpapaMainItemBean11);
                            for (int i8 = 0; i8 < middle.size(); i8++) {
                                MgpapaMainItemBean mgpapaMainItemBean12 = new MgpapaMainItemBean();
                                if (gameinterestingBean.getDynamic_module_tpl_type() == 2) {
                                    mgpapaMainItemBean12.setReMarks(this.F0 + "-" + (i8 + 1));
                                }
                                if (i8 == 0) {
                                    mgpapaMainItemBean12.setShowtype(13);
                                    mgpapaMainItemBean12.setRecomDatabeanLeft(K04.get(0));
                                    mgpapaMainItemBean12.setMoreType2("0-" + this.F0 + "-2-x");
                                    a1(mgpapaMainItemBean12);
                                    this.H.add(mgpapaMainItemBean12);
                                }
                            }
                            break;
                        case 3:
                        case 10:
                            MgpapaMainItemBean mgpapaMainItemBean13 = new MgpapaMainItemBean();
                            mgpapaMainItemBean13.setShowtype(19);
                            mgpapaMainItemBean13.setMoreType(1);
                            mgpapaMainItemBean13.setRecomDatabeanLeft(J0(top.get(0)));
                            this.H.add(mgpapaMainItemBean13);
                            ArrayList arrayList = new ArrayList();
                            for (int i9 = 0; i9 < middle.size(); i9++) {
                                if (i9 == 0) {
                                    MgpapaMainItemBean mgpapaMainItemBean14 = new MgpapaMainItemBean();
                                    mgpapaMainItemBean14.setShowtype(13);
                                    mgpapaMainItemBean14.setRecomDatabeanLeft(K04.get(0));
                                    mgpapaMainItemBean14.setMoreType2("0-" + this.F0 + "-3-x");
                                    a1(mgpapaMainItemBean14);
                                    this.H.add(mgpapaMainItemBean14);
                                } else {
                                    K04.get(i9).e("0-" + this.F0 + "-3-" + (i9 + 1) + "-");
                                    arrayList.add(K04.get(i9));
                                }
                            }
                            MgpapaMainItemBean mgpapaMainItemBean15 = new MgpapaMainItemBean();
                            mgpapaMainItemBean15.setShowtype(5);
                            mgpapaMainItemBean15.setRecomDatabeans(arrayList);
                            this.H.add(mgpapaMainItemBean15);
                            break;
                        case 4:
                        case 11:
                            MgpapaMainItemBean mgpapaMainItemBean16 = new MgpapaMainItemBean();
                            mgpapaMainItemBean16.setShowtype(19);
                            mgpapaMainItemBean16.setMoreType(1);
                            mgpapaMainItemBean16.setRecomDatabeanLeft(J0(top.get(0)));
                            this.H.add(mgpapaMainItemBean16);
                            int i10 = 0;
                            while (i10 < middle.size()) {
                                MgpapaMainItemBean mgpapaMainItemBean17 = new MgpapaMainItemBean();
                                mgpapaMainItemBean17.setShowtype(i4);
                                mgpapaMainItemBean17.setRecomDatabeanLeft(K04.get(i10));
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("0-");
                                sb2.append(this.F0);
                                sb2.append("-4-");
                                i10++;
                                sb2.append(i10);
                                sb2.append("-");
                                mgpapaMainItemBean17.setMoreType2(sb2.toString());
                                this.H.add(mgpapaMainItemBean17);
                            }
                            break;
                        case 5:
                        case 12:
                            MgpapaMainItemBean mgpapaMainItemBean18 = new MgpapaMainItemBean();
                            mgpapaMainItemBean18.setShowtype(19);
                            mgpapaMainItemBean18.setMoreType(1);
                            mgpapaMainItemBean18.setRecomDatabeanLeft(J0(top.get(0)));
                            this.H.add(mgpapaMainItemBean18);
                            for (int i11 = 0; i11 < middle.size(); i11++) {
                                if (i11 == 0) {
                                    MgpapaMainItemBean mgpapaMainItemBean19 = new MgpapaMainItemBean();
                                    mgpapaMainItemBean19.setShowtype(16);
                                    mgpapaMainItemBean19.setRecomDatabeanLeft(K04.get(0));
                                    mgpapaMainItemBean19.setMoreType2("0-" + this.F0 + "-5-1-");
                                    this.H.add(mgpapaMainItemBean19);
                                }
                            }
                            break;
                        case 6:
                        case 13:
                            MgpapaMainItemBean mgpapaMainItemBean20 = new MgpapaMainItemBean();
                            mgpapaMainItemBean20.setShowtype(19);
                            mgpapaMainItemBean20.setMoreType(1);
                            mgpapaMainItemBean20.setRecomDatabeanLeft(J0(top.get(0)));
                            this.H.add(mgpapaMainItemBean20);
                            MgpapaMainItemBean mgpapaMainItemBean21 = new MgpapaMainItemBean();
                            mgpapaMainItemBean21.setShowtype(18);
                            mgpapaMainItemBean21.setRecomDatabeans(K04);
                            mgpapaMainItemBean21.setMoreType2("0-" + this.F0 + "-6-");
                            this.H.add(mgpapaMainItemBean21);
                            break;
                        case 7:
                        case 14:
                            MgpapaMainItemBean mgpapaMainItemBean22 = new MgpapaMainItemBean();
                            mgpapaMainItemBean22.setShowtype(21);
                            this.H.add(mgpapaMainItemBean22);
                            for (int i12 = 0; i12 < middle.size(); i12++) {
                                if (i12 == 0) {
                                    MgpapaMainItemBean mgpapaMainItemBean23 = new MgpapaMainItemBean();
                                    mgpapaMainItemBean23.setShowtype(7);
                                    mgpapaMainItemBean23.setRecomDatabeanLeft(K04.get(i12));
                                    mgpapaMainItemBean23.setMoreType2("0-" + this.F0 + "-7-1");
                                    this.H.add(mgpapaMainItemBean23);
                                }
                            }
                            break;
                    }
                    i4 = 3;
                    list4 = null;
                }
            }
            if (this.D0.equals("28")) {
                F0();
                z0();
            }
            MgpapaMainItemBean mgpapaMainItemBean24 = new MgpapaMainItemBean();
            if (i2 == 3) {
                if (!this.D0.equals("28")) {
                    if (this.f37030w0 == 0) {
                    }
                    mgpapaMainItemBean24.setShowtype(2);
                    mgpapaMainItemBean24.setMoreType(8);
                    this.H.add(mgpapaMainItemBean24);
                    this.G0 = 0;
                }
                this.f37030w0 = this.H.size();
                mgpapaMainItemBean24.setShowtype(2);
                mgpapaMainItemBean24.setMoreType(8);
                this.H.add(mgpapaMainItemBean24);
                this.G0 = 0;
            }
            Z0(pAPAHomeBeanV6.getGuess_you_like(), 11705, 11705);
            List<RecomDatabeanBusiness> K05 = K0(pAPAHomeBeanV6.getGuess_you_like(), null);
            this.B.addAll(K05);
            if (K05 != null) {
                for (int i13 = 0; i13 < K05.size(); i13++) {
                    if (i13 != 0 && i13 % 2 != 0) {
                        mgpapaMainItemBean24.setRecomDatabeanRight(K05.get(i13));
                        mgpapaMainItemBean24.setShowtype(9);
                        int i14 = this.G0 + 1;
                        this.G0 = i14;
                        mgpapaMainItemBean24.setMoreType(i14);
                        this.H.add(mgpapaMainItemBean24);
                    }
                    mgpapaMainItemBean24 = new MgpapaMainItemBean();
                    mgpapaMainItemBean24.setRecomDatabeanLeft(K05.get(i13));
                }
            }
            if (K05 != null && K05.size() != 0 && K05.size() % 2 == 1) {
                MgpapaMainItemBean mgpapaMainItemBean25 = new MgpapaMainItemBean();
                mgpapaMainItemBean25.setRecomDatabeanLeft(K05.get(K05.size() - 1));
                mgpapaMainItemBean25.setShowtype(9);
                int i15 = this.G0 + 1;
                this.G0 = i15;
                mgpapaMainItemBean25.setMoreType(i15);
                this.H.add(mgpapaMainItemBean25);
            }
            q1(this.B);
            this.G.Z(this.H);
            if (i2 == 1) {
                onScrollStateChanged(null, 0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getActivity() instanceof MGMainActivity) {
            this.f37016p0 = (MGMainActivity) getActivity();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.android.app.component.video.c cVar;
        com.join.mgps.Util.c0.a().e(this);
        com.join.mgps.Util.o0 o0Var = this.f27729a;
        if (o0Var != null) {
            o0Var.sendEmptyMessage(2);
        }
        this.f37024t0 = true;
        MGMainActivity mGMainActivity = this.f37034y0;
        if (mGMainActivity != null && mGMainActivity.getPositionNum() == 3 && (cVar = this.f37032x0) != null) {
            cVar.z();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        int c4 = lVar.c();
        if (c4 == 2) {
            t1(a4, 1);
        } else if (c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    t1(a4, 6);
                    return;
                } else if (c4 == 7) {
                    t1(a4, 3);
                    return;
                } else if (c4 == 8) {
                    Map<String, DownloadTask> map = this.C;
                    if (map == null || map.isEmpty()) {
                        return;
                    }
                    s1();
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                            t1(a4, 7);
                            return;
                        case 11:
                            break;
                        case 12:
                            t1(a4, 8);
                            return;
                        case 13:
                            t1(a4, 9);
                            return;
                        default:
                            return;
                    }
                }
            }
            t1(a4, 5);
        } else {
            t1(a4, 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        com.join.mgps.Util.t0.d("notify time", com.join.mgps.Util.x.w(currentTimeMillis));
        long j4 = this.K;
        if (currentTimeMillis - j4 > 3600000 && j4 != 0) {
            long currentTimeMillis2 = System.currentTimeMillis();
            this.K = currentTimeMillis2;
            com.join.mgps.Util.t0.d("notify time lastUpdateTime", com.join.mgps.Util.x.w(currentTimeMillis2));
            this.f37022s0 = true;
            A0(this.f37026u0, this.f37028v0);
        } else if (j4 == 0) {
            this.K = System.currentTimeMillis();
            com.join.mgps.Util.t0.d("notify time lastUpdateTime2", com.join.mgps.Util.x.w(currentTimeMillis));
        }
        m0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar;
        super.onPause();
        this.B0 = false;
        if (this.f37034y0.getPositionNum() != 3 || (cVar = this.f37032x0) == null) {
            return;
        }
        cVar.A();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        List<MgpapaMainItemBean> list;
        super.onResume();
        this.B0 = true;
        setUserVisibleHint(true);
        List<DownloadTask> d4 = g1.f.G().d();
        this.f37029w = d4;
        if (d4 != null && d4.size() > 0) {
            for (DownloadTask downloadTask : this.f37029w) {
                this.C.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        } else {
            this.f37029w = new ArrayList();
        }
        q1(this.B);
        com.join.mgps.Util.o0 o0Var = this.f27729a;
        if (o0Var != null) {
            o0Var.sendEmptyMessageDelayed(1, 5000L);
        }
        if (this.f37034y0.getPositionNum() == 3) {
            com.join.android.app.component.video.c cVar = this.f37032x0;
            if (cVar != null) {
                cVar.B();
            }
            this.C0.sendEmptyMessageDelayed(1, 700L);
        }
        if (!this.Q0 || (list = this.H) == null || list.size() <= 0) {
            return;
        }
        onScrollStateChanged(null, 0);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.I = (i2 + i4) - 1;
        this.J = i2;
        com.join.android.app.component.video.c cVar = this.f37032x0;
        if (cVar != null) {
            cVar.e(absListView, i2, i4, i5);
        }
        if (i2 != 0) {
            this.f37011n.setVisibility(0);
            this.f37008k.setVisibility(0);
            this.f37020r0.setVisibility(8);
        } else {
            View childAt = absListView.getChildAt(0);
            if (childAt != null) {
                l lVar = (l) this.S0.get(i2);
                if (lVar == null) {
                    lVar = new l();
                }
                lVar.f37052a = childAt.getHeight();
                lVar.f37053b = childAt.getTop();
                this.S0.append(i2, lVar);
                if (o0() <= getResources().getDimensionPixelOffset(R.dimen.wdp20)) {
                    this.f37011n.setVisibility(8);
                    this.f37008k.setVisibility(8);
                    this.f37020r0.setVisibility(0);
                } else {
                    this.f37020r0.setVisibility(8);
                    this.f37011n.setVisibility(0);
                    this.f37008k.setVisibility(0);
                }
            }
        }
        MGMainActivity mGMainActivity = (MGMainActivity) getActivity();
        int i6 = this.J;
        int i7 = this.f37030w0;
        if (i6 >= i7 && i7 != 0) {
            if (this.R0) {
                mGMainActivity.setHomeTabImage(false);
            }
            this.R0 = false;
        } else if (this.I + 1 < i7) {
            if (!this.R0) {
                mGMainActivity.setHomeTabImage(true);
            }
            this.R0 = true;
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 0) {
            if (Fresco.getImagePipeline().H()) {
                Fresco.getImagePipeline().N();
            }
            this.O0.removeCallbacks(this.P0);
            this.O0.postDelayed(this.P0, 500L);
        }
        com.join.android.app.component.video.c cVar = this.f37032x0;
        if (cVar != null) {
            cVar.i(absListView, i2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.H0 = getResources().getDimensionPixelOffset(R.dimen.round_pointmagin_l_r_size);
        this.I0 = getResources().getDimensionPixelOffset(R.dimen.round_point_size);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        setUserVisibleHint(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void p0() {
        if (com.join.android.app.common.utils.f.j(this.f37015p)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this.f37015p).getAccountData();
                if (accountData == null) {
                    return;
                }
                ResultMainBean<List<VipPopData>> R0 = this.f37003f.R0(RequestBeanUtil.getInstance(this.f37015p).vipMessage(accountData.getUid()));
                if (R0 != null && R0.getFlag() == 1) {
                    List<VipPopData> data = R0.getMessages().getData();
                    if (data != null && data.size() > 0) {
                        i1(data);
                    } else {
                        u1();
                    }
                } else {
                    u1();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                u1();
                return;
            }
        }
        u1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {"com.papa.maintab.clicked"})
    public void q0(Intent intent) {
        if (this.R0) {
            this.f37000c.setSelection(this.f37030w0 + 1);
        } else {
            this.f37000c.setSelection(0);
        }
    }

    void q1(List<RecomDatabeanBusiness> list) {
        try {
            if (this.C == null || list == null || list.size() <= 0) {
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
                            DownloadTask downloadTask = this.C.get(mod_info.getMain_game_id());
                            boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
                            DownloadTask downloadTask2 = this.C.get(mod_info.getMod_game_id());
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
                                DownloadTask downloadTask3 = this.C.get(mod_info.getMod_game_id());
                                if (downloadTask3 == null) {
                                    downloadTask3 = this.C.get(game_info.getCrc_sign_id());
                                }
                                if (downloadTask3 != null && (downloadTask3.getCrc_link_type_val().equals(game_info.getCrc_sign_id()) || downloadTask3.getRef_crc_sign_id().equals(game_info.getCrc_sign_id()))) {
                                    recomDatabeanBusiness.d(downloadTask3);
                                }
                            }
                        } else {
                            DownloadTask downloadTask4 = this.C.get(game_info.getCrc_sign_id());
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
    @UiThread(delay = 2000)
    public void r0() {
        TextView textView = this.f37004g;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r1() {
        XListView2 xListView2 = this.f37000c;
        if (xListView2 != null) {
            xListView2.u();
            this.f37000c.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        this.f37026u0 = "m1";
        this.f37028v0 = 1;
        A0("m1", 1);
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
        LinearLayout linearLayout = this.f37005h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f37006i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f37000c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f37006i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f37005h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f37000c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f37015p).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t0(int i2, String str) {
        try {
            this.f37003f.e0(RequestBeanUtil.getInstance(this.f37015p).getIgnoreMessageRequest(AccountUtil_.getInstance_(this.f37015p).getAccountData().getUid(), i2, str));
        } catch (Exception unused) {
        }
    }

    void t1(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    O0(downloadTask);
                    return;
                case 3:
                    M0(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    P0(downloadTask);
                    return;
                case 6:
                    N0(downloadTask);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void u1() {
        this.f37013o.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void v0() {
        try {
            if (com.join.mgps.Util.d2.i(this.J0.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(this.f37015p, this.J0.getSub().get(0).getIntentDataBean());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void y0() {
        String d4 = this.D.homeAllData().d();
        PAPAHomeBeanV6 pAPAHomeBeanV6 = com.join.mgps.Util.d2.i(d4) ? (PAPAHomeBeanV6) JsonMapper.getInstance().fromJson(d4, PAPAHomeBeanV6.class) : null;
        if (pAPAHomeBeanV6 != null && pAPAHomeBeanV6.getBanner() != null && pAPAHomeBeanV6.getBanner().size() > 0) {
            o1(pAPAHomeBeanV6, "m1", 1, false);
            com.join.mgps.Util.t0.c("显示主界面   " + System.currentTimeMillis());
            h1();
            this.f37031x = false;
        } else {
            com.join.mgps.Util.t0.c("数据库没有数据不显示主界面   " + System.currentTimeMillis());
            this.f37031x = true;
        }
        B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 3000)
    public void z0() {
        XListView2 xListView2 = this.f37000c;
        if (xListView2 != null) {
            xListView2.j();
        }
    }
}
