package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialMoreGameInfo;
import com.join.mgps.dto.GamedetialMoreGiftData;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.category_collection_rank)
/* loaded from: classes.dex */
public class GameDetialGiftMoreActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    private AccountBean A;
    private CollectionBeanSub B;
    private com.join.mgps.customview.t D;
    private com.join.mgps.customview.t E;
    private DownloadTask F;
    private View G;

    /* renamed from: a  reason: collision with root package name */
    private Context f31185a;

    /* renamed from: b  reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f31186b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.adapter.s0 f31187c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    PtrClassicFrameLayout f31188d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f31189e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    XListView2 f31190f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f31191g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f31192h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    ImageView f31193i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ImageView f31194j;
    @ViewById(R.id.title_normal_search_img)

    /* renamed from: k  reason: collision with root package name */
    ImageView f31195k;
    @ViewById(R.id.title_normal_download_cdv)

    /* renamed from: l  reason: collision with root package name */
    CustomerDownloadView f31196l;

    /* renamed from: m  reason: collision with root package name */
    com.join.mgps.rpc.d f31197m;
    @StringRes(resName = "net_excption")

    /* renamed from: n  reason: collision with root package name */
    String f31198n;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: o  reason: collision with root package name */
    String f31199o;
    @Extra

    /* renamed from: q  reason: collision with root package name */
    String f31201q;

    /* renamed from: r  reason: collision with root package name */
    List<DownloadTask> f31202r;

    /* renamed from: p  reason: collision with root package name */
    private int f31200p = 1;

    /* renamed from: s  reason: collision with root package name */
    private int f31203s = 0;

    /* renamed from: t  reason: collision with root package name */
    private Map<String, DownloadTask> f31204t = new ConcurrentHashMap();

    /* renamed from: u  reason: collision with root package name */
    Map<String, DownloadTask> f31205u = new HashMap();

    /* renamed from: v  reason: collision with root package name */
    Map<String, DownloadTask> f31206v = new HashMap();

    /* renamed from: w  reason: collision with root package name */
    private String f31207w = "";

    /* renamed from: x  reason: collision with root package name */
    private int f31208x = 0;

    /* renamed from: y  reason: collision with root package name */
    private boolean f31209y = false;

    /* renamed from: z  reason: collision with root package name */
    private int f31210z = 0;
    Handler C = new b();
    private boolean H = true;
    private boolean I = false;
    com.join.mgps.customview.t J = null;
    com.join.mgps.customview.t K = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameDetialGiftMoreActivity.this.D != null && GameDetialGiftMoreActivity.this.D.isShowing()) {
                GameDetialGiftMoreActivity.this.D.dismiss();
            }
            int status = GameDetialGiftMoreActivity.this.F != null ? GameDetialGiftMoreActivity.this.F.getStatus() : 0;
            if (GameDetialGiftMoreActivity.this.B != null && UtilsMy.m0(GameDetialGiftMoreActivity.this.B.getPay_tag_info(), GameDetialGiftMoreActivity.this.B.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.c3(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            GameDetialGiftMoreActivity.this.F.setKeyword(Where.detail.name());
            if (GameDetialGiftMoreActivity.this.B != null) {
                if (UtilsMy.o0(GameDetialGiftMoreActivity.this.B.getPay_tag_info(), GameDetialGiftMoreActivity.this.B.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F.getCrc_link_type_val());
                } else {
                    UtilsMy.c1(GameDetialGiftMoreActivity.this.F, GameDetialGiftMoreActivity.this.B);
                    if (!UtilsMy.T0(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F)) {
                        if (GameDetialGiftMoreActivity.this.B.getDown_status() == 5) {
                            UtilsMy.R0(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F);
                        } else {
                            UtilsMy.F0(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F, GameDetialGiftMoreActivity.this.B.getTp_down_url(), GameDetialGiftMoreActivity.this.B.getOther_down_switch(), GameDetialGiftMoreActivity.this.B.getCdn_down_switch());
                        }
                    }
                }
            }
            GameDetialGiftMoreActivity.this.F.setStatus(2);
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            GameDetialGiftMoreActivity gameDetialGiftMoreActivity = GameDetialGiftMoreActivity.this;
            gameDetialGiftMoreActivity.A = AccountUtil_.getInstance_(gameDetialGiftMoreActivity.getApplicationContext()).getAccountData();
            int i2 = message.what;
            if (i2 != 2) {
                if (i2 == 3 && !IntentUtil.getInstance().goLoginNetGame(GameDetialGiftMoreActivity.this.f31185a)) {
                    GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) message.obj;
                    if (GameDetialGiftMoreActivity.this.N0(giftPackageDataInfoBean.getGift_package_type())) {
                        GameDetialGiftMoreActivity.this.Q0(giftPackageDataInfoBean);
                    }
                }
            } else if (IntentUtil.getInstance().goLoginNetGame(GameDetialGiftMoreActivity.this.f31185a)) {
            } else {
                GameDetialGiftMoreActivity.this.V0((GiftPackageDataInfoBean) message.obj);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameDetialGiftMoreActivity.this.f31209y) {
                return;
            }
            GameDetialGiftMoreActivity.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameDetialGiftMoreActivity.this.f31209y) {
                return;
            }
            GameDetialGiftMoreActivity.this.f31200p = 1;
            GameDetialGiftMoreActivity.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (GameDetialGiftMoreActivity.this.I) {
                i2--;
            }
            if (i2 > GameDetialGiftMoreActivity.this.f31186b.size() || i2 < 0) {
                return;
            }
            GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) GameDetialGiftMoreActivity.this.f31186b.get(i2);
            AccountBean accountData = AccountUtil_.getInstance_(GameDetialGiftMoreActivity.this.f31185a).getAccountData();
            if (accountData == null) {
                GiftsDetailActivity_.n1(GameDetialGiftMoreActivity.this.f31185a).c(giftPackageDataInfoBean).start();
            } else {
                GiftsDetailActivity_.n1(GameDetialGiftMoreActivity.this.f31185a).c(giftPackageDataInfoBean).a(accountData.getUid()).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f31216a;

        f(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            this.f31216a = giftPackageDataInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) GameDetialGiftMoreActivity.this.f31185a.getSystemService("clipboard")).setText(this.f31216a.getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(GameDetialGiftMoreActivity.this.f31185a);
            a4.b(this.f31216a.getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameDetialGiftMoreActivity.this.D == null || !GameDetialGiftMoreActivity.this.D.isShowing()) {
                return;
            }
            GameDetialGiftMoreActivity.this.D.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameDetialGiftMoreActivity.this.D != null && GameDetialGiftMoreActivity.this.D.isShowing()) {
                GameDetialGiftMoreActivity.this.D.dismiss();
            }
            int status = GameDetialGiftMoreActivity.this.F != null ? GameDetialGiftMoreActivity.this.F.getStatus() : 0;
            if (GameDetialGiftMoreActivity.this.B != null && UtilsMy.m0(GameDetialGiftMoreActivity.this.B.getPay_tag_info(), GameDetialGiftMoreActivity.this.B.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.c3(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            GameDetialGiftMoreActivity.this.F.setKeyword(Where.detail.name());
            if (GameDetialGiftMoreActivity.this.B != null) {
                if (UtilsMy.o0(GameDetialGiftMoreActivity.this.B.getPay_tag_info(), GameDetialGiftMoreActivity.this.B.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F.getCrc_link_type_val());
                } else {
                    UtilsMy.c1(GameDetialGiftMoreActivity.this.F, GameDetialGiftMoreActivity.this.B);
                    if (!UtilsMy.T0(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F)) {
                        if (GameDetialGiftMoreActivity.this.B.getDown_status() == 5) {
                            UtilsMy.R0(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F);
                        } else {
                            UtilsMy.F0(GameDetialGiftMoreActivity.this.f31185a, GameDetialGiftMoreActivity.this.F, GameDetialGiftMoreActivity.this.B.getTp_down_url(), GameDetialGiftMoreActivity.this.B.getOther_down_switch(), GameDetialGiftMoreActivity.this.B.getCdn_down_switch());
                        }
                    }
                }
            }
            GameDetialGiftMoreActivity.this.F.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f31220a;

        i(GiftPackageDataOperationBean giftPackageDataOperationBean) {
            this.f31220a = giftPackageDataOperationBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) GameDetialGiftMoreActivity.this.f31185a.getSystemService("clipboard")).setText(this.f31220a.getGift_info().getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(GameDetialGiftMoreActivity.this.f31185a);
            a4.b(this.f31220a.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameDetialGiftMoreActivity.this.D == null || !GameDetialGiftMoreActivity.this.D.isShowing()) {
                return;
            }
            GameDetialGiftMoreActivity.this.D.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this.f31185a).b(this.f31185a.getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f31185a).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                Z0();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            Y0();
            return false;
        }
        return true;
    }

    private void O0() {
        com.join.mgps.customview.t tVar = this.J;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.J.dismiss();
    }

    private void P0() {
        com.join.mgps.customview.t tVar = this.K;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.K.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        try {
            if (com.join.android.app.common.utils.f.j(this.f31185a)) {
                try {
                    GiftPackageOperationBean f02 = this.f31197m.f0(RequestBeanUtil.getInstance(getApplicationContext()).getGiftPackageOperationRequestBean(this.A.getUid(), giftPackageDataInfoBean.getGift_package_id(), this.f31201q));
                    if (f02 != null) {
                        if (f02.getFlag().equals("0")) {
                            String error_info = f02.getError_info();
                            if (error_info == null || !f02.getCode().equals("1001")) {
                                return;
                            }
                            showToast(error_info);
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = f02.getMessages().getData();
                        if (data == null || data.size() <= 0) {
                            return;
                        }
                        GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                        List<GiftPackageDataInfoBean> list = this.f31186b;
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            GiftPackageDataInfoBean giftPackageDataInfoBean2 = list.get(i2);
                            if (giftPackageDataInfoBean.getGift_package_id() == giftPackageDataInfoBean2.getGift_package_id()) {
                                giftPackageDataInfoBean2.setGift_package_status(1);
                                giftPackageDataInfoBean2.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                                giftPackageDataInfoBean2.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                            }
                        }
                        W0(giftPackageDataOperationBean);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } finally {
            showToast("领取失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R0() {
        int uid;
        new ArrayList();
        if (com.join.android.app.common.utils.f.j(this.f31185a)) {
            this.f31209y = true;
            try {
                try {
                    AccountBean accountBean = this.A;
                    if (accountBean != null) {
                        uid = accountBean.getUid();
                    } else {
                        AccountBean accountData = AccountUtil_.getInstance_(this.f31185a).getAccountData();
                        this.A = accountData;
                        uid = accountData.getUid();
                    }
                    ResultMessageBean<GamedetialMoreGiftData> messages = this.f31197m.X(S0(this.f31201q, this.f31200p, 0, uid)).getMessages();
                    if (messages != null) {
                        GamedetialMoreGiftData data = messages.getData();
                        if (data != null) {
                            if (data.getGift_list() != null && data.getGift_list().size() == 0) {
                                U0();
                            } else if (data.getGift_list() != null && data.getGift_list().size() > 0) {
                                this.f31200p++;
                            }
                            X0(data);
                            c1();
                        } else {
                            U0();
                        }
                    } else {
                        c1();
                        showLodingFailed();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    c1();
                    showLodingFailed();
                }
                return;
            } finally {
                this.f31209y = false;
            }
        }
        c1();
        showLodingFailed();
    }

    public CommonRequestBean S0(String str, int i2, int i4, int i5) {
        return RequestBeanUtil.getInstance(this.f31185a).getDetialImfMore(str, i2, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void T0() {
        this.f31200p = 1;
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0() {
        this.f31190f.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0(GiftPackageDataInfoBean giftPackageDataInfoBean) {
        CollectionBeanSub collectionBeanSub;
        com.join.mgps.customview.t tVar;
        com.join.mgps.customview.t tVar2 = this.D;
        if (tVar2 != null && tVar2.isShowing()) {
            this.D.dismiss();
            this.D = null;
        }
        com.join.mgps.customview.t tVar3 = new com.join.mgps.customview.t(this.f31185a, R.style.MyDialog);
        this.D = tVar3;
        tVar3.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.D.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.D.findViewById(R.id.dialog_button_ok);
        ((LinearLayout) this.D.findViewById(R.id.layoutTop)).setVisibility(8);
        ((LinearLayout) this.D.findViewById(R.id.layoutBottom)).setVisibility(0);
        TextView textView = (TextView) this.D.findViewById(R.id.moneyText);
        ((TextView) this.D.findViewById(R.id.tip_title)).setText("领号成功");
        ((TextView) this.D.findViewById(R.id.saveCodeContent)).setText(giftPackageDataInfoBean.getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        ((TextView) this.D.findViewById(R.id.dialog_time)).setText(com.join.mgps.Util.x.u(giftPackageDataInfoBean.getGift_package_times_end()));
        ((TextView) this.D.findViewById(R.id.saveCodeTv)).setOnClickListener(new f(giftPackageDataInfoBean));
        button2.setOnClickListener(new g());
        DownloadTask downloadTask = this.F;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.B.getPay_tag_info(), this.B.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 5) {
                button.setText("启动游戏");
            } else if (status != 9 && status != 43) {
                button.setText("下载中..");
            }
            collectionBeanSub = this.B;
            if (collectionBeanSub != null && collectionBeanSub.getDown_status() == 2) {
                button.setEnabled(false);
                button.setText("即将开放");
            }
            button.setOnClickListener(new h());
            tVar = this.D;
            if (tVar != null || tVar.isShowing()) {
            }
            this.D.show();
            return;
        }
        button.setText("下载游戏");
        CollectionBeanSub collectionBeanSub2 = this.B;
        if (collectionBeanSub2 != null) {
            UtilsMy.m0(collectionBeanSub2.getPay_tag_info(), this.B.getCrc_sign_id());
            UtilsMy.D2(button, this.B.getDown_status(), this.B.getPay_tag_info(), this.B.getCrc_sign_id());
            button.setBackgroundColor(-1);
            UtilsMy.w2(this.B.getSp_tag_info(), textView);
        }
        collectionBeanSub = this.B;
        if (collectionBeanSub != null) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        button.setOnClickListener(new h());
        tVar = this.D;
        if (tVar != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        CollectionBeanSub collectionBeanSub;
        com.join.mgps.customview.t tVar;
        com.join.mgps.customview.t tVar2 = this.D;
        if (tVar2 != null && tVar2.isShowing()) {
            this.D.dismiss();
            this.D = null;
        }
        com.join.mgps.customview.t tVar3 = new com.join.mgps.customview.t(this.f31185a, R.style.MyDialog);
        this.D = tVar3;
        tVar3.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.D.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.D.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.D.findViewById(R.id.moneyText);
        ((TextView) this.D.findViewById(R.id.tip_title)).setText("领号成功");
        ((TextView) this.D.findViewById(R.id.saveCodeContent)).setText(giftPackageDataOperationBean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        ((TextView) this.D.findViewById(R.id.saveCodeTv)).setOnClickListener(new i(giftPackageDataOperationBean));
        button2.setOnClickListener(new j());
        DownloadTask downloadTask = this.F;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (giftPackageDataOperationBean.getGame_info() != null && UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 5) {
                button.setText("启动游戏");
            } else if (status != 9 && status != 43) {
                button.setText("下载中..");
            }
            collectionBeanSub = this.B;
            if (collectionBeanSub != null && collectionBeanSub.getDown_status() == 2) {
                button.setEnabled(false);
                button.setText("即将开放");
            }
            button.setOnClickListener(new a());
            this.f31187c.notifyDataSetChanged();
            tVar = this.D;
            if (tVar != null || tVar.isShowing()) {
            }
            this.D.show();
            return;
        }
        button.setText("下载游戏");
        if (giftPackageDataOperationBean.getGame_info() != null) {
            UtilsMy.m0(giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            UtilsMy.D2(button, giftPackageDataOperationBean.getGame_info().getDown_status(), giftPackageDataOperationBean.getGame_info().getPay_tag_info(), giftPackageDataOperationBean.getGame_info().getCrc_sign_id());
            button.setBackgroundColor(-1);
            UtilsMy.w2(giftPackageDataOperationBean.getGame_info().getSp_tag_info(), textView);
        }
        collectionBeanSub = this.B;
        if (collectionBeanSub != null) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        button.setOnClickListener(new a());
        this.f31187c.notifyDataSetChanged();
        tVar = this.D;
        if (tVar != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0(GamedetialMoreGiftData gamedetialMoreGiftData) {
        if (gamedetialMoreGiftData == null || gamedetialMoreGiftData.getGift_list() == null || gamedetialMoreGiftData.getGift_list().size() == 0) {
            return;
        }
        this.f31192h.setVisibility(8);
        this.f31191g.setVisibility(8);
        this.f31188d.setVisibility(0);
        if (this.f31200p == 2) {
            this.f31186b.clear();
            DetialMoreGameInfo game_info = gamedetialMoreGiftData.getGame_info();
            this.B = game_info;
            TextView textView = this.f31189e;
            textView.setText(this.B.getGame_name() + "礼包");
            LinearLayout linearLayout = (LinearLayout) this.G.findViewById(R.id.tipsLayout);
            MyImageLoader.h((SimpleDraweeView) this.G.findViewById(R.id.appIcon), game_info.getIco_remote());
            ((TextView) this.G.findViewById(R.id.appName)).setText(game_info.getGame_name());
            ((TextView) this.G.findViewById(R.id.appSize)).setText("礼包总数：" + game_info.getGift_package_count());
            UtilsMy.C(game_info.getScore(), game_info.getDown_count(), game_info.getSize(), game_info.getSp_tag_info(), game_info.getTag_info(), linearLayout, this.f31185a);
            if (this.H) {
                this.F = game_info.getDownloadtaskDown();
                this.f31190f.addHeaderView(this.G);
                this.I = true;
                this.H = false;
            }
        }
        this.f31186b.addAll(gamedetialMoreGiftData.getGift_list());
        if (this.f31200p == 2) {
            this.f31186b.size();
            this.f31187c.notifyDataSetChanged();
            return;
        }
        this.f31187c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        com.join.mgps.customview.t tVar = this.J;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.J = com.join.mgps.Util.a0.c0(this.f31185a).Z(this.f31185a);
        }
        this.J.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
        com.join.mgps.customview.t tVar = this.K;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.K = com.join.mgps.Util.a0.c0(this.f31185a).b0(this.f31185a);
        }
        this.K.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f31197m = com.join.mgps.rpc.impl.c.P1();
        this.f31185a = this;
        getDownloadTaskInfo();
        com.join.mgps.Util.c0.a().d(this.f31185a);
        this.F = g1.f.G().B(this.f31201q);
        this.G = LayoutInflater.from(this.f31185a).inflate(R.layout.gamedetial_more_gift_top_layout, (ViewGroup) null);
        com.join.mgps.adapter.s0 s0Var = new com.join.mgps.adapter.s0(this.f31185a, this.C);
        this.f31187c = s0Var;
        this.f31186b = s0Var.b();
        this.f31189e.setText("礼包");
        showLoding();
        this.f31190f.setPreLoadCount(10);
        this.f31190f.setPullLoadEnable(new c());
        this.f31190f.setPullRefreshEnable(new d());
        this.f31190f.setOnItemClickListener(new e());
        this.f31190f.setOnScrollListener(this);
        this.f31190f.setAdapter((ListAdapter) this.f31187c);
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b1() {
        SearchHintActivity_.S1(this.f31185a).start();
        com.papa.sim.statistic.p.l(this.f31185a).m2(Where.modufour, AccountUtil_.getInstance_(this.f31185a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        this.f31190f.u();
        this.f31190f.t();
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
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31205u
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31205u
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31206v
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31206v
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31205u
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31205u
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31205u
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31205u
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.f31206v
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31205u
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31205u
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31206v
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.f31206v
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.GameDetialGiftMoreActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.f31205u.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.f31206v.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.c0.a().e(this.f31185a);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (a4 == null || this.F == null || !a4.getCrc_link_type_val().equals(this.F.getCrc_link_type_val())) {
            return;
        }
        this.F = a4;
        int c4 = lVar.c();
        if ((c4 == 5 || c4 == 11 || c4 == 48) && this.F != null && a4.getCrc_link_type_val().equals(this.F.getCrc_link_type_val())) {
            this.F = a4;
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.A = AccountUtil_.getInstance_(this.f31185a).getAccountData();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f31203s = (i4 + i2) - 1;
        this.f31208x = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        this.f31200p = 1;
        showLoding();
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this.f31185a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f31191g.setVisibility(0);
        this.f31192h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        List<GiftPackageDataInfoBean> list = this.f31186b;
        if (list == null || list.size() == 0) {
            this.f31192h.setVisibility(0);
            this.f31191g.setVisibility(8);
            this.f31188d.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f31185a).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.f31205u.size();
        int size2 = this.f31206v.size();
        this.f31196l.setDownloadGameNum(size);
        if (size2 > 0) {
            this.f31196l.d();
        } else {
            this.f31196l.g();
        }
    }
}
