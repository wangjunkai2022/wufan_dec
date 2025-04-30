package com.join.mgps.activity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.z;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.activity.w1;
import com.join.mgps.adapter.m3;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.a0;
import com.join.mgps.customview.c0;
import com.join.mgps.customview.r;
import com.join.mgps.customview.v;
import com.join.mgps.customview.z;
import com.join.mgps.dto.GameSortBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ShortcutReceiver;
import com.papa.sim.statistic.Event;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: MyGamePapaFragment.java */
@EFragment(R.layout.fragment_my_game)
/* loaded from: classes.dex */
public class w1 extends com.join.mgps.basefragment.a implements m3.e, AbsListView.OnScrollListener {

    /* renamed from: v0  reason: collision with root package name */
    public static final String f38444v0 = "网游";

    /* renamed from: w0  reason: collision with root package name */
    public static final String f38445w0 = "单机";

    /* renamed from: x0  reason: collision with root package name */
    public static final String f38446x0 = "对战";

    /* renamed from: y0  reason: collision with root package name */
    public static final String f38447y0 = "全部游戏";
    private OnlineCouponConfigBean F;
    long G;
    com.join.mgps.rpc.d H;
    @Pref
    PrefDef_ I;
    String J;
    com.join.mgps.customview.z K;

    /* renamed from: b  reason: collision with root package name */
    private Context f38448b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    View f38449c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    XListView2 f38450d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    View f38451e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f38452f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f38453g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    View f38454h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    View f38455i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f38456j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f38457k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f38458l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    View f38459m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    View f38460n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    View f38462o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    View f38464p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f38466q;

    /* renamed from: q0  reason: collision with root package name */
    DataGameListBean f38467q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    WrapContentGridView f38468r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f38470s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f38472t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    ImageView f38474u;

    /* renamed from: u0  reason: collision with root package name */
    private NetBroadcastReceiver f38475u0;

    /* renamed from: v  reason: collision with root package name */
    g f38476v;

    /* renamed from: w  reason: collision with root package name */
    m3 f38477w;

    /* renamed from: x  reason: collision with root package name */
    List<String> f38478x = new ArrayList();

    /* renamed from: y  reason: collision with root package name */
    List<String> f38479y = new ArrayList();

    /* renamed from: z  reason: collision with root package name */
    HashMap<String, Boolean> f38480z = new HashMap<>();
    HashMap<String, Boolean> A = new HashMap<>();
    private List<DownloadTask> B = new ArrayList();
    private int C = 0;
    com.join.mgps.pref.f D = null;
    private boolean E = false;

    /* renamed from: n0  reason: collision with root package name */
    private List<String> f38461n0 = new ArrayList();

    /* renamed from: o0  reason: collision with root package name */
    private int f38463o0 = 0;

    /* renamed from: p0  reason: collision with root package name */
    private int f38465p0 = 0;

    /* renamed from: r0  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f38469r0 = new ArrayList();

    /* renamed from: s0  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f38471s0 = new ArrayList();

    /* renamed from: t0  reason: collision with root package name */
    long f38473t0 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class a implements Comparator<DownloadTask> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(DownloadTask downloadTask, DownloadTask downloadTask2) {
            if (b(downloadTask.getStatus())) {
                return (!b(downloadTask2.getStatus()) || downloadTask2.getStartTime() <= downloadTask.getStartTime()) ? -1 : 1;
            } else if (b(downloadTask2.getStatus())) {
                return 1;
            } else {
                if (c(downloadTask.getStatus()) && !d(downloadTask)) {
                    return (!c(downloadTask2.getStatus()) || d(downloadTask2) || downloadTask2.getFinishTime() <= downloadTask.getFinishTime()) ? -1 : 1;
                } else if (!c(downloadTask2.getStatus()) || d(downloadTask2)) {
                    return c(downloadTask.getStatus()) ? (!c(downloadTask2.getStatus()) || downloadTask2.getOpenTime() < downloadTask.getOpenTime()) ? -1 : 1 : c(downloadTask2.getStatus()) ? 1 : 0;
                } else {
                    return 1;
                }
            }
        }

        boolean b(int i2) {
            return i2 == 2 || i2 == 3 || i2 == 12 || i2 == 13 || i2 == 36 || i2 == 11 || i2 == 6 || i2 == 10 || i2 == 48;
        }

        boolean c(int i2) {
            return i2 == 5 || e(i2);
        }

        boolean d(DownloadTask downloadTask) {
            return downloadTask.isOpen();
        }

        boolean e(int i2) {
            return i2 == 9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class b implements c0.a {
        b() {
        }

        @Override // com.join.mgps.customview.c0.a
        public void a() {
            IntentUtil.getInstance().goDownloadSettingActivity(w1.this.getContext());
        }

        @Override // com.join.mgps.customview.c0.a
        public void b() {
            w1.this.d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class c implements a0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38483a;

        c(String str) {
            this.f38483a = str;
        }

        @Override // com.join.mgps.customview.a0.a
        public void a(String str) {
            DownloadTask B = g1.f.G().B(this.f38483a);
            if (B == null) {
                return;
            }
            if (com.join.mgps.Util.d2.i(B.getMod_info())) {
                ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(B.getMod_info(), ModInfoBean.class);
                DownloadTask B2 = modInfoBean != null ? g1.f.G().B(modInfoBean.getMain_game_id()) : null;
                if (B2 == null) {
                    B.setCrc_link_type_val(modInfoBean.getMain_game_id());
                } else {
                    B = B2;
                }
            }
            B.set_from_type(127);
            boolean z3 = false;
            if (B.getSp_tag_info() != null && B.getSp_tag_info().getOut_game() != null) {
                z3 = true;
            }
            if ((TextUtils.isEmpty(B.getFileType()) || !B.getFileType().equals(Dtype.chajian.name())) && !z3) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(w1.this.getContext(), B);
            }
        }

        @Override // com.join.mgps.customview.a0.a
        public void b(String str) {
            w1.this.i1(g1.f.G().B(str));
        }

        @Override // com.join.mgps.customview.a0.a
        public void c(String str) {
            w1.this.N0(str);
        }

        @Override // com.join.mgps.customview.a0.a
        public void d(String str) {
            new com.join.mgps.customview.s(w1.this.getContext()).a(w1.this.f38459m, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class d implements Callback<ResponseModel<DataGameListBean>> {
        d() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable th) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            if (response != null) {
                try {
                    ResponseModel<DataGameListBean> body = response.body();
                    if (body == null || body.getData() == null) {
                        return;
                    }
                    w1.this.f38467q0 = body.getData();
                    w1.this.f38471s0.clear();
                    List<GamedownRecomendItemBean> recommendList = body.getData().getRecommendList();
                    if (recommendList != null) {
                        for (int i2 = 0; i2 < recommendList.size() && i2 < 6; i2++) {
                            CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(recommendList.get(i2));
                            collectionBeanSubBusiness.setDownloadTask(g1.f.G().B(collectionBeanSubBusiness.getGame_id()));
                            w1.this.f38471s0.add(collectionBeanSubBusiness);
                        }
                        if (w1.this.B == null || w1.this.B.size() == 0) {
                            w1.this.J0();
                        }
                    }
                    List<GamedownRecomendItemBean> gameList = body.getData().getGameList();
                    if (gameList == null || gameList.size() <= 0) {
                        return;
                    }
                    w1.this.k1(gameList);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class e implements NetBroadcastReceiver.a {
        e() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int i2) {
            if (w1.this.f38469r0 == null || w1.this.f38469r0.size() == 0 || !(w1.this.B == null || w1.this.C == w1.this.B.size())) {
                if (w1.this.B != null) {
                    w1 w1Var = w1.this;
                    w1Var.C = w1Var.B.size();
                }
                w1.this.u0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class f implements z.n0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ OnlineCouponConfigBean f38487a;

        f(OnlineCouponConfigBean onlineCouponConfigBean) {
            this.f38487a = onlineCouponConfigBean;
        }

        @Override // com.join.mgps.Util.z.n0
        public boolean a(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            return false;
        }

        @Override // com.join.mgps.Util.z.n0
        public void onCancel() {
        }

        @Override // com.join.mgps.Util.z.n0
        public void onDismiss() {
            if (!this.f38487a.isTabSwitch() || w1.this.E) {
                return;
            }
            w1.this.f38472t.setText(this.f38487a.getTabHint());
            w1.this.f38470s.setVisibility(0);
            com.papa.sim.statistic.p.l(w1.this.f38448b).M1(Event.tabStartViewSuccessTips, AccountUtil_.getInstance_(w1.this.f38448b).getAccountData().getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGamePapaFragment.java */
    /* loaded from: classes3.dex */
    public class g extends BaseAdapter {

        /* compiled from: MyGamePapaFragment.java */
        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            CollectionBeanSubBusiness f38490a;

            public a(CollectionBeanSubBusiness collectionBeanSubBusiness) {
                this.f38490a = collectionBeanSubBusiness;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Context context = view.getContext();
                DownloadTask downloadTask = this.f38490a.getDownloadTask();
                if (downloadTask == null) {
                    if (UtilsMy.e0(this.f38490a.getTag_info())) {
                        if (this.f38490a.getMod_info() == null) {
                            if (com.join.android.app.common.utils.a.g0(context).c(context, this.f38490a.getPackage_name())) {
                                APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, this.f38490a.getPackage_name());
                                if (!com.join.mgps.Util.d2.i(this.f38490a.getVer()) || k4.d() >= Integer.parseInt(this.f38490a.getVer())) {
                                    com.join.android.app.common.utils.a.g0(context);
                                    APKUtils.X(context, this.f38490a.getPackage_name());
                                    return;
                                }
                            }
                        } else {
                            boolean c4 = com.join.android.app.common.utils.a.g0(context).c(context, this.f38490a.getPackage_name());
                            boolean D = com.join.mgps.va.overmind.e.p().D(this.f38490a.getPackage_name());
                            if (c4 || D) {
                                com.join.android.app.common.utils.a.g0(context);
                                APKUtils.S(context, this.f38490a.getMod_info());
                                return;
                            }
                        }
                    }
                    UtilsMy.J0(context, this.f38490a);
                    return;
                }
                if (com.join.mgps.Util.d2.i(this.f38490a.getPlugin_num())) {
                    String plugin_num = this.f38490a.getPlugin_num();
                    if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
                        IntentDateBean intentDateBean = new IntentDateBean();
                        intentDateBean.setLink_type(4);
                        intentDateBean.setLink_type_val(this.f38490a.getDown_url_remote());
                        UtilsMy.h2(downloadTask, context);
                        IntentUtil.getInstance().intentActivity(context, intentDateBean);
                        return;
                    }
                }
                int status = downloadTask != null ? downloadTask.getStatus() : 0;
                if (UtilsMy.m0(this.f38490a.getPay_tag_info(), this.f38490a.getCrc_sign_id()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status != 13) {
                        if (status != 2) {
                            if (status != 3) {
                                if (status == 5) {
                                    UtilsMy.c3(context, downloadTask);
                                    return;
                                } else if (status != 6) {
                                    if (status != 7) {
                                        if (status == 42) {
                                            if (!com.join.android.app.common.utils.f.j(context)) {
                                                com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                return;
                                            } else if (TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                                                return;
                                            } else {
                                                downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                downloadTask.setVer(this.f38490a.getVer());
                                                downloadTask.setVer_name(this.f38490a.getVer_name());
                                                downloadTask.setUrl(this.f38490a.getDown_url_remote());
                                                UtilsMy.w3(context, downloadTask);
                                                return;
                                            }
                                        } else if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    if (!com.join.android.app.common.utils.f.j(context)) {
                                                        com.join.mgps.Util.i2.a(context).b("无网络连接");
                                                        return;
                                                    } else if (UtilsMy.T0(context, downloadTask)) {
                                                        return;
                                                    } else {
                                                        if (this.f38490a.getDown_status() == 5) {
                                                            UtilsMy.R0(context, downloadTask);
                                                            return;
                                                        } else if (TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                                                            return;
                                                        } else {
                                                            downloadTask.setId(g1.f.G().B(downloadTask.getCrc_link_type_val()).getId());
                                                            com.php25.PDownload.d.b(downloadTask);
                                                            downloadTask.setVer(this.f38490a.getVer());
                                                            downloadTask.setVer_name(this.f38490a.getVer_name());
                                                            downloadTask.setUrl(this.f38490a.getDown_url_remote());
                                                            com.php25.PDownload.d.c(downloadTask, context);
                                                            return;
                                                        }
                                                    }
                                                case 10:
                                                    break;
                                                case 11:
                                                    UtilsMy.j3(downloadTask, context);
                                                    return;
                                                default:
                                                    return;
                                            }
                                        }
                                    }
                                }
                            }
                            com.php25.PDownload.d.c(downloadTask, context);
                            return;
                        }
                        com.php25.PDownload.d.h(downloadTask);
                        return;
                    }
                    com.php25.PDownload.d.k(context, downloadTask);
                    return;
                }
                UtilsMy.J0(context, this.f38490a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MyGamePapaFragment.java */
        /* loaded from: classes3.dex */
        public class b {

            /* renamed from: a  reason: collision with root package name */
            public SimpleDraweeView f38492a;

            /* renamed from: b  reason: collision with root package name */
            public TextView f38493b;

            /* renamed from: c  reason: collision with root package name */
            public TextView f38494c;

            /* renamed from: d  reason: collision with root package name */
            public TextView f38495d;

            b() {
            }
        }

        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(CollectionBeanSubBusiness collectionBeanSubBusiness, View view) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), collectionBeanSubBusiness.getGame_id(), collectionBeanSubBusiness.getGame_info_tpl_type(), collectionBeanSubBusiness.getSp_tpl_two_position(), 0);
        }

        void c(TextView textView, View view, int i2, PayTagInfo payTagInfo, String str) {
            view.setEnabled(true);
            textView.setTextColor(-12802819);
            boolean z3 = UtilsMy.m0(payTagInfo, str) > 0;
            if (i2 == 3 && !z3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setTextSize(2, 12.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            } else if (i2 == 2 && !z3) {
                textView.setText("即将开放");
                textView.setTextSize(0, textView.getContext().getResources().getDimensionPixelSize(R.dimen.wdp22));
                textView.setTextColor(-7763575);
                view.setEnabled(false);
                textView.setBackgroundResource(R.drawable.recom_grey_butn);
            } else {
                if (payTagInfo == null || payTagInfo.getAmount_check() <= 0) {
                    textView.setText(textView.getResources().getString(R.string.download_status_download));
                } else {
                    textView.setText(textView.getResources().getString(R.string.pay_game_amount, payTagInfo.getPayGameAmount()));
                }
                textView.setTextSize(2, 13.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0060 A[Catch: Exception -> 0x03de, TRY_LEAVE, TryCatch #0 {Exception -> 0x03de, blocks: (B:3:0x0006, B:4:0x0019, B:6:0x0023, B:11:0x0039, B:13:0x0060, B:17:0x008e, B:19:0x0098, B:21:0x00a6, B:23:0x00b4, B:25:0x00ca, B:27:0x00d8, B:28:0x00f1, B:29:0x0112, B:30:0x0129, B:31:0x0140, B:55:0x017c, B:56:0x01b9, B:57:0x01f9, B:58:0x0214, B:59:0x0255, B:60:0x026e, B:61:0x0298, B:68:0x0309, B:69:0x030e, B:71:0x0337, B:72:0x035c, B:73:0x0380, B:74:0x039d, B:75:0x03a5, B:86:0x03d6, B:9:0x0034, B:62:0x02b4, B:64:0x02be, B:65:0x02e3), top: B:91:0x0006, inners: #1, #2 }] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void d(com.join.mgps.activity.w1.g.b r17, com.join.mgps.business.CollectionBeanSubBusiness r18) {
            /*
                Method dump skipped, instructions count: 1010
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.w1.g.d(com.join.mgps.activity.w1$g$b, com.join.mgps.business.CollectionBeanSubBusiness):void");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (w1.this.f38471s0 == null) {
                return 0;
            }
            return Math.min(6, w1.this.f38471s0.size());
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            if (w1.this.f38471s0 == null) {
                return null;
            }
            return w1.this.f38471s0.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            b bVar;
            if (view != null) {
                bVar = (b) view.getTag();
            } else {
                b bVar2 = new b();
                View inflate = LayoutInflater.from(w1.this.getContext()).inflate(R.layout.fragment_my_game_no_game_item, viewGroup, false);
                bVar2.f38492a = (SimpleDraweeView) inflate.findViewById(R.id.icon);
                bVar2.f38493b = (TextView) inflate.findViewById(R.id.name);
                bVar2.f38494c = (TextView) inflate.findViewById(R.id.size);
                bVar2.f38495d = (TextView) inflate.findViewById(R.id.install);
                inflate.setTag(bVar2);
                bVar = bVar2;
                view = inflate;
            }
            if (getItem(i2) == null) {
                return view;
            }
            final CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) getItem(i2);
            MyImageLoader.h(bVar.f38492a, collectionBeanSubBusiness.getIco_remote());
            bVar.f38493b.setText(collectionBeanSubBusiness.getGame_name());
            bVar.f38494c.setText(UtilsMy.a(TextUtils.isEmpty(collectionBeanSubBusiness.getSize()) ? 0L : (long) (Double.parseDouble(collectionBeanSubBusiness.getSize()) * 1024.0d * 1024.0d)));
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.x1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    w1.g.b(CollectionBeanSubBusiness.this, view2);
                }
            });
            UtilsMy.r2(bVar.f38495d, collectionBeanSubBusiness);
            bVar.f38495d.setOnClickListener(new a(new CollectionBeanSubBusiness(collectionBeanSubBusiness)));
            d(bVar, collectionBeanSubBusiness);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0() {
        this.D.callbackHome(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(String str) {
        this.J = str;
        this.f38457k.setText(str);
        J0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0() {
        this.f38456j.setRotation(0.0f);
        p1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(boolean z3, String str, boolean z4, String str2) {
        if (z3) {
            p0(str);
        }
        if (z4) {
            o0(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0(DownloadTask downloadTask, String str) {
        if (APKUtils.I(downloadTask) && com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName())) {
            p0(str);
        } else {
            o0(str);
        }
    }

    private void Q0(DownloadTask downloadTask) {
        DownloadTask downloadTask2;
        List<CollectionBeanSubBusiness> list;
        loadData();
        Iterator<DownloadTask> it2 = this.B.iterator();
        while (true) {
            if (!it2.hasNext()) {
                downloadTask2 = null;
                break;
            }
            downloadTask2 = it2.next();
            if (!TextUtils.isEmpty(downloadTask2.getCrc_link_type_val()) && downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                downloadTask2.setStatus(0);
                it2.remove();
                break;
            }
        }
        if (downloadTask != null && (list = this.f38471s0) != null && list.size() > 0) {
            Iterator<CollectionBeanSubBusiness> it3 = this.f38471s0.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                CollectionBeanSubBusiness next = it3.next();
                if (next.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    next.setDownloadTask(null);
                    break;
                }
            }
        }
        this.f38476v.notifyDataSetChanged();
        s1(downloadTask2);
        U0();
        J0();
    }

    private void R0(DownloadTask downloadTask) {
        List<DownloadTask> list = this.B;
        if (list == null || downloadTask == null) {
            return;
        }
        DownloadTask downloadTask2 = null;
        try {
            Iterator<DownloadTask> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DownloadTask next = it2.next();
                if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.C3(next);
                    downloadTask2 = next;
                    break;
                }
            }
            s1(downloadTask2);
            J0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        U0();
        J0();
    }

    private void S0(DownloadTask downloadTask) {
        boolean z3;
        ModInfoBean modInfoBean;
        if (downloadTask == null) {
            return;
        }
        boolean z4 = true;
        if (!TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            J0();
            return;
        }
        UtilsMy.D3(this.B);
        Iterator<DownloadTask> it2 = this.B.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z4 = false;
                break;
            }
            DownloadTask next = it2.next();
            if (!com.join.mgps.Util.d2.i(next.getMod_info()) ? !(TextUtils.isEmpty(next.getCrc_link_type_val()) || !next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) : !((modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(next.getMod_info(), ModInfoBean.class)) == null || TextUtils.isEmpty(next.getCrc_link_type_val()) || !(next.getCrc_link_type_val().equals(modInfoBean.getMod_game_id()) || next.getCrc_link_type_val().equals(modInfoBean.getMain_game_id())))) {
                z3 = false;
                continue;
            } else {
                z3 = true;
                continue;
            }
            if (z3) {
                break;
            }
        }
        if (!z4) {
            this.B.add(0, downloadTask);
        }
        loadData();
        U0();
        J0();
    }

    private void T0(DownloadTask downloadTask) {
        if (this.B == null || downloadTask == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.B.size()) {
                downloadTask = null;
                break;
            }
            DownloadTask downloadTask2 = this.B.get(i2);
            if (!TextUtils.isEmpty(downloadTask2.getCrc_link_type_val()) && downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.B.set(i2, downloadTask);
                break;
            }
            i2++;
        }
        s1(downloadTask);
        loadData();
        U0();
        J0();
        W0();
    }

    private Bitmap c1(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(((a0.c) Fresco.getImagePipelineFactory().l().c(new com.facebook.cache.common.i(Uri.parse(str).toString()))).c().getPath());
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private void j0(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("s:");
        sb.append(str);
        DownloadTask B = g1.f.G().B(str);
        if (B != null) {
            Bitmap m4 = ImageLoader.q().m(B.getPortraitURL());
            if (m4 == null) {
                m4 = c1(B.getPortraitURL());
            }
            com.join.mgps.Util.t1.b(getActivity(), B.getShowName(), str, m4);
        }
    }

    private void m1(OnlineCouponConfigBean onlineCouponConfigBean, int i2) {
        com.join.mgps.Util.a0.c0(this.f38448b).V(this.f38448b, onlineCouponConfigBean, i2, new f(onlineCouponConfigBean));
        com.papa.sim.statistic.p.l(this.f38448b).M1(Event.tabStartSuccessUpRedBag, AccountUtil_.getInstance_(this.f38448b).getAccountData().getUid());
    }

    private void q1() {
    }

    private List<DownloadTask> r0() {
        if (TextUtils.isEmpty(this.J)) {
            return new ArrayList();
        }
        String str = this.J;
        if (com.join.mgps.Util.d2.i(str) && str.equals(f38447y0)) {
            TextView textView = this.f38457k;
            if (textView != null) {
                textView.setText(f38447y0);
            }
            return this.B;
        }
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> list = this.B;
        if (list != null) {
            for (DownloadTask downloadTask : list) {
                if (H0(str, downloadTask)) {
                    arrayList.add(downloadTask);
                }
            }
        }
        return arrayList;
    }

    private void r1() {
        DownloadTask downloadTask;
        View childAt;
        if (this.f38465p0 < 0 || this.f38463o0 >= this.f38450d.getCount()) {
            return;
        }
        for (int i2 = this.f38465p0; i2 <= this.f38463o0; i2++) {
            if (this.f38450d.getAdapter().getItemViewType(i2) == 2 && this.f38450d.getItemAtPosition(i2) != null && (this.f38450d.getItemAtPosition(i2) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.f38450d.getItemAtPosition(i2)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f38450d.getChildAt(i2 - this.f38465p0)) != null && childAt.getTag() != null && (childAt.getTag() instanceof m3.h))) {
                m3.h hVar = (m3.h) childAt.getTag();
                try {
                    DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                    if (f4 == null) {
                        return;
                    }
                    String str = "";
                    if (!TextUtils.isEmpty(f4.getShowSize())) {
                        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
                        str = downloadTask.getSize() == 0 ? UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble) : UtilsMy.a(f4.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.a(parseDouble);
                    }
                    if (downloadTask.getStatus() == 12) {
                        hVar.f42859b.setProgress((int) f4.getProgress());
                    } else {
                        hVar.f42859b.setProgress((int) f4.getProgress());
                    }
                    if (downloadTask.getStatus() == 2) {
                        hVar.f42860c.setText(str + " · " + f4.getSpeed() + "/S");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    private void v0() {
        Bundle bundle = new Bundle();
        bundle.putInt("localType", 2);
        com.join.mgps.pref.f fVar = this.D;
        if (fVar != null) {
            fVar.callOnlineCoupon(bundle);
        }
        this.f38470s.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void A0() {
        this.E = true;
        this.f38470s.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void G0() {
        if (this.F != null) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.F.getTabJumpUrl());
            ShareWebActivity_.O2(this.f38448b).b(intentDateBean).start();
            com.papa.sim.statistic.p.l(this.f38448b).M1(Event.clickTabGameTipsUpRedBag, AccountUtil_.getInstance_(this.f38448b).getAccountData().getUid());
        }
    }

    boolean H0(String str, DownloadTask downloadTask) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (downloadTask.isFightFun() && "对战".equals(str)) {
            return true;
        }
        String w02 = w0(downloadTask);
        if (TextUtils.isEmpty(w02) || !w02.equals(str)) {
            Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
            while (it2.hasNext()) {
                TipBean next = it2.next();
                if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) <= 0) {
                    if (next.getName().contains("网游") && str.equals(next.getName())) {
                        return true;
                    }
                    if (next.getName().contains("单机") && str.equals(next.getName())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.join.mgps.adapter.m3.e
    public void I(String str) {
        com.join.mgps.customview.a0 a0Var = new com.join.mgps.customview.a0(getContext());
        a0Var.b(new c(str));
        a0Var.c(this.f38459m, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        MyGameUpdateManagerActivity_.k1(getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        m3 m3Var = this.f38477w;
        if (m3Var == null || m3Var.n() == null) {
            return;
        }
        this.f38477w.n().clear();
        ArrayList arrayList = new ArrayList();
        int Y = g1.f.G().Y();
        if (Y > 0) {
            View view = this.f38460n;
            if (view != null) {
                view.setVisibility(0);
            }
            TextView textView = this.f38458l;
            if (textView != null) {
                textView.setText(Y + "款游戏需更新");
            }
        } else {
            View view2 = this.f38460n;
            if (view2 != null) {
                view2.setVisibility(8);
            }
        }
        List<CollectionBeanSubBusiness> list = this.f38469r0;
        if (list != null && list.size() > 0 && com.join.mgps.pref.h.n(this.f38448b).x()) {
            arrayList.add(new m3.f(1, this.f38467q0));
        }
        List<DownloadTask> r02 = r0();
        try {
            Collections.sort(r02, new a());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (r02 != null && r02.size() > 0) {
            for (DownloadTask downloadTask : r02) {
                arrayList.add(new m3.f(2, downloadTask, (!this.f38480z.containsKey(downloadTask.getCrc_link_type_val()) || this.f38480z.get(downloadTask.getCrc_link_type_val()) == null) ? false : this.f38480z.get(downloadTask.getCrc_link_type_val()).booleanValue()));
            }
            arrayList.add(new m3.f(3, Integer.valueOf(r02.size())));
        }
        this.f38477w.O(arrayList);
        this.f38477w.notifyDataSetChanged();
        if (r02 == null || r02.size() == 0) {
            l1();
            this.f38476v.notifyDataSetChanged();
        }
        Z0(r02);
    }

    @Override // com.join.mgps.adapter.m3.e
    public void K(String str) {
        final DownloadTask B = g1.f.G().B(str);
        if (B == null) {
            return;
        }
        if (com.join.mgps.Util.d2.i(B.getMod_info())) {
            com.join.mgps.customview.r rVar = new com.join.mgps.customview.r(getContext());
            rVar.b(new r.a() { // from class: com.join.mgps.activity.t1
                @Override // com.join.mgps.customview.r.a
                public final void a(boolean z3, String str2, boolean z4, String str3) {
                    w1.this.E0(z3, str2, z4, str3);
                }
            });
            rVar.c(this.f38459m, B);
            return;
        }
        com.join.mgps.customview.v vVar = new com.join.mgps.customview.v(getContext());
        vVar.b(new v.a() { // from class: com.join.mgps.activity.u1
            @Override // com.join.mgps.customview.v.a
            public final void a(String str2) {
                w1.this.F0(B, str2);
            }
        });
        vVar.c(this.f38459m, str);
    }

    public void K0(String str) {
        this.f38480z.put(str, Boolean.FALSE);
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(HashMap<String, Boolean> hashMap) {
        DownloadTask downloadTask;
        m3 m3Var = this.f38477w;
        if (m3Var == null || m3Var.n() == null || this.f38477w.n().size() == 0) {
            return;
        }
        for (m3.f fVar : this.f38477w.n()) {
            if (fVar.b() == 2 && fVar.a() != null && (downloadTask = (DownloadTask) fVar.a()) != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && hashMap.containsKey(downloadTask.getCrc_link_type_val())) {
                fVar.d(hashMap.get(downloadTask.getCrc_link_type_val()).booleanValue());
            }
        }
        this.f38477w.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65484k})
    public void M0(@Receiver.Extra String str) {
        boolean z3;
        List<DownloadTask> list = this.B;
        if (list == null || list.size() < 1) {
            return;
        }
        loop0: while (true) {
            z3 = false;
            for (DownloadTask downloadTask : this.B) {
                try {
                    if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && downloadTask.getCrc_link_type_val().equals(str)) {
                        DownloadTask B = g1.f.G().B(downloadTask.getCrc_link_type_val());
                        downloadTask.setOpen(true);
                        if (B != null) {
                            downloadTask.setOpenTime(B.getOpenTime());
                        }
                        String q12 = UtilsMy.q1(downloadTask);
                        if (!TextUtils.isEmpty(q12)) {
                            if ((ConstantIntEnum.CHOICENESS.value() + "").equals(q12) && this.f38479y.contains(f38447y0)) {
                                q12 = f38447y0;
                            }
                            if (q12 == null) {
                                q12 = f38447y0;
                            }
                            if (this.J == null) {
                                this.J = f38447y0;
                            }
                            if (this.f38479y.contains(q12) && (q12.equals(this.J) || this.J.equals(f38447y0))) {
                                z3 = true;
                            }
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            break loop0;
        }
        if (z3) {
            J0();
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int N() {
        return R.layout.fragment_my_game;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void N0(String str) {
        K(str);
    }

    @Override // com.join.mgps.basefragment.a
    protected int O() {
        return R.id.fragment_my_game;
    }

    void O0() {
        List<DownloadTask> list;
        int Y = g1.f.G().Y();
        if (Y > 0) {
            this.f38460n.setVisibility(0);
            TextView textView = this.f38458l;
            textView.setText(Y + "款游戏需更新");
        } else {
            this.f38460n.setVisibility(8);
        }
        List<CollectionBeanSubBusiness> list2 = this.f38469r0;
        if (list2 == null || list2.size() == 0 || !((list = this.B) == null || this.C == list.size())) {
            List<DownloadTask> list3 = this.B;
            if (list3 != null) {
                this.C = list3.size();
            }
            u0();
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return com.join.mgps.Util.b0.a(getContext(), 48.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        MyGamePlugManagerActivity_.O0(getContext()).start();
    }

    void U0() {
        this.f38479y.clear();
        this.f38479y.add(f38447y0);
        List<DownloadTask> list = this.B;
        if (list == null || list.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask : this.B) {
            if (downloadTask.isIs_fight() == 1 && !this.f38479y.contains("对战")) {
                this.f38479y.add("对战");
            }
            String w02 = w0(downloadTask);
            if (!TextUtils.isEmpty(w02)) {
                if (!this.f38479y.contains(w02)) {
                    this.f38479y.add(w02);
                }
            } else {
                Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        TipBean next = it2.next();
                        if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) <= 0) {
                            if (next.getName().contains("网游")) {
                                if (!this.f38479y.contains("网游")) {
                                    this.f38479y.add("网游");
                                }
                            } else if (next.getName().contains("单机")) {
                                if (!this.f38479y.contains("单机")) {
                                    this.f38479y.add("单机");
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.H})
    public void V0() {
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void W0() {
        u0();
    }

    public void X0() {
        m3 m3Var = this.f38477w;
        if (m3Var != null) {
            m3Var.I(true);
            J0();
        }
    }

    @Override // com.join.mgps.adapter.m3.e
    public void Y(String str) {
        I(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y0() {
        try {
            HashMap<String, Boolean> c4 = com.join.mgps.Util.g.c(getContext());
            this.A.clear();
            if (c4 != null && c4.size() != 0) {
                this.A.putAll(c4);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Z0(List<DownloadTask> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                HashMap<String, Boolean> hashMap = new HashMap<>();
                for (int i2 = 0; i2 < list.size(); i2++) {
                    DownloadTask downloadTask = list.get(i2);
                    hashMap.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(m0(getContext(), downloadTask)));
                    this.f38480z.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(m0(getContext(), downloadTask)));
                }
                L0(hashMap);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    void a1() {
        NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
        this.f38475u0 = netBroadcastReceiver;
        netBroadcastReceiver.a(new e());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        getContext().registerReceiver(this.f38475u0, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        a1();
        this.f38448b = getContext();
        com.join.mgps.Util.c0.a().d(this);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 28 && this.I.needShowPermissdialog().d().booleanValue() && !UtilsMy.c0(this.f38448b)) {
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(this.f38448b).from(2).flags(268435456)).start();
        }
        this.H = com.join.mgps.rpc.impl.c.P1();
        if (this.f38459m == null) {
            this.f38459m = ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.root);
        }
        if (getContext() instanceof MyGameManagerActivity) {
            this.f38462o.setVisibility(8);
            this.f38464p.setVisibility(0);
        }
        if (getActivity() instanceof MGMainActivity) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f38466q.getLayoutParams();
            if (i2 >= 21) {
                ((ViewGroup.MarginLayoutParams) layoutParams).height = com.join.android.app.common.utils.j.v(getContext());
            }
            this.f38466q.setLayoutParams(layoutParams);
        } else {
            this.f38466q.setBackgroundColor(-1);
        }
        this.f44771a.setNoDataCallBackListener(new LoadingLayout.a() { // from class: com.join.mgps.activity.s1
            @Override // com.join.mgps.customview.LoadingLayout.a
            public final void noDataCallBack() {
                w1.this.B0();
            }
        });
        m3 m3Var = new m3(getContext());
        this.f38477w = m3Var;
        m3Var.P(this);
        this.f38450d.setAdapter((ListAdapter) this.f38477w);
        this.f38450d.setOnScrollListener(this);
        b1();
        t0();
        loadData();
        g gVar = new g();
        this.f38476v = gVar;
        this.f38468r.setAdapter((ListAdapter) gVar);
    }

    void b1() {
        if (getActivity() == null || !(getActivity() instanceof MGMainActivity)) {
            return;
        }
        List<String> snkGameList = ((MGMainActivity) getActivity()).getSnkGameList();
        if (snkGameList == null || snkGameList.size() == 0) {
            x0();
        }
    }

    void d1() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.G <= 300) {
            return;
        }
        this.G = currentTimeMillis;
        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.p(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void e1() {
        IntentUtil.getInstance().goSearchHintActivity(getContext());
    }

    @UiThread
    public void f1(OnlineCouponConfigBean onlineCouponConfigBean) {
        this.F = onlineCouponConfigBean;
        boolean isGameStartUpSwitch = onlineCouponConfigBean.isGameStartUpSwitch();
        boolean isTabSwitch = onlineCouponConfigBean.isTabSwitch();
        boolean isReceived = onlineCouponConfigBean.isReceived();
        int account_type = AccountUtil_.getInstance_(this.f38448b).getAccountData().getAccount_type();
        PrefDef_ prefDef_ = this.I;
        Long d4 = (account_type == 1 ? prefDef_.lastGameShowOnlineCouponTime() : prefDef_.lastGameShowOnlineCouponTimeGuest()).d();
        PrefDef_ prefDef_2 = this.I;
        String d5 = (account_type == 1 ? prefDef_2.lastGameTimePeriod() : prefDef_2.lastGameTimePeriodGuest()).d();
        if (!com.join.mgps.Util.x.t(d4.longValue()) && isGameStartUpSwitch && !isReceived && !TextUtils.equals(onlineCouponConfigBean.getTimePeriodMark(), d5)) {
            m1(onlineCouponConfigBean, 2);
            if (account_type == 1) {
                this.I.lastGameShowOnlineCouponTime().g(Long.valueOf(System.currentTimeMillis()));
                this.I.lastGameTimePeriod().g(onlineCouponConfigBean.getTimePeriodMark());
                return;
            }
            this.I.lastGameShowOnlineCouponTimeGuest().g(Long.valueOf(System.currentTimeMillis()));
            this.I.lastGameTimePeriodGuest().g(onlineCouponConfigBean.getTimePeriodMark());
        } else if (!isTabSwitch || this.E || isReceived) {
        } else {
            TextView textView = this.f38472t;
            if (textView != null) {
                textView.setText(onlineCouponConfigBean.getTabHint());
            }
            LinearLayout linearLayout = this.f38470s;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            com.papa.sim.statistic.p.l(this.f38448b).M1(Event.tabStartViewSuccessTips, AccountUtil_.getInstance_(this.f38448b).getAccountData().getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(SNKGameInfoBean sNKGameInfoBean) {
        List<String> scanning_md5 = sNKGameInfoBean.getScanning_md5();
        this.f38461n0 = scanning_md5;
        if (scanning_md5 == null || scanning_md5.size() <= 0 || getActivity() == null || !(getActivity() instanceof MGMainActivity)) {
            return;
        }
        ((MGMainActivity) getActivity()).setSnkGameList(this.f38461n0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void h1() {
        com.join.mgps.customview.c0 c0Var = new com.join.mgps.customview.c0(getContext());
        c0Var.b(new b());
        c0Var.c(this.f38459m);
    }

    void i1(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        Bitmap m4 = ImageLoader.q().m(downloadTask.getPortraitURL());
        if (m4 == null) {
            m4 = c1(downloadTask.getPortraitURL());
        }
        k0(getContext(), downloadTask.getShowName(), downloadTask.getCrc_link_type_val(), m4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void j1(String str) {
        new com.join.android.app.common.dialog.d(this.f38448b, str).show();
    }

    void k0(Context context, String str, String str2, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            com.join.mgps.Util.i2.a(context).b("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService("shortcut");
            if (shortcutManager.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(context, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", str2);
                intent.addFlags(67108864);
                shortcutManager.requestPinShortcut(new ShortcutInfo.Builder(context, str).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(str).setIntent(intent).build(), PendingIntent.getBroadcast(context, 0, new Intent(context, ShortcutReceiver.class), 134217728).getIntentSender());
                com.join.mgps.Util.t1.d(context, str2);
            }
        } else {
            Intent intent2 = new Intent(com.join.mgps.Util.t1.f27839a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", str);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(context, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", str2);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            context.sendBroadcast(intent2);
            com.join.mgps.Util.t1.d(context, str2);
        }
        this.f38480z.put(str2, Boolean.FALSE);
        J0();
        j1(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k1(List<GamedownRecomendItemBean> list) {
        if (list == null) {
            return;
        }
        this.f38469r0.clear();
        for (int i2 = 0; i2 < list.size() && i2 < 6; i2++) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(list.get(i2));
            collectionBeanSubBusiness.setDownloadTask(g1.f.G().B(collectionBeanSubBusiness.getGame_id()));
            this.f38469r0.add(collectionBeanSubBusiness);
        }
        try {
            com.join.mgps.pref.h.n(getContext()).u0(JsonMapper.toJsonString(this.f38469r0));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        m3 m3Var = this.f38477w;
        if (m3Var != null) {
            m3Var.J(true);
        }
        m3 m3Var2 = this.f38477w;
        if (m3Var2 != null) {
            m3Var2.I(true);
        }
        J0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l0() {
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l1() {
        Q();
        try {
            View view = this.f38455i;
            if (view != null) {
                view.setVisibility(0);
            }
            XListView2 xListView2 = this.f38450d;
            if (xListView2 != null) {
                xListView2.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.basefragment.a, com.join.mgps.fragment.d
    protected void lazyLoad() {
    }

    @Override // com.join.mgps.basefragment.a
    protected void loadData() {
        ArrayList arrayList = new ArrayList();
        this.f38478x = arrayList;
        arrayList.addAll(Arrays.asList(getContext().getResources().getStringArray(R.array.my_game_list)));
        ArrayList arrayList2 = new ArrayList();
        String d4 = this.I.myGameAllTabSort().d();
        if (!TextUtils.isEmpty(d4)) {
            List list = null;
            try {
                list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (list != null && list.size() > 0) {
                arrayList2.addAll(list);
            } else {
                arrayList2.addAll(this.f38478x);
            }
        } else {
            arrayList2.addAll(this.f38478x);
        }
        try {
            try {
                List<DownloadTask> U = g1.f.G().U();
                List<DownloadTask> list2 = this.B;
                if (list2 != null) {
                    list2.clear();
                }
                if (U != null) {
                    for (DownloadTask downloadTask : U) {
                        if (com.join.mgps.Util.d2.i(downloadTask.getMod_info())) {
                            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
                            if (modInfoBean != null) {
                                DownloadTask B = g1.f.G().B(modInfoBean.getMod_game_id());
                                DownloadTask B2 = g1.f.G().B(modInfoBean.getMain_game_id());
                                boolean z3 = true;
                                boolean z4 = false;
                                boolean z5 = B != null && B.getStatus() == 5;
                                if (B2 != null) {
                                    if (B2.getStatus() != 5) {
                                        z3 = false;
                                    }
                                    z4 = z3;
                                }
                                if (z5 && z4) {
                                    if (!this.B.contains(B2)) {
                                        this.B.add(B2);
                                    }
                                } else if (z5) {
                                    if (!this.B.contains(B)) {
                                        this.B.add(B);
                                    }
                                } else if (z4) {
                                    if (!this.B.contains(B2)) {
                                        this.B.add(B2);
                                    }
                                } else {
                                    this.B.add(downloadTask);
                                }
                            }
                        } else {
                            this.B.add(downloadTask);
                        }
                    }
                }
                List<DownloadTask> list3 = this.B;
                if (list3 != null) {
                    this.C = list3.size();
                }
                if (this.B.size() > 0) {
                    U0();
                    n1();
                } else {
                    l1();
                }
            } catch (Exception e5) {
                e5.printStackTrace();
                l1();
            }
        } finally {
            Q();
        }
    }

    boolean m0(Context context, DownloadTask downloadTask) {
        if (downloadTask != null && downloadTask.getStatus() == 5 && (!z0(downloadTask) || !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val()))) {
            boolean z3 = !TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.apk.name());
            if (com.join.mgps.Util.d2.i(downloadTask.getRomType()) && (downloadTask.getUrl().endsWith(".apk") || downloadTask.getRomType().equals("androidobb") || downloadTask.getRomType().equals("46"))) {
                String packageName = downloadTask.getPackageName();
                if (!com.join.mgps.Util.d2.h(packageName) && y0(context, packageName) && !downloadTask.getTips().contains("网游") && !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
                if (APKUtils.E(downloadTask) && !com.join.mgps.Util.t1.c(context, downloadTask.getRef_crc_sign_id())) {
                    return true;
                }
                if (APKUtils.I(downloadTask) && !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
            } else if (z3 && !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val())) {
                return true;
            } else {
                if (APKUtils.E(downloadTask) && !com.join.mgps.Util.t1.c(context, downloadTask.getRef_crc_sign_id())) {
                    return true;
                }
                if (APKUtils.I(downloadTask) && !com.join.mgps.Util.t1.c(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.join.mgps.adapter.m3.e
    public void n(String str) {
    }

    void n0(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.B.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n1() {
        try {
            Q();
            View view = this.f38455i;
            if (view != null) {
                view.setVisibility(8);
            }
            XListView2 xListView2 = this.f38450d;
            if (xListView2 != null) {
                xListView2.setVisibility(0);
            }
            this.J = this.f38479y.get(0);
            J0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void o0(String str) {
        DownloadTask B = g1.f.G().B(str);
        Context context = getContext();
        if (B == null) {
            return;
        }
        boolean z3 = false;
        String fileType = B.getFileType();
        if (!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.android.name())) {
            z3 = true;
        }
        if (z3) {
            if (com.join.android.app.common.utils.a.g0(context).c(context, B.getPackageName())) {
                if (B.getStatus() != 5 && B.getStatus() != 9) {
                    UtilsMy.y0(B);
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(context).k(context, B.getPackageName());
                    if (k4 != null) {
                        B.setVer(k4.d() + "");
                    }
                    UtilsMy.g2(B, 5);
                    J0();
                } else {
                    com.join.android.app.common.utils.a.g0(context).c0(context, B.getPackageName());
                }
            } else {
                UtilsMy.B0(B);
                n0(B);
                UtilsMy.C3(B);
                J0();
            }
        } else {
            UtilsMy.B0(B);
            n0(B);
            UtilsMy.C3(B);
            J0();
        }
        List<DownloadTask> r02 = r0();
        if (r02 == null || r02.size() == 0) {
            this.J = f38447y0;
            this.f38457k.setText(f38447y0);
            J0();
        }
    }

    void o1() {
        if (this.f38475u0 != null) {
            getContext().unregisterReceiver(this.f38475u0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (getActivity() instanceof MGMainActivity) {
            this.D = (MGMainActivity) getActivity();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().y(this);
        o1();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadSpeed(com.join.mgps.event.k kVar) {
        if (kVar == null || TextUtils.isEmpty(kVar.a())) {
            return;
        }
        J0();
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
                    p1();
                    List<DownloadTask> list = this.B;
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    r1();
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
        v0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (MApplication.f9226r0) {
            MApplication.f9226r0 = false;
            String d4 = this.I.addedShortcutGames().d();
            if (!com.join.mgps.Util.d2.h(d4)) {
                if (d4.contains(",")) {
                    for (String str : d4.split(",")) {
                        j0(str);
                    }
                } else {
                    j0(d4);
                }
            }
        }
        O0();
        Y0();
        m3 m3Var = this.f38477w;
        if (m3Var != null) {
            m3Var.I(true);
            J0();
        }
        if (isHidden()) {
            return;
        }
        v0();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        this.f38463o0 = (i4 + i2) - 1;
        this.f38465p0 = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.d
    public void onVisible() {
        List<DownloadTask> list;
        super.onVisible();
        List<CollectionBeanSubBusiness> list2 = this.f38469r0;
        if (list2 == null || list2.size() == 0 || ((list = this.B) != null && this.C != list.size())) {
            List<DownloadTask> list3 = this.B;
            if (list3 != null) {
                this.C = list3.size();
            }
            u0();
        }
        m3 m3Var = this.f38477w;
        if (m3Var != null) {
            m3Var.I(true);
            J0();
        }
    }

    void p0(String str) {
        DownloadTask B = g1.f.G().B(str);
        if (B.getStatus() == 48) {
            com.join.mgps.Util.i2.a(getContext()).b("游戏安装中无法删除");
            return;
        }
        UtilsMy.D0(getContext(), B);
        n0(B);
        List<DownloadTask> r02 = r0();
        if (r02 == null || r02.size() == 0) {
            this.J = f38447y0;
            this.f38457k.setText(f38447y0);
        }
        J0();
    }

    void p1() {
        com.join.mgps.customview.z zVar = this.K;
        if (zVar != null && zVar.isShowing()) {
            this.f38451e.setVisibility(8);
            return;
        }
        List<DownloadTask> K = g1.f.G().K();
        if (K != null && K.size() > 0) {
            this.f38451e.setVisibility(0);
            DownloadTask downloadTask = K.get(0);
            TextView textView = this.f38452f;
            textView.setText(w0(downloadTask) + "插件正在下载中");
            TextView textView2 = this.f38453g;
            textView2.setText(downloadTask.getProgress() + "%");
            return;
        }
        this.f38451e.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void q0() {
        if (this.K == null) {
            com.join.mgps.customview.z zVar = new com.join.mgps.customview.z(getContext());
            this.K = zVar;
            zVar.k(new z.d() { // from class: com.join.mgps.activity.v1
                @Override // com.join.mgps.customview.z.d
                public final void a(String str) {
                    w1.this.C0(str);
                }
            });
            this.K.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.activity.r1
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    w1.this.D0();
                }
            });
            this.K.setWidth(-1);
        }
        this.f38451e.setVisibility(8);
        this.K.m(this.f38449c, this.f38479y, this.J);
        this.f38456j.setRotation(180.0f);
    }

    @Override // com.join.mgps.adapter.m3.e
    public void s0(DownloadTask downloadTask) {
        i1(downloadTask);
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.f38480z.put(downloadTask.getCrc_link_type_val(), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s1(DownloadTask downloadTask) {
        List<CollectionBeanSubBusiness> list;
        if (downloadTask == null || (list = this.f38471s0) == null || list.size() <= 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 < this.f38471s0.size()) {
                if (com.join.mgps.Util.d2.i(this.f38471s0.get(i2).getGame_id()) && this.f38471s0.get(i2).getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    this.f38471s0.get(i2).setDownloadTask(downloadTask);
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        this.f38476v.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        this.D.callbackHome(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void t0() {
        List<GameSortBean> data;
        try {
            ResultMainBean<List<GameSortBean>> B0 = this.H.B0(RequestBeanUtil.getInstance(this.f38448b).getGameSortRequestBean(com.join.android.app.common.utils.j.n(this.f38448b.getApplicationContext()).z(), ""));
            if (B0 != null && B0.getFlag() == 1 && B0.getMessages() != null && (data = B0.getMessages().getData()) != null && data.size() > 0) {
                this.f38478x.clear();
                for (GameSortBean gameSortBean : data) {
                    if (gameSortBean.getName().contains("单机")) {
                        this.f38478x.add("单机");
                    } else {
                        this.f38478x.add(gameSortBean.getName());
                    }
                }
            }
            this.I.myGameAllTabSort().g(JsonMapper.getInstance().toJson(this.f38478x));
        } catch (Exception e4) {
            e4.printStackTrace();
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
                    S0(downloadTask);
                    p1();
                    return;
                case 3:
                    Q0(downloadTask);
                    p1();
                    return;
                case 4:
                default:
                    return;
                case 5:
                    T0(downloadTask);
                    p1();
                    return;
                case 6:
                    R0(downloadTask);
                    p1();
                    return;
            }
        }
    }

    void u0() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f38473t0 < com.join.mgps.data.c.f47286a) {
            return;
        }
        this.f38473t0 = currentTimeMillis;
        try {
            if (com.join.android.app.common.utils.f.j(getContext())) {
                String uid = AccountUtil_.getInstance_(this.f38448b).getUid();
                String token = AccountUtil_.getInstance_(this.f38448b).getToken();
                if (TextUtils.isEmpty(uid)) {
                    uid = "";
                }
                if (TextUtils.isEmpty(token)) {
                    token = "";
                }
                RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this.f38448b);
                QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                queryDownloadInfoRequestArgs.setGameId("0");
                queryDownloadInfoRequestArgs.setDataType("1");
                queryDownloadInfoRequestArgs.setUid(uid);
                queryDownloadInfoRequestArgs.setToken(token);
                requestModel.setArgs(queryDownloadInfoRequestArgs);
                com.join.mgps.rpc.impl.h.L().J().n0(requestModel).enqueue(new d());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    String w0(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return "";
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        StringBuilder sb = new StringBuilder();
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        sb.append(constantIntEnum.value());
        sb.append("");
        simpleArrayMap.put(sb.toString(), constantIntEnum.nickName());
        StringBuilder sb2 = new StringBuilder();
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.FC;
        sb2.append(constantIntEnum2.value());
        sb2.append("");
        simpleArrayMap.put(sb2.toString(), constantIntEnum2.nickName());
        StringBuilder sb3 = new StringBuilder();
        ConstantIntEnum constantIntEnum3 = ConstantIntEnum.GBA;
        sb3.append(constantIntEnum3.value());
        sb3.append("");
        simpleArrayMap.put(sb3.toString(), constantIntEnum3.nickName());
        StringBuilder sb4 = new StringBuilder();
        ConstantIntEnum constantIntEnum4 = ConstantIntEnum.PSP;
        sb4.append(constantIntEnum4.value());
        sb4.append("");
        simpleArrayMap.put(sb4.toString(), constantIntEnum4.nickName());
        StringBuilder sb5 = new StringBuilder();
        ConstantIntEnum constantIntEnum5 = ConstantIntEnum.NDS;
        sb5.append(constantIntEnum5.value());
        sb5.append("");
        simpleArrayMap.put(sb5.toString(), constantIntEnum5.nickName());
        StringBuilder sb6 = new StringBuilder();
        ConstantIntEnum constantIntEnum6 = ConstantIntEnum.PS2;
        sb6.append(constantIntEnum6.value());
        sb6.append("");
        simpleArrayMap.put(sb6.toString(), constantIntEnum6.nickName());
        StringBuilder sb7 = new StringBuilder();
        ConstantIntEnum constantIntEnum7 = ConstantIntEnum.GBC;
        sb7.append(constantIntEnum7.value());
        sb7.append("");
        simpleArrayMap.put(sb7.toString(), constantIntEnum7.nickName());
        StringBuilder sb8 = new StringBuilder();
        ConstantIntEnum constantIntEnum8 = ConstantIntEnum.MD;
        sb8.append(constantIntEnum8.value());
        sb8.append("");
        simpleArrayMap.put(sb8.toString(), constantIntEnum8.nickName());
        simpleArrayMap.put(constantIntEnum8.value() + "", constantIntEnum8.nickName());
        StringBuilder sb9 = new StringBuilder();
        ConstantIntEnum constantIntEnum9 = ConstantIntEnum.PS;
        sb9.append(constantIntEnum9.value());
        sb9.append("");
        simpleArrayMap.put(sb9.toString(), constantIntEnum9.nickName());
        StringBuilder sb10 = new StringBuilder();
        ConstantIntEnum constantIntEnum10 = ConstantIntEnum.SFC;
        sb10.append(constantIntEnum10.value());
        sb10.append("");
        simpleArrayMap.put(sb10.toString(), constantIntEnum10.nickName());
        StringBuilder sb11 = new StringBuilder();
        ConstantIntEnum constantIntEnum11 = ConstantIntEnum.WSC;
        sb11.append(constantIntEnum11.value());
        sb11.append("");
        simpleArrayMap.put(sb11.toString(), constantIntEnum11.nickName());
        StringBuilder sb12 = new StringBuilder();
        ConstantIntEnum constantIntEnum12 = ConstantIntEnum.N64;
        sb12.append(constantIntEnum12.value());
        sb12.append("");
        simpleArrayMap.put(sb12.toString(), constantIntEnum12.nickName());
        StringBuilder sb13 = new StringBuilder();
        ConstantIntEnum constantIntEnum13 = ConstantIntEnum.ONS;
        sb13.append(constantIntEnum13.value());
        sb13.append("");
        simpleArrayMap.put(sb13.toString(), constantIntEnum13.nickName());
        StringBuilder sb14 = new StringBuilder();
        ConstantIntEnum constantIntEnum14 = ConstantIntEnum.DC;
        sb14.append(constantIntEnum14.value());
        sb14.append("");
        simpleArrayMap.put(sb14.toString(), constantIntEnum14.nickName());
        StringBuilder sb15 = new StringBuilder();
        ConstantIntEnum constantIntEnum15 = ConstantIntEnum.H5;
        sb15.append(constantIntEnum15.value());
        sb15.append("");
        simpleArrayMap.put(sb15.toString(), constantIntEnum15.nickName());
        String romType = downloadTask.getRomType();
        if (TextUtils.isEmpty(romType)) {
            downloadTask.setRomType(downloadTask.getPlugin_num());
        }
        return simpleArrayMap.containsKey(romType) ? (String) simpleArrayMap.get(romType) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void x0() {
        if (com.join.android.app.common.utils.f.j(getActivity())) {
            try {
                ResultMainBean<SNKGameInfoBean> V = this.H.V(RequestBeanUtil.getInstance(getActivity()).getPreloadingADRequestBean());
                if (V == null || V.getCode() != 600) {
                    return;
                }
                g1(V.getMessages().getData());
            } catch (Exception e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("e:");
                sb.append(e4.getMessage());
            }
        }
    }

    boolean y0(Context context, String str) {
        boolean z3 = false;
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.A.containsKey(str) && this.A.get(str) != null) {
            if (this.A.get(str) != null) {
                return this.A.get(str).booleanValue();
            }
            return false;
        }
        try {
            z3 = com.join.mgps.Util.g.d(context, str);
            this.A.put(str, Boolean.valueOf(z3));
            return z3;
        } catch (Exception e4) {
            e4.printStackTrace();
            return z3;
        }
    }

    boolean z0(DownloadTask downloadTask) {
        Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
        while (it2.hasNext()) {
            TipBean next = it2.next();
            if (UtilsMy.l0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) <= 0 && next.getName().contains("单机")) {
                return true;
            }
        }
        return false;
    }
}
