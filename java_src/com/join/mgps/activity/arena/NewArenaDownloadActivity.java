package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.bean.ButtonBean;
import g1.f;
import java.io.File;
import java.util.List;
import n1.o;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.dialog_arena_download_game_plugin)
/* loaded from: classes.dex */
public class NewArenaDownloadActivity extends Activity {
    private EMUApkTable D;
    String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    @Extra

    /* renamed from: a  reason: collision with root package name */
    String f36652a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    boolean f36653b;
    @Extra

    /* renamed from: c  reason: collision with root package name */
    boolean f36654c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    String f36655d;

    /* renamed from: e  reason: collision with root package name */
    com.join.mgps.rpc.d f36656e;

    /* renamed from: f  reason: collision with root package name */
    DetailResultBean f36657f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    SimpleDraweeView f36658g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f36659h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f36660i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    ProgressBar f36661j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f36662k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    SimpleDraweeView f36663l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f36664m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ProgressBar f36665n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f36666o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    Button f36667p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    LinearLayout f36668q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    LinearLayout f36669r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    ImageView f36670s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    Button f36671t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    View f36672u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    LinearLayout f36673v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    LinearLayout f36674w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    LinearLayout f36675x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    TextView f36676y;

    /* renamed from: z  reason: collision with root package name */
    private int f36677z = 1;
    private int A = 2;
    private int B = 3;
    private int C = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GameRoomActivity.x {
        a() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            NewArenaDownloadActivity.this.c();
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity.this.d(null);
        }
    }

    private boolean j(String str) {
        try {
            getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void a() {
        this.f36656e = com.join.mgps.rpc.impl.c.P1();
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        Intent intent = getIntent();
        this.f36652a = intent.getStringExtra("gameId");
        this.f36653b = intent.getBooleanExtra(NewArenaDownloadActivity_.f36681q0, false);
        this.f36654c = intent.getBooleanExtra(NewArenaDownloadActivity_.f36682r0, false);
        c0.a().d(this);
        setFinishOnTouchOutside(false);
        i();
        p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b() {
        String str;
        DetailResultBean detailResultBean = this.f36657f;
        if (detailResultBean == null) {
            return;
        }
        int i2 = 0;
        if (!TextUtils.isEmpty(detailResultBean.getPlugin_num()) && d2.j(this.f36657f.getPlugin_num())) {
            i2 = Integer.parseInt(this.f36657f.getPlugin_num());
        }
        if (UtilsMy.H1(i2)) {
            str = UtilsMy.y1(this.f36657f.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
        } else {
            str = "";
        }
        try {
            String d4 = new PrefDef_(this).androidIdNullsKey().d();
            if (d2.i(d4)) {
                List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                if (d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z)) {
                    if (IntentUtil.getInstance().goLogin(this)) {
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
        if (new PrefDef_(this).download_game_switch().d().booleanValue()) {
            UtilsMy.p0(this, 2, this.f36652a, str, new a());
        } else {
            c();
        }
    }

    void c() {
        DownloadTask downloadTask;
        int i2 = this.C;
        if (i2 == this.f36677z) {
            DetailResultBean detailResultBean = this.f36657f;
            if (detailResultBean != null) {
                downloadTask = detailResultBean.getDownloadtaskDown();
                downloadTask.setFromRecomDown(true);
            } else {
                downloadTask = null;
            }
            if (downloadTask != null) {
                downloadTask.setDisableShowSpeedUpPrompt(true);
            }
            if (this.f36657f != null && UtilsMy.U0(this, downloadTask)) {
                if (downloadTask == null || TextUtils.isEmpty(downloadTask.getDownload_source_switch_v2()) || !"1".equals(downloadTask.getDownload_source_switch_v2())) {
                    return;
                }
                if (TextUtils.isEmpty(downloadTask.getDownload_source_url()) && TextUtils.isEmpty(downloadTask.getDownload_outside_url())) {
                    return;
                }
                finish();
                return;
            }
            DetailResultBean detailResultBean2 = this.f36657f;
            if (detailResultBean2 != null && detailResultBean2.getDown_status() == 5) {
                UtilsMy.S0(this, downloadTask);
                return;
            }
            this.f36676y.setText("点击关闭按钮后，游戏会在后台\n继续下载哦~");
            this.C = this.A;
            this.f36667p.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_gray_four_1));
            if (!this.f36653b) {
                DetailResultBean detailResultBean3 = this.f36657f;
                if (detailResultBean3 != null) {
                    this.E = detailResultBean3.getPlugin_num();
                }
                this.D = o.o().n(this.E);
                DownloadTask B = f.G().B(this.E);
                if (B != null) {
                    if (B.getUrl().equals(this.D.getDown_url()) && B.getVerCode() == this.D.getVerCode() && (this.D.getDown_type() != 2 || !h.A(this.D, false))) {
                        File file = B.getGameZipPath() != null ? new File(B.getGameZipPath()) : null;
                        if ((B.getStatus() == 5 || B.getStatus() == 11) && file != null && file.exists()) {
                            if (h.H(B, null)) {
                                UtilsMy.g2(B, 5);
                            } else {
                                com.join.android.app.common.utils.a.g0(this).u(this, file);
                            }
                        }
                    } else if (B.getStatus() == 5) {
                        B.setStatus(9);
                        if (this.D.getDown_type() == 2) {
                            UtilsMy.A0(B);
                        }
                        f.G().update(B);
                    } else if (!h.i(this.D) && (B.getDown_type() != 2 || B.getStatus() != 11)) {
                        if (B.getStatus() == 36 || B.getStatus() == 12) {
                            return;
                        }
                        com.php25.PDownload.d.h(B);
                        com.php25.PDownload.d.a(B);
                        f.G().delete((f) B);
                    } else {
                        com.join.android.app.common.servcie.a.e().q(this, B);
                        return;
                    }
                }
                e();
            }
            if (this.f36654c) {
                return;
            }
            f();
        } else if (i2 == this.B) {
            Intent intent = new Intent();
            intent.putExtra("gameId", this.f36652a);
            setResult(-1, intent);
            finish();
            if (TextUtils.isEmpty(this.f36655d) || !this.f36655d.equals("MGMainActivity_10004")) {
                return;
            }
            com.wufan.friend.chat.c.u().O();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void d(DetailResultBean detailResultBean) {
        this.f36657f = detailResultBean;
        if (detailResultBean == null) {
            f G = f.G();
            DownloadTask B = G.B(this.f36652a + "");
            if (B != null && B.getStatus() == 5) {
                this.f36654c = true;
                EMUApkTable n4 = o.o().n(B.getPlugin_num());
                if (n4 != null) {
                    if (h.t(this, n4, false, new String[0])) {
                        if (UtilsMy.q0(this, n4)) {
                            this.f36653b = false;
                            this.F = n4.getLogo();
                            this.G = n4.getApk_name();
                            this.H = n4.getSize();
                            this.E = n4.getTag_id();
                        } else {
                            this.f36653b = true;
                        }
                    } else {
                        this.E = n4.getTag_id();
                        this.f36653b = false;
                        this.F = n4.getLogo();
                        this.G = n4.getApk_name();
                        this.H = n4.getSize();
                    }
                } else {
                    this.f36653b = true;
                }
                o();
                return;
            }
            this.f36654c = false;
            g();
            return;
        }
        detailResultBean.set_from(120);
        this.J = detailResultBean.getGame_name();
        this.I = detailResultBean.getIco_remote();
        this.K = detailResultBean.getSize();
        this.f36654c = false;
        EMUApkTable n5 = o.o().n(detailResultBean.getPlugin_num());
        this.D = n5;
        if (n5 != null) {
            if (h.t(this, n5, false, new String[0])) {
                if (UtilsMy.q0(this, this.D)) {
                    this.f36653b = false;
                    this.F = this.D.getLogo();
                    this.G = this.D.getApk_name();
                    this.H = this.D.getSize();
                    this.E = this.D.getTag_id();
                } else {
                    this.f36653b = true;
                }
            } else {
                this.f36653b = false;
                this.F = this.D.getLogo();
                this.G = this.D.getApk_name();
                this.H = this.D.getSize();
                this.E = this.D.getTag_id();
            }
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void e() {
        UtilsMy.V0(this.D, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void f() {
        DetailResultBean detailResultBean = this.f36657f;
        if (detailResultBean == null) {
            return;
        }
        DownloadTask downloadtaskDown = detailResultBean.getDownloadtaskDown();
        downloadtaskDown.setFromRecomDown(true);
        downloadtaskDown.setDisableShowSpeedUpPrompt(true);
        com.php25.PDownload.d.c(downloadtaskDown, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                int uid = accountData != null ? accountData.getUid() : 0;
                RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
                ResultMainBean<List<DetailResultBean>> R = this.f36656e.R(requestBeanUtil.getAppDetialBean(this.f36652a + "", uid, null));
                if (R != null && R.getFlag() != 0) {
                    List<DetailResultBean> data = R.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        this.f36657f = detailResultBean;
                        d(detailResultBean);
                        return;
                    }
                    return;
                } else if (R != null && R.getFlag() != 0) {
                    n();
                    return;
                } else {
                    n();
                    return;
                }
            } catch (Exception unused) {
                n();
                return;
            }
        }
        n();
    }

    void h() {
        FriendInviteBean s3 = com.wufan.friend.chat.c.u().s();
        if (s3 == null || TextUtils.isEmpty(this.f36652a) || s3.getGameId() == 0) {
            return;
        }
        String str = this.f36652a;
        if (str.equals("" + s3.getGameId())) {
            com.wufan.friend.chat.c.u().P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i() {
        this.f36673v.setVisibility(8);
        this.f36668q.setVisibility(0);
        this.f36669r.setVisibility(8);
        new Handler().post(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void k() {
        h();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l() {
        i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void m() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n() {
        this.f36673v.setVisibility(8);
        this.f36668q.setVisibility(8);
        this.f36669r.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o() {
        f G = f.G();
        DownloadTask B = G.B(this.f36652a + "");
        this.f36673v.setVisibility(0);
        this.f36668q.setVisibility(8);
        this.f36669r.setVisibility(8);
        StringBuilder sb = new StringBuilder("你需要下载游戏 ");
        if (!this.f36654c) {
            this.f36675x.setVisibility(0);
            SimpleDraweeView simpleDraweeView = this.f36658g;
            if (simpleDraweeView != null) {
                simpleDraweeView.getContext();
                String str = this.I;
                if (str == null) {
                    MyImageLoader.f(this.f36658g, R.drawable.net_match_default_user_icon, MyImageLoader.E(this, R.drawable.net_match_default_user_icon).toString(), MyImageLoader.C(this));
                } else {
                    MyImageLoader.u(this.f36658g, R.drawable.net_match_default_user_icon, str, MyImageLoader.C(this));
                }
            }
            TextView textView = this.f36659h;
            if (textView != null) {
                textView.setText(this.J);
            }
            TextView textView2 = this.f36662k;
            if (textView2 != null) {
                textView2.setText(this.K + "M");
            }
            if (B != null) {
                if (B.getStatus() == 5) {
                    this.f36661j.setVisibility(4);
                    this.f36654c = true;
                    this.f36662k.setText("下载完成");
                } else {
                    this.f36661j.setProgress((int) B.getProgress());
                }
            }
        }
        if (!this.f36653b) {
            this.f36674w.setVisibility(0);
            SimpleDraweeView simpleDraweeView2 = this.f36663l;
            if (simpleDraweeView2 == null) {
                return;
            }
            Context context = simpleDraweeView2.getContext();
            String str2 = this.F;
            if (str2 == null) {
                MyImageLoader.f(this.f36663l, R.drawable.net_match_default_user_icon, MyImageLoader.E(context, R.drawable.net_match_default_user_icon).toString(), MyImageLoader.C(this));
            } else {
                MyImageLoader.u(this.f36663l, R.drawable.net_match_default_user_icon, str2, MyImageLoader.C(this));
            }
            this.f36664m.setText(this.G);
            TextView textView3 = this.f36666o;
            textView3.setText(this.H + "M");
            EMUApkTable n4 = o.o().n(this.E);
            DownloadTask B2 = f.G().B(this.E);
            if (n4 != null && B2 != null && B2.getUrl().equals(n4.getDown_url())) {
                if (B2.getStatus() == 48) {
                    this.f36667p.setText("安装中");
                    this.f36665n.setProgress(100);
                } else if (B2.getStatus() == 11) {
                    this.f36667p.setText("安装");
                    this.f36665n.setProgress(100);
                } else {
                    this.f36665n.setProgress((int) B2.getProgress());
                }
            }
        }
        this.f36676y.setText(sb.deleteCharAt(sb.length() - 1).toString());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        h();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        c0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(l lVar) {
        boolean z3;
        DownloadTask a4 = lVar.a();
        if (this.D == null || this.f36653b || !this.f36654c || a4 == null || a4.getUrl().equals(this.D.getDown_url()) || a4.getCrc_link_type_val().equals(this.f36652a)) {
            int c4 = lVar.c();
            boolean z4 = true;
            if (c4 != 5) {
                if (c4 == 8) {
                    boolean z5 = this.f36653b;
                    if (z5 && this.f36654c) {
                        return;
                    }
                    if (z5) {
                        z3 = false;
                    } else {
                        com.join.android.app.common.servcie.a e4 = com.join.android.app.common.servcie.a.e();
                        DownloadTask f4 = e4.f(this.E + "");
                        if (f4 == null) {
                            return;
                        }
                        EMUApkTable eMUApkTable = this.D;
                        if (eMUApkTable != null && !eMUApkTable.getDown_url().equals(f4.getUrl())) {
                            return;
                        }
                        this.f36665n.setVisibility(0);
                        this.f36665n.setProgress((int) f4.getProgress());
                        TextView textView = this.f36666o;
                        textView.setText(UtilsMy.a(f4.getCurrentSize()) + e.F0 + UtilsMy.a((long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d)));
                        z3 = true;
                    }
                    if (this.f36654c) {
                        z4 = z3;
                    } else {
                        com.join.android.app.common.servcie.a e5 = com.join.android.app.common.servcie.a.e();
                        DownloadTask f5 = e5.f(this.f36652a + "");
                        if (f5 == null) {
                            return;
                        }
                        this.f36661j.setVisibility(0);
                        this.f36661j.setProgress((int) f5.getProgress());
                        long parseDouble = (long) (Double.parseDouble(f5.getShowSize()) * 1024.0d * 1024.0d);
                        TextView textView2 = this.f36662k;
                        textView2.setText(UtilsMy.a(f5.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
                    }
                    if (z4) {
                        this.f36676y.setText("点击关闭按钮后，游戏会在后台\n继续下载哦~");
                        this.C = this.A;
                        this.f36667p.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_gray_four_1));
                        return;
                    }
                    return;
                } else if (c4 != 11 && c4 != 48) {
                    return;
                }
            }
            DownloadTask a5 = lVar.a();
            if (a5 == null || a5.getCrc_link_type_val().equals(this.f36652a) || a5.getFileType().equals(Dtype.chajian.name())) {
                if (a5.getFileType().equals(Dtype.chajian.name())) {
                    this.f36653b = true;
                    this.f36666o.setText("下载完成");
                    this.f36665n.setVisibility(4);
                } else if (a5.getFileType().equals(Dtype.apk.name())) {
                    this.f36654c = true;
                    this.f36662k.setText("下载完成");
                    this.f36661j.setVisibility(4);
                }
                p();
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p() {
        f G = f.G();
        DownloadTask B = G.B(this.f36652a + "");
        if (B != null && this.E == null) {
            this.E = B.getPlugin_num();
        }
        if (this.D == null && this.E != null) {
            this.D = o.o().n(this.E);
        }
        EMUApkTable eMUApkTable = this.D;
        if (eMUApkTable != null) {
            if (h.t(this, eMUApkTable, false, new String[0]) && !UtilsMy.q0(this, this.D)) {
                if (B != null && B.getStatus() == 5) {
                    this.C = this.B;
                    this.f36667p.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_blue_four));
                    this.f36667p.setText("进入房间");
                    return;
                }
                this.f36667p.setBackgroundDrawable(getResources().getDrawable(R.drawable.bg_btn_border_gray_four_1));
            } else if (B != null) {
                DownloadTask B2 = f.G().B(B.getPlugin_num());
                if (B.getStatus() == 5 && B2 != null && B2.getStatus() == 11) {
                    i2.a(this).b("插件正在安装...");
                    com.join.android.app.common.servcie.a.e().q(this, B2);
                    finish();
                }
            }
        }
    }
}
