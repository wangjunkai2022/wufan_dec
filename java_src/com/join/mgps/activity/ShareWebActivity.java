package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.DownloadManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.BaseFragmentActivity;
import com.MApplication;
import com.alipay.sdk.app.PayTask;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.StartGameMeta;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.e2;
import com.join.mgps.activity.ShareWebActivity;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.LiveUploadData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PaOpenBean;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PayResult;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.dto.VipMoneyRequest;
import com.join.mgps.dto.WebAccountDataBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.socket.fight.arena.b;
import com.mgsim.common.fragment.BackHandledFragment;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomCategory;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.wrapper.UserPrefs;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.bither.util.b;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.share_activity_layout)
/* loaded from: classes.dex */
public class ShareWebActivity extends BaseFragmentActivity implements LJWebView.b, e2.e, com.mgsim.common.fragment.a {
    public static final int W0 = 1;
    public static final int X0 = 2;
    public static final int Y0 = 5000;
    public static final int Z0 = 5001;

    /* renamed from: a1  reason: collision with root package name */
    public static final int f35381a1 = 5002;

    /* renamed from: b1  reason: collision with root package name */
    public static final int f35382b1 = 5003;

    /* renamed from: c1  reason: collision with root package name */
    private static final int f35383c1 = 2;

    /* renamed from: d1  reason: collision with root package name */
    private static final int f35384d1 = 4112;

    /* renamed from: e1  reason: collision with root package name */
    private static final int f35385e1 = 100;

    /* renamed from: f1  reason: collision with root package name */
    private static final int f35386f1 = 200;

    /* renamed from: g1  reason: collision with root package name */
    private static final int f35387g1 = 10;
    private int A0;
    @Extra
    IntentDateBean B;
    private int B0;
    @Extra
    IntentDataMain C;
    private int C0;
    private View D;
    private GameRoom E0;
    private WebChromeClient F;
    private com.join.mgps.dialog.v0 F0;
    private com.join.mgps.dialog.x0 G0;
    @Pref
    PrefDef_ H;
    private boolean I;
    private com.join.mgps.dialog.e0 J;
    private Dialog J0;
    private com.join.mgps.dialog.s1 K;
    private Uri K0;
    private Uri L0;
    private com.join.mgps.Util.e2 N0;
    Iterator<String> O0;
    private BackHandledFragment U0;
    private boolean V0;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f35391d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    LinearLayout f35392e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    RelativeLayout f35393f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f35394g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f35395h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f35396i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    FrameLayout f35397j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    RelativeLayout f35398k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    LJWebView f35399l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    ImageView f35400m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ImageView f35401n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    ImageView f35403o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ImageView f35405p;

    /* renamed from: p0  reason: collision with root package name */
    Dialog f35406p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    ImageView f35407q;
    @ViewById(R.id.video_view)

    /* renamed from: r  reason: collision with root package name */
    FrameLayout f35409r;

    /* renamed from: s  reason: collision with root package name */
    com.join.mgps.rpc.d f35411s;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.rpc.b f35413t;

    /* renamed from: u  reason: collision with root package name */
    private String f35415u;

    /* renamed from: v  reason: collision with root package name */
    private String f35417v;

    /* renamed from: v0  reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f35418v0;

    /* renamed from: w  reason: collision with root package name */
    private long f35419w;

    /* renamed from: w0  reason: collision with root package name */
    private String f35420w0;

    /* renamed from: x  reason: collision with root package name */
    private Activity f35421x;
    @Bean

    /* renamed from: x0  reason: collision with root package name */
    com.join.mgps.Util.b f35422x0;

    /* renamed from: z  reason: collision with root package name */
    private AccountBean f35425z;

    /* renamed from: z0  reason: collision with root package name */
    private int f35426z0;

    /* renamed from: a  reason: collision with root package name */
    String f35388a = "ShareWebActivity";

    /* renamed from: b  reason: collision with root package name */
    private String f35389b = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";

    /* renamed from: c  reason: collision with root package name */
    private Handler f35390c = new Handler();

    /* renamed from: y  reason: collision with root package name */
    private boolean f35423y = false;
    private boolean A = false;
    private int E = 0;
    private boolean G = false;

    /* renamed from: n0  reason: collision with root package name */
    com.join.mgps.dialog.x0 f35402n0 = null;

    /* renamed from: o0  reason: collision with root package name */
    boolean f35404o0 = false;

    /* renamed from: q0  reason: collision with root package name */
    AlertDialog.Builder f35408q0 = null;

    /* renamed from: r0  reason: collision with root package name */
    private final PostingActivity.m f35410r0 = new h();
    @SuppressLint({"HandlerLeak"})

    /* renamed from: s0  reason: collision with root package name */
    private Handler f35412s0 = new k();

    /* renamed from: t0  reason: collision with root package name */
    boolean f35414t0 = false;

    /* renamed from: u0  reason: collision with root package name */
    long f35416u0 = 0;

    /* renamed from: y0  reason: collision with root package name */
    private final SocketListener.NotifyObserver f35424y0 = new n();
    private int D0 = -1;
    boolean H0 = false;
    boolean I0 = false;
    private boolean M0 = false;
    private boolean P0 = false;
    private List<String> Q0 = new ArrayList();
    List<String> R0 = new ArrayList();
    private b.e S0 = new e();
    private List<String> T0 = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements InputNumView.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f35427a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameRoom f35428b;

        a(com.join.mgps.customview.input.a aVar, GameRoom gameRoom) {
            this.f35427a = aVar;
            this.f35428b = gameRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f35427a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String str) {
            this.f35427a.c();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ShareWebActivity.this.f2("正在获取房间...");
            ShareWebActivity.this.y1(this.f35428b, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity.this.H1(100);
            ShareWebActivity.this.J0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity.this.H1(200);
            ShareWebActivity.this.J0.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity.this.J0.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class e implements b.e {
        e() {
        }

        private void b(List<String> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            com.join.mgps.Util.t0.d("uploadData", "  togglePostSubmit " + list.size());
            ShareWebActivity.this.T0.clear();
            ShareWebActivity.this.T0.addAll(list);
            ShareWebActivity.this.x1();
            ShareWebActivity.this.p2();
            ShareWebActivity.this.P0 = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00a1 A[SYNTHETIC] */
        @Override // net.bither.util.b.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.Boolean r9, java.util.Map<java.lang.String, java.lang.String> r10, java.util.Map<java.lang.String, java.lang.Integer> r11) {
            /*
                r8 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r0.append(r9)
                java.lang.String r1 = "   "
                r0.append(r1)
                int r1 = r10.size()
                r0.append(r1)
                java.lang.String r1 = "  "
                r0.append(r1)
                int r1 = r11.size()
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "uploadData"
                com.join.mgps.Util.t0.d(r1, r0)
                boolean r9 = r9.booleanValue()
                if (r9 == 0) goto La8
                com.join.mgps.activity.ShareWebActivity r9 = com.join.mgps.activity.ShareWebActivity.this
                java.util.List<java.lang.String> r9 = r9.R0
                if (r9 == 0) goto La8
                int r9 = r9.size()
                if (r9 == 0) goto La8
                java.util.ArrayList r9 = new java.util.ArrayList
                r9.<init>()
                r0 = 0
                r1 = 0
            L42:
                com.join.mgps.activity.ShareWebActivity r2 = com.join.mgps.activity.ShareWebActivity.this
                java.util.List<java.lang.String> r2 = r2.R0
                int r2 = r2.size()
                if (r1 >= r2) goto La4
                com.join.mgps.activity.ShareWebActivity r2 = com.join.mgps.activity.ShareWebActivity.this
                java.util.List<java.lang.String> r2 = r2.R0
                java.lang.Object r2 = r2.get(r1)
                java.lang.String r2 = (java.lang.String) r2
                java.util.Set r3 = r11.keySet()
                r4 = 1
                java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L80
                r5 = 0
            L60:
                boolean r6 = r3.hasNext()     // Catch: java.lang.Exception -> L7e
                if (r6 == 0) goto L85
                java.lang.Object r6 = r3.next()     // Catch: java.lang.Exception -> L7e
                java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L7e
                java.io.File r7 = new java.io.File     // Catch: java.lang.Exception -> L7e
                r7.<init>(r6)     // Catch: java.lang.Exception -> L7e
                java.lang.String r7 = r7.getName()     // Catch: java.lang.Exception -> L7e
                boolean r7 = r2.contains(r7)     // Catch: java.lang.Exception -> L7e
                if (r7 == 0) goto L60
                r2 = r6
                r5 = 1
                goto L60
            L7e:
                r3 = move-exception
                goto L82
            L80:
                r3 = move-exception
                r5 = 0
            L82:
                r3.printStackTrace()
            L85:
                if (r5 != 0) goto L96
                java.lang.Object r3 = r11.get(r2)     // Catch: java.lang.Exception -> L92
                java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Exception -> L92
                int r5 = r3.intValue()     // Catch: java.lang.Exception -> L92
                goto L96
            L92:
                r3 = move-exception
                r3.printStackTrace()
            L96:
                java.lang.Object r2 = r10.get(r2)
                java.lang.String r2 = (java.lang.String) r2
                if (r5 != r4) goto La1
                r9.add(r2)
            La1:
                int r1 = r1 + 1
                goto L42
            La4:
                r8.b(r9)
                goto Lac
            La8:
                r9 = 0
                r8.b(r9)
            Lac:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ShareWebActivity.e.a(java.lang.Boolean, java.util.Map, java.util.Map):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements DownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f35434a;

        f(IntentDateBean intentDateBean) {
            this.f35434a = intentDateBean;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j4) {
            ShareWebActivity.this.A1(str, this.f35434a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements w2.g<com.tbruyelle.rxpermissions2.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IntentDateBean f35436a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35437b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35439a;

            a(String str) {
                this.f35439a = str;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(ShareWebActivity.this.f35421x);
                a4.b(this.f35439a + "正在下载");
                Activity activity = ShareWebActivity.this.f35421x;
                String str = g.this.f35437b;
                UtilsMy.E0(activity, str, "temp_" + this.f35439a);
                ShareWebActivity.this.J.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Build.VERSION.SDK_INT >= 11) {
                    ((ClipboardManager) ShareWebActivity.this.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, g.this.f35437b));
                } else {
                    ((ClipboardManager) ShareWebActivity.this.getSystemService("clipboard")).setText(g.this.f35437b);
                }
                ShareWebActivity.this.J.dismiss();
                if (ShareWebActivity.this.K != null) {
                    ShareWebActivity.this.K.c();
                }
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                shareWebActivity.K = new com.join.mgps.dialog.s1(shareWebActivity, shareWebActivity.f35410r0, 4355, "提示", "已复制地址至剪切板，请自行使用浏览器打开。", "我知道了");
                ShareWebActivity.this.K.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c implements DialogInterface.OnClickListener {
            c() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", ShareWebActivity.this.getPackageName(), null));
                ShareWebActivity.this.startActivity(intent);
            }
        }

        g(IntentDateBean intentDateBean, String str) {
            this.f35436a = intentDateBean;
            this.f35437b = str;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                Object object = this.f35436a.getObject();
                UpdateIntentDataBean updateIntentDataBean = null;
                try {
                    if (object instanceof UpdateIntentDataBean) {
                        updateIntentDataBean = (UpdateIntentDataBean) object;
                    }
                } catch (Exception unused) {
                }
                if (updateIntentDataBean != null && com.join.mgps.Util.u.f27861t.equals(this.f35436a.getFrom())) {
                    updateIntentDataBean.getDownloadTask().setUrl(this.f35437b);
                    if (UtilsMy.T0(ShareWebActivity.this.f35421x, updateIntentDataBean.getDownloadTask())) {
                        return;
                    }
                    ChociceDownActivity_.O0(ShareWebActivity.this.f35421x).a(updateIntentDataBean.getDownloadTask()).c(updateIntentDataBean).b(10).start();
                } else if (updateIntentDataBean != null && "11".equals(this.f35436a.getFrom())) {
                    updateIntentDataBean.getDownloadTask().setUrl(this.f35437b);
                    if (UtilsMy.T0(ShareWebActivity.this.f35421x, updateIntentDataBean.getDownloadTask())) {
                        return;
                    }
                    ChociceDownActivity_.O0(ShareWebActivity.this.f35421x).a(updateIntentDataBean.getDownloadTask()).c(updateIntentDataBean).b(12).start();
                } else {
                    if (!ShareWebActivity.this.H.firstShowUserPermiss().d().booleanValue()) {
                        MobclickAgent.onEvent(ShareWebActivity.this.f35421x, "onSourceDownloadBegin");
                    }
                    String str = this.f35437b;
                    String substring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                    Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
                    ShareWebActivity.this.Y1(substring);
                    if (ShareWebActivity.this.J != null) {
                        ShareWebActivity.this.J.dismiss();
                    }
                    ShareWebActivity.this.J = new com.join.mgps.dialog.e0(ShareWebActivity.this.f35421x);
                    ShareWebActivity.this.J.show();
                    ShareWebActivity.this.J.a(new a(substring));
                    ShareWebActivity.this.J.b(new b());
                }
            } else if (bVar.f59249c) {
            } else {
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                Dialog dialog = shareWebActivity.f35406p0;
                if (dialog == null) {
                    shareWebActivity.f35408q0 = new AlertDialog.Builder(shareWebActivity.f35421x, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                if (bVar.f59247a.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    return;
                }
                ShareWebActivity.this.f35402n0.setTitle("提示");
                if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    ShareWebActivity.this.f35408q0.setMessage("请去设置中开启权限");
                } else {
                    ShareWebActivity.this.f35408q0.setMessage("需要打开读写存储权限，请去设置中开启权限");
                }
                ShareWebActivity.this.f35408q0.setPositiveButton("去打开", new c());
                ShareWebActivity shareWebActivity2 = ShareWebActivity.this;
                shareWebActivity2.f35406p0 = shareWebActivity2.f35408q0.show();
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements PostingActivity.m {
        h() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int i2) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int i2) {
            ShareWebActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(GroupInfoBean groupInfoBean) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int i2) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(int i2) {
            if (i2 == 4355 && ShareWebActivity.this.K != null) {
                ShareWebActivity.this.K.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements LJWebView.c {
        i() {
        }

        @Override // com.join.mgps.customview.LJWebView.c
        public void a() {
            ShareWebActivity.this.X1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements GameRoomActivity.x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f35445a;

        j(DetailResultBean detailResultBean) {
            this.f35445a = detailResultBean;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int i2) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4) {
            ShareWebActivity.this.k2(this.f35445a);
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
        }
    }

    /* loaded from: classes3.dex */
    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 2) {
                return;
            }
            PayResult payResult = new PayResult((String) message.obj);
            payResult.getResult();
            String resultStatus = payResult.getResultStatus();
            if (TextUtils.equals(resultStatus, "9000")) {
                ShareWebActivity.this.finish();
                Toast.makeText(ShareWebActivity.this.f35421x, "支付成功", 1);
            } else if (TextUtils.equals(resultStatus, "8000")) {
                Toast.makeText(ShareWebActivity.this.f35421x, "支付结果确认中", 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35448a;

        l(String str) {
            this.f35448a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String pay = new PayTask(ShareWebActivity.this.f35421x).pay(com.join.mgps.Util.v.a(this.f35448a), true);
                Message message = new Message();
                message.what = 2;
                message.obj = pay;
                ShareWebActivity.this.f35412s0.sendMessage(message);
            } catch (Exception e4) {
                e4.printStackTrace();
                Message message2 = new Message();
                message2.what = 3;
                ShareWebActivity.this.f35412s0.sendMessage(message2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m extends b.c {
        m() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0228b
        public void c() {
            super.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n implements SocketListener.NotifyObserver {
        n() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask) {
            UtilsMy.Z2(ShareWebActivity.this.f35421x, netBattleStartGameDto, downloadTask, null, com.join.mgps.socket.fight.arena.c.i(ShareWebActivity.this.E0.getBattleArea(), false));
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            ShareWebActivity.this.W1(socketError);
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            int elite;
            ArenaRequest arenaRequest = arenaResponse.request;
            if (arenaRequest != null) {
                String str = arenaRequest.register_type;
                if (str == ArenaConstants.REGISTER_TYPE_ARENAMAIN || str == ArenaConstants.REGISTER_TYPE_PUBLIC) {
                    if (arenaResponse.responseCode == 0) {
                        ShareWebActivity.this.handleFailure(arenaResponse);
                    } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                        if (TextUtils.isEmpty(ShareWebActivity.this.f35420w0)) {
                            return;
                        }
                        ShareWebActivity shareWebActivity = ShareWebActivity.this;
                        shareWebActivity.z1(shareWebActivity.f35420w0);
                    } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                        ShareWebActivity.this.M1((GameRoom) arenaResponse.data);
                    } else if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                        ShareWebActivity.this.t1();
                        GameRoom gameRoom = (GameRoom) arenaResponse.data;
                        ShareWebActivity.this.f35418v0.d().E(null);
                        g1.f G = g1.f.G();
                        final DownloadTask B = G.B("" + gameRoom.getGameId());
                        ShareWebActivity.this.dismissLoadingDialog();
                        ShareWebActivity.this.Q1();
                        int i2 = ShareWebActivity.this.f35426z0 + ShareWebActivity.this.A0 + ShareWebActivity.this.B0 + ShareWebActivity.this.C0;
                        final NetBattleStartGameDto netBattleStartGameDto = new NetBattleStartGameDto();
                        netBattleStartGameDto.setGameID(ShareWebActivity.this.E0.getGameId() + "");
                        netBattleStartGameDto.setRoomID(gameRoom.getBattleServerAddr().getBattleRoomId() + "");
                        netBattleStartGameDto.setUserID(ShareWebActivity.this.f35425z.getUid() + "");
                        netBattleStartGameDto.setServerIP(gameRoom.getBattleServerAddr().getHost());
                        netBattleStartGameDto.setServerPort(gameRoom.getBattleServerAddr().getPort());
                        if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                            elite = 3;
                        } else {
                            elite = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 2 : ShareWebActivity.this.E0.getElite();
                        }
                        netBattleStartGameDto.setRoomMode(elite);
                        netBattleStartGameDto.setAllowPeripheralJoin(ShareWebActivity.this.E0.getAllowPeripheralJoin());
                        netBattleStartGameDto.setAllowPCJoin(ShareWebActivity.this.E0.getAllowPCJoin());
                        netBattleStartGameDto.setGameype(ShareWebActivity.this.E0.getGameType().getNumber());
                        netBattleStartGameDto.setGroupId(ShareWebActivity.this.E0.getRoomId());
                        netBattleStartGameDto.setP1Name("");
                        netBattleStartGameDto.setP2Name("");
                        netBattleStartGameDto.setOldGame(0);
                        netBattleStartGameDto.setUserName(ShareWebActivity.this.f35425z.getNickname());
                        netBattleStartGameDto.setUserIcon(ShareWebActivity.this.f35425z.getAvatarSrc());
                        netBattleStartGameDto.setGamePlayers(ShareWebActivity.this.E0.getSeatsNumber());
                        netBattleStartGameDto.setTcptype(1);
                        netBattleStartGameDto.setPorder(ShareWebActivity.this.D0);
                        netBattleStartGameDto.setNetPlayers(i2);
                        StringBuilder sb = new StringBuilder();
                        sb.append(">>>>>>>>>>>>>>>>>>>tbl>>>>>>>>>>>>>>>>>>>>>>join game!!!!!! ");
                        sb.append(netBattleStartGameDto.toString());
                        ShareWebActivity.this.f35418v0.f(ArenaRequestFactory.startLobbyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, ShareWebActivity.this.E0.getRoomId()));
                        if (ShareWebActivity.this.E0 != null && ShareWebActivity.this.E0.getRoomId() != 0) {
                            com.wufan.friend.chat.c.u().i(0, ShareWebActivity.this.E0.getRoomId());
                        }
                        ShareWebActivity.this.runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.s2
                            @Override // java.lang.Runnable
                            public final void run() {
                                ShareWebActivity.n.this.b(netBattleStartGameDto, B);
                            }
                        });
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class o {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35453a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f35454b;

            a(String str, int i2) {
                this.f35453a = str;
                this.f35454b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareBean shareBean = (ShareBean) JsonMapper.getInstance().fromJson(this.f35453a, ShareBean.class);
                shareBean.setFrom(5);
                com.join.mgps.Util.r.p(ShareWebActivity.this.f35421x, this.f35454b, shareBean);
            }
        }

        /* loaded from: classes3.dex */
        class a0 implements Runnable {
            a0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goMYAccountDetialActivity(ShareWebActivity.this.f35421x, ShareWebActivity.this.f35425z);
            }
        }

        /* loaded from: classes3.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35457a;

            b(String str) {
                this.f35457a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if ("".equals(this.f35457a)) {
                    ShareWebActivity.this.C1();
                } else {
                    ShareWebActivity.this.f35399l.w(this.f35457a);
                }
            }
        }

        /* loaded from: classes3.dex */
        class b0 implements Runnable {
            b0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goForumProfileMessageActivity(ShareWebActivity.this.f35421x);
            }
        }

        /* loaded from: classes3.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35460a;

            c(int i2) {
                this.f35460a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = this.f35460a;
                if (i2 == 0) {
                    ShareWebActivity.this.setRequestedOrientation(4);
                    ShareWebActivity.this.E = 0;
                } else if (i2 == 1) {
                    ShareWebActivity.this.setRequestedOrientation(0);
                    ShareWebActivity.this.E = 1;
                } else if (i2 == 2) {
                    ShareWebActivity.this.setRequestedOrientation(1);
                    ShareWebActivity.this.E = 2;
                } else if (i2 != 3) {
                } else {
                    ShareWebActivity.this.c2();
                    ShareWebActivity.this.E = 3;
                }
            }
        }

        /* loaded from: classes3.dex */
        class c0 implements Runnable {
            c0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.goMyAlbumActivity4PickPic();
            }
        }

        /* loaded from: classes3.dex */
        class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35463a;

            d(boolean z3) {
                this.f35463a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f35463a) {
                    ShareWebActivity.this.f35393f.setVisibility(0);
                } else {
                    ShareWebActivity.this.f35393f.setVisibility(8);
                }
            }
        }

        /* loaded from: classes3.dex */
        class d0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35465a;

            d0(String str) {
                this.f35465a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.J1(this.f35465a);
            }
        }

        /* loaded from: classes3.dex */
        class e implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35467a;

            e(boolean z3) {
                this.f35467a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean g4 = com.join.android.app.common.utils.c.g(ShareWebActivity.this.H.lastCheckInTime().d().longValue());
                if (this.f35467a) {
                    if (g4) {
                        return;
                    }
                    ShareWebActivity.this.H.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
                } else if (g4) {
                    ShareWebActivity.this.H.lastCheckInTime().g(0L);
                }
            }
        }

        /* loaded from: classes3.dex */
        class e0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35469a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35470b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f35471c;

            e0(String str, String str2, String str3) {
                this.f35469a = str;
                this.f35470b = str2;
                this.f35471c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.K1(this.f35469a, this.f35470b, this.f35471c);
            }
        }

        /* loaded from: classes3.dex */
        class f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35473a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35474b;

            f(String str, String str2) {
                this.f35473a = str;
                this.f35474b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                videoInfo.n(this.f35473a);
                videoInfo.h(this.f35474b);
                FullScreenActivity_.G0(ShareWebActivity.this.f35421x).a(videoInfo).start();
            }
        }

        /* loaded from: classes3.dex */
        class f0 implements Runnable {
            f0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.L1();
            }
        }

        /* loaded from: classes3.dex */
        class g implements Runnable {
            g() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.A = true;
                IntentUtil.getInstance().goAccountUpgradeActivity(ShareWebActivity.this.f35421x);
            }
        }

        /* loaded from: classes3.dex */
        class g0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35478a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35479b;

            g0(String str, String str2) {
                this.f35478a = str;
                this.f35479b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.papa.sim.statistic.p.l(ShareWebActivity.this.f35421x).p(this.f35478a, this.f35479b, AccountUtil_.getInstance_(ShareWebActivity.this.f35421x).getUid());
            }
        }

        /* loaded from: classes3.dex */
        class h implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35481a;

            h(String str) {
                this.f35481a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    ShareWebActivity.this.f35421x.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + this.f35481a + "&version=1")));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class h0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35483a;

            /* loaded from: classes3.dex */
            class a implements View.OnClickListener {
                a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (System.currentTimeMillis() - ShareWebActivity.this.f35419w <= 2000) {
                        return;
                    }
                    ShareWebActivity.this.f35419w = System.currentTimeMillis();
                    h0 h0Var = h0.this;
                    com.join.mgps.Util.r.s(ShareWebActivity.this, h0Var.f35483a, 5);
                }
            }

            h0(String str) {
                this.f35483a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.f35483a;
                if (str != null && !str.equals("")) {
                    ShareWebActivity.this.f35396i.setVisibility(0);
                    ShareWebActivity.this.f35396i.setOnClickListener(new a());
                    return;
                }
                ShareWebActivity.this.f35396i.setVisibility(8);
            }
        }

        /* loaded from: classes3.dex */
        class i implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35486a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35487b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f35488c;

            i(int i2, String str, int i4) {
                this.f35486a = i2;
                this.f35487b = str;
                this.f35488c = i4;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.r.q(ShareWebActivity.this.f35421x, this.f35486a, this.f35487b, this.f35488c, 5);
            }
        }

        /* loaded from: classes3.dex */
        class i0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35490a;

            i0(String str) {
                this.f35490a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (com.join.mgps.Util.d2.h(this.f35490a)) {
                        return;
                    }
                    StartGameMeta startGameMeta = (StartGameMeta) JsonMapper.getInstance().fromJson(this.f35490a, StartGameMeta.class);
                    Intent intent = new Intent();
                    intent.addFlags(8388608);
                    intent.setComponent(new ComponentName(startGameMeta.getPackageName(), startGameMeta.getActivityName()));
                    String uid = AccountUtil_.getInstance_(ShareWebActivity.this.f35421x).getUid();
                    intent.putExtra("uid", uid);
                    startGameMeta.setUserID(uid);
                    startGameMeta.setPa_package_name(ShareWebActivity.this.f35421x.getPackageName());
                    intent.putExtra("jsonData", JsonMapper.getInstance().toJson(startGameMeta));
                    intent.setAction("android.intent.action.VIEW");
                    try {
                        ShareWebActivity.this.f35421x.startActivity(intent);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class j implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35492a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f35493b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f35494c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f35495d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f35496e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ int f35497f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ String f35498g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f35499h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ String f35500i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f35501j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f35502k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ String f35503l;

            j(String str, int i2, String str2, String str3, String str4, int i4, String str5, String str6, String str7, String str8, String str9, String str10) {
                this.f35492a = str;
                this.f35493b = i2;
                this.f35494c = str2;
                this.f35495d = str3;
                this.f35496e = str4;
                this.f35497f = i4;
                this.f35498g = str5;
                this.f35499h = str6;
                this.f35500i = str7;
                this.f35501j = str8;
                this.f35502k = str9;
                this.f35503l = str10;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f35492a;
                    papayOrder.PAYTYPE = this.f35493b;
                    papayOrder.NOTIFY_URI = this.f35494c;
                    papayOrder.APP_NAME = this.f35495d;
                    papayOrder.APP_ORDER_ID = this.f35496e;
                    papayOrder.PA_OPEN_UID = this.f35497f;
                    papayOrder.APP_USER_ID = this.f35498g;
                    papayOrder.APP_USER_NAME = "";
                    papayOrder.PRODUCT_ID = this.f35499h;
                    papayOrder.PRODUCT_NAME = this.f35500i;
                    papayOrder.MONEY_AMOUNT = this.f35501j;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f35502k;
                    papayOrder.APP_EXT2 = this.f35503l;
                    papayOrder.PAYORRECHARGE = 1;
                    ShareWebActivity.this.l2(papayOrder);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class j0 implements Runnable {
            j0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.c2();
            }
        }

        /* loaded from: classes3.dex */
        class k implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35506a;

            k(String str) {
                this.f35506a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.r.s(ShareWebActivity.this, this.f35506a, 5);
            }
        }

        /* loaded from: classes3.dex */
        class k0 implements Runnable {
            k0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.Z1();
            }
        }

        /* loaded from: classes3.dex */
        class l implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35509a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f35510b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f35511c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f35512d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f35513e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ String f35514f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ String f35515g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f35516h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ String f35517i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f35518j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f35519k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ String f35520l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f35521m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ String f35522n;

            /* renamed from: o  reason: collision with root package name */
            final /* synthetic */ String f35523o;

            l(String str, int i2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
                this.f35509a = str;
                this.f35510b = i2;
                this.f35511c = str2;
                this.f35512d = str3;
                this.f35513e = str4;
                this.f35514f = str5;
                this.f35515g = str6;
                this.f35516h = str7;
                this.f35517i = str8;
                this.f35518j = str9;
                this.f35519k = str10;
                this.f35520l = str11;
                this.f35521m = str12;
                this.f35522n = str13;
                this.f35523o = str14;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f35509a;
                    papayOrder.PAYTYPE = this.f35510b;
                    papayOrder.NOTIFY_URI = this.f35511c;
                    papayOrder.APP_NAME = this.f35512d;
                    papayOrder.APP_ORDER_ID = this.f35513e;
                    if (com.join.mgps.Util.d2.i(this.f35514f)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f35514f);
                    }
                    papayOrder.APP_USER_ID = this.f35515g;
                    papayOrder.APP_USER_NAME = this.f35512d;
                    papayOrder.PRODUCT_ID = this.f35516h;
                    papayOrder.PRODUCT_NAME = this.f35517i;
                    papayOrder.MONEY_AMOUNT = this.f35518j;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f35519k;
                    papayOrder.APP_EXT2 = this.f35520l;
                    papayOrder.PAYORRECHARGE = 1;
                    papayOrder.PRIVATEKEY = this.f35521m;
                    papayOrder.TOKEN = this.f35522n;
                    if (com.join.mgps.Util.d2.i(this.f35523o)) {
                        papayOrder.PAYSHOWTYPE = Integer.parseInt(this.f35523o);
                    }
                    ShareWebActivity.this.l2(papayOrder);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class l0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35525a;

            /* loaded from: classes3.dex */
            class a implements GameRoomActivity.x {
                a() {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onFail(int i2) {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onSuccess(int i2, int i4) {
                    l0 l0Var = l0.this;
                    ShareWebActivity.this.T1(l0Var.f35525a);
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onSuccess(int i2, int i4, ButtonBean buttonBean) {
                }
            }

            l0(String str) {
                this.f35525a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    UtilsMy.p0(ShareWebActivity.this.f35421x, 4, "", "FIGHT_LOBBY", new a());
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class m implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35528a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35529b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f35530c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f35531d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f35532e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ String f35533f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ String f35534g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f35535h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ String f35536i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f35537j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f35538k;

            m(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
                this.f35528a = i2;
                this.f35529b = str;
                this.f35530c = str2;
                this.f35531d = str3;
                this.f35532e = str4;
                this.f35533f = str5;
                this.f35534g = str6;
                this.f35535h = str7;
                this.f35536i = str8;
                this.f35537j = str9;
                this.f35538k = str10;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = "qh97";
                    papayOrder.PAYTYPE = this.f35528a;
                    papayOrder.NOTIFY_URI = this.f35529b;
                    papayOrder.APP_NAME = this.f35530c;
                    papayOrder.APP_ORDER_ID = this.f35531d;
                    if (com.join.mgps.Util.d2.i(this.f35532e)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f35532e);
                    }
                    papayOrder.APP_USER_ID = this.f35533f;
                    papayOrder.APP_USER_NAME = this.f35530c;
                    papayOrder.PRODUCT_ID = this.f35534g;
                    papayOrder.PRODUCT_NAME = this.f35535h;
                    papayOrder.MONEY_AMOUNT = this.f35536i;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f35537j;
                    papayOrder.APP_EXT2 = this.f35538k;
                    papayOrder.PAYORRECHARGE = 2;
                    ShareWebActivity.this.l2(papayOrder);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class m0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35540a;

            m0(String str) {
                this.f35540a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().goQQGroup(ShareWebActivity.this.f35421x, this.f35540a);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class n implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35542a;

            n(boolean z3) {
                this.f35542a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f35542a) {
                    ShareWebActivity.this.f35400m.setVisibility(0);
                } else {
                    ShareWebActivity.this.f35400m.setVisibility(8);
                }
            }
        }

        /* loaded from: classes3.dex */
        class n0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35544a;

            n0(String str) {
                this.f35544a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.f35394g.setText(this.f35544a);
            }
        }

        /* renamed from: com.join.mgps.activity.ShareWebActivity$o$o  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0155o implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35546a;

            RunnableC0155o(boolean z3) {
                this.f35546a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f35546a) {
                    ShareWebActivity.this.f35407q.setVisibility(0);
                } else {
                    ShareWebActivity.this.f35407q.setVisibility(8);
                }
            }
        }

        /* loaded from: classes3.dex */
        class o0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35548a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35549b;

            o0(String str, String str2) {
                this.f35548a = str;
                this.f35549b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z3;
                try {
                    List<DownloadTask> E = g1.f.G().E(this.f35548a);
                    DownloadTask downloadTask = null;
                    if (E != null && E.size() > 0) {
                        String str = "";
                        String str2 = "";
                        boolean z4 = false;
                        loop0: while (true) {
                            z3 = false;
                            for (DownloadTask downloadTask2 : E) {
                                if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                                    str = downloadTask2.getCrc_link_type_val();
                                    z4 = com.join.mgps.va.overmind.e.p().D(downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5;
                                } else {
                                    str2 = downloadTask2.getCrc_link_type_val();
                                    if (com.join.android.app.common.utils.a.g0(ShareWebActivity.this).c(ShareWebActivity.this, downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5) {
                                        z3 = true;
                                    }
                                }
                            }
                            break loop0;
                        }
                        if (z4 && z3) {
                            downloadTask = g1.f.G().B(str);
                        } else if (z4) {
                            downloadTask = g1.f.G().B(str);
                        } else if (z3) {
                            downloadTask = g1.f.G().B(str2);
                        } else {
                            downloadTask = g1.f.G().B(str);
                            if (downloadTask == null) {
                                downloadTask = g1.f.G().B(str2);
                            }
                        }
                    }
                    if (downloadTask == null) {
                        return;
                    }
                    if ("login".equals(this.f35549b)) {
                        UtilsMy.f3(ShareWebActivity.this, downloadTask, this.f35549b);
                    } else {
                        UtilsMy.c3(ShareWebActivity.this, downloadTask);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class p implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35551a;

            p(boolean z3) {
                this.f35551a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f35551a) {
                    ShareWebActivity.this.f35401n.setVisibility(0);
                } else {
                    ShareWebActivity.this.f35401n.setVisibility(8);
                }
            }
        }

        /* loaded from: classes3.dex */
        class p0 implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35553a;

            p0(String str) {
                this.f35553a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentDateBean intentDateBean = (IntentDateBean) JsonMapper.getInstance().fromJson(this.f35553a, IntentDateBean.class);
                    intentDateBean.setExtBean(new ExtBean(120));
                    IntentUtil.getInstance().intentActivity(ShareWebActivity.this, intentDateBean);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class q implements Runnable {
            q() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goAccountCenterActivity(ShareWebActivity.this.f35421x);
            }
        }

        /* loaded from: classes3.dex */
        class q0 implements Runnable {
            q0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                shareWebActivity.f35425z = AccountUtil_.getInstance_(shareWebActivity.f35421x).getAccountData();
                webAccountDataBean.setAccountBean(ShareWebActivity.this.f35425z);
                if (ShareWebActivity.this.f35425z == null) {
                    ShareWebActivity.this.A = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(ShareWebActivity.this.f35421x, 0, 2);
                    return;
                }
                webAccountDataBean.setHasLogin(true);
                LJWebView lJWebView = ShareWebActivity.this.f35399l;
                lJWebView.w("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
        }

        /* loaded from: classes3.dex */
        class r implements Runnable {
            r() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goJoystickManager(ShareWebActivity.this.f35421x);
            }
        }

        /* loaded from: classes3.dex */
        class r0 implements Runnable {
            r0() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                shareWebActivity.f35425z = AccountUtil_.getInstance_(shareWebActivity.f35421x).getAccountData();
                webAccountDataBean.setAccountBean(ShareWebActivity.this.f35425z);
                AccountUtil_.getInstance_(ShareWebActivity.this.f35421x).accountLoginOut(ShareWebActivity.this.f35421x);
                ShareWebActivity.this.A = true;
                IntentUtil.getInstance().goMyAccountLoginActivity(ShareWebActivity.this.f35421x, 0, 2);
            }
        }

        /* loaded from: classes3.dex */
        class s implements Runnable {
            s() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goCodesBoxActivity(ShareWebActivity.this.f35421x);
            }
        }

        /* loaded from: classes3.dex */
        class t implements Runnable {
            t() {
            }

            @Override // java.lang.Runnable
            public void run() {
                IntentUtil.getInstance().goDownloadCenterActivity(ShareWebActivity.this.f35421x);
            }
        }

        /* loaded from: classes3.dex */
        class u implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35561a;

            u(boolean z3) {
                this.f35561a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f35561a) {
                    ShareWebActivity.this.f35405p.setVisibility(0);
                } else {
                    ShareWebActivity.this.f35405p.setVisibility(8);
                }
            }
        }

        /* loaded from: classes3.dex */
        class v implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35563a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f35564b;

            v(String str, String str2) {
                this.f35563a = str;
                this.f35564b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.papa.sim.statistic.p.l(ShareWebActivity.this.f35421x).p(this.f35563a, this.f35564b, AccountUtil_.getInstance_(ShareWebActivity.this.f35421x).getUid());
            }
        }

        /* loaded from: classes3.dex */
        class w implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f35566a;

            w(boolean z3) {
                this.f35566a = z3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f35566a) {
                    ShareWebActivity.this.f35403o.setVisibility(0);
                } else {
                    ShareWebActivity.this.f35403o.setVisibility(8);
                }
            }
        }

        /* loaded from: classes3.dex */
        class x implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f35568a;

            x(String str) {
                this.f35568a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.i2.a(ShareWebActivity.this.f35421x).b(this.f35568a);
            }
        }

        /* loaded from: classes3.dex */
        class y implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35570a;

            y(int i2) {
                this.f35570a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    ShareWebActivity.this.f35402n0.b();
                    ShareWebActivity.this.w1(this.f35570a);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        /* loaded from: classes3.dex */
        class z implements Runnable {
            z() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.O1();
            }
        }

        public o() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            Intent intent = new Intent(BAction.ACTION_REAL_NAME_RESULT);
            intent.putExtra("result", 1);
            ShareWebActivity.this.sendBroadcast(intent);
            IntentDateBean intentDateBean = ShareWebActivity.this.B;
            String str = "0";
            if (intentDateBean != null) {
                String ext3 = intentDateBean.getExt3();
                if (!com.join.mgps.Util.d2.h(ext3)) {
                    str = ext3;
                }
            }
            com.join.mgps.va.overmind.e.f0(intent, Integer.parseInt(str));
        }

        @JavascriptInterface
        public void changeAccount(String str) {
            try {
                AccountUtil_.getInstance_(ShareWebActivity.this.f35421x).saveAccountData((AccountBean) JsonMapper.getInstance().fromJson(str, AccountBean.class), ShareWebActivity.this.f35421x);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @JavascriptInterface
        public boolean checkAppHasInstall(String str) {
            try {
                return com.join.android.app.common.utils.a.g0(ShareWebActivity.this.f35421x).c(ShareWebActivity.this.f35421x, str);
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }

        @JavascriptInterface
        public String checkAppInfo(String str) {
            APKUtils.a aVar;
            try {
                aVar = com.join.android.app.common.utils.a.g0(ShareWebActivity.this.f35421x).k(ShareWebActivity.this.f35421x, str);
            } catch (Exception e4) {
                e4.printStackTrace();
                aVar = null;
            }
            return JsonMapper.getInstance().toJson(aVar);
        }

        @JavascriptInterface
        public int checkLiveRes() {
            return 0;
        }

        @JavascriptInterface
        public int checkNetWork() {
            return com.join.android.app.common.utils.f.j(ShareWebActivity.this.f35421x) ? 1 : 0;
        }

        @JavascriptInterface
        public String checkWufunPapaPlatform() {
            return "wufun";
        }

        @JavascriptInterface
        public void checkin(boolean z3) {
            ShareWebActivity.this.f35390c.post(new e(z3));
        }

        @JavascriptInterface
        public void copyToClipboard(String str) {
            if (com.join.mgps.Util.d2.i(str)) {
                com.join.mgps.Util.i0.M(ShareWebActivity.this.f35421x, str);
                com.join.mgps.Util.i2.a(ShareWebActivity.this.f35421x).b("复制成功！");
            }
        }

        @JavascriptInterface
        public void creatVipOrder(int i2) {
            ShareWebActivity.this.f35390c.post(new y(i2));
        }

        @JavascriptInterface
        public void downloadApkGameByUrl(String str, String str2, String str3, String str4) {
            if (System.currentTimeMillis() - ShareWebActivity.this.f35416u0 < 1000) {
                return;
            }
            List<DownloadTask> D = g1.f.G().D(str4);
            if (D == null || D.size() <= 0) {
                DownloadTask downloadTask = new DownloadTask();
                downloadTask.setUrl(str);
                downloadTask.setShowName(str2);
                downloadTask.setPackageName(str4);
                downloadTask.setPlugin_num("46");
                downloadTask.setDtype(Dtype.android.name());
                downloadTask.setPortraitURL(str3);
                ArrayList arrayList = new ArrayList();
                TipBean tipBean = new TipBean();
                tipBean.setId("7");
                tipBean.setName("网游");
                tipBean.setColor("#8dbbec");
                arrayList.add(tipBean);
                downloadTask.setTips(JsonMapper.toJsonString(arrayList));
                TipNew tipNew = new TipNew();
                TipBean tipBean2 = new TipBean();
                tipBean2.setName("安卓");
                tipBean2.setColor("#f47500");
                tipBean2.setId("7");
                tipNew.setModel(tipBean2);
                TipBean tipBean3 = new TipBean();
                tipBean3.setName("外部");
                tipBean3.setColor("#f47500");
                tipBean3.setId("1024");
                tipNew.setModel(tipBean2);
                tipNew.setOut_game(tipBean3);
                downloadTask.setSp_tag_info(tipNew);
                downloadTask.setCrc_link_type_val(System.currentTimeMillis() + "");
                com.php25.PDownload.d.c(downloadTask, ShareWebActivity.this.f35421x);
                com.papa.sim.statistic.p.l(ShareWebActivity.this.f35421x).K1(Event.tencentArena, new Ext().setReMarks(str2));
            }
        }

        @JavascriptInterface
        public void downloadFile(String str, String str2) {
            UtilsMy.E0(ShareWebActivity.this.f35421x, str, str2);
        }

        @JavascriptInterface
        public void downloadGame(String str) {
            com.php25.PDownload.d.c((DownloadTask) JsonMapper.getInstance().fromJson(str, DownloadTask.class), ShareWebActivity.this.f35421x);
        }

        @JavascriptInterface
        public void downloadGameByGameId(String str) {
            ShareWebActivity.this.F1(str, null);
        }

        @JavascriptInterface
        public void downloadGameByGameIdAndUrl(String str, String str2) {
            ShareWebActivity.this.F1(str, str2);
        }

        @JavascriptInterface
        public void downloadGameByGameIdIfNoGame(String str) {
            if (g1.f.G().B(str) == null) {
                ShareWebActivity.this.F1(str, null);
            }
        }

        @JavascriptInterface
        public String findAllGames() {
            List<DownloadTask> d4 = g1.f.G().d();
            if (d4 == null || d4.size() <= 0) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<DownloadTask> it2 = d4.iterator();
            while (it2.hasNext()) {
                stringBuffer.append("," + it2.next().getCrc_link_type_val());
            }
            return stringBuffer.toString().replaceFirst(",", "");
        }

        @JavascriptInterface
        public void getAccount() {
            ShareWebActivity.this.f35390c.post(new q0());
        }

        @JavascriptInterface
        public String getAccountVer2() {
            WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
            ShareWebActivity shareWebActivity = ShareWebActivity.this;
            shareWebActivity.f35425z = AccountUtil_.getInstance_(shareWebActivity.f35421x).getAccountData();
            if (ShareWebActivity.this.f35425z != null) {
                webAccountDataBean.setAccountBean(ShareWebActivity.this.f35425z);
                webAccountDataBean.setHasLogin(true);
            } else {
                webAccountDataBean.setHasLogin(false);
            }
            JsonMapper.getInstance().toJson(webAccountDataBean);
            return JsonMapper.getInstance().toJson(webAccountDataBean);
        }

        @JavascriptInterface
        public String getAllH5game() {
            List<DownloadTask> t3 = g1.f.G().t();
            if (t3 != null) {
                ArrayList arrayList = new ArrayList();
                for (DownloadTask downloadTask : t3) {
                    arrayList.add(downloadTask.getCrc_link_type_val());
                }
                return JsonMapper.getInstance().toJson(arrayList);
            }
            return JsonMapper.getInstance().toJson(new ArrayList());
        }

        @JavascriptInterface
        public String getAndroidId() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).e(ShareWebActivity.this.f35421x);
        }

        @JavascriptInterface
        public String getAndroidVersion() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).s();
        }

        @JavascriptInterface
        public String getAppversionName() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).z();
        }

        @JavascriptInterface
        public String getDeviceId() {
            return com.papa.sim.statistic.q.f(ShareWebActivity.this.f35421x).b();
        }

        @JavascriptInterface
        public String getIMEI() {
            return com.papa.sim.statistic.q.f(ShareWebActivity.this.f35421x).b();
        }

        @JavascriptInterface
        public int getNowVersion() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).y();
        }

        @JavascriptInterface
        public String getPackageName() {
            return ShareWebActivity.this.getPackageName();
        }

        @JavascriptInterface
        public String getPapaUIDAndToken() {
            ShareWebActivity shareWebActivity = ShareWebActivity.this;
            shareWebActivity.f35425z = AccountUtil_.getInstance_(shareWebActivity.f35421x).getAccountData();
            if (ShareWebActivity.this.f35425z == null || ShareWebActivity.this.f35425z.getAccount_type() != 1) {
                IntentUtil.getInstance().goMyAccountLoginActivity(ShareWebActivity.this.f35421x, 0, 2);
                return "";
            }
            return JsonMapper.toJsonString(new PaOpenBean(ShareWebActivity.this.f35425z.getUid(), ShareWebActivity.this.f35425z.getToken()));
        }

        @JavascriptInterface
        public String getPhoneModle() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).q();
        }

        @JavascriptInterface
        public String getSdkIntentData(String str) {
            SharedPreferences sharedPreferences = ShareWebActivity.this.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
            return sharedPreferences.getString("papasdk_" + str, "");
        }

        @JavascriptInterface
        public int getSingleGameADCount() {
            return new UserPrefs(ShareWebActivity.this.f35421x).getAdGamesHasSeeCount();
        }

        @JavascriptInterface
        public String getStringByKey(String str) {
            SharedPreferences sharedPreferences = ShareWebActivity.this.f35421x.getSharedPreferences("Papa_Stat_SharedPreferences", 0);
            return sharedPreferences.getString("papaH5_" + str, "");
        }

        @JavascriptInterface
        public String getVendor() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).x();
        }

        @JavascriptInterface
        public void goAccountCenter() {
            ShareWebActivity.this.f35390c.post(new q());
        }

        @JavascriptInterface
        public void goAccountDetial() {
            ShareWebActivity.this.f35390c.post(new a0());
        }

        @JavascriptInterface
        public void goBackUrl(String str) {
            ShareWebActivity.this.f35390c.post(new b(str));
        }

        @JavascriptInterface
        public void goChoiceUploadImage() {
            ShareWebActivity.this.f35390c.post(new c0());
        }

        @JavascriptInterface
        public void goCodesBoxActivity() {
            ShareWebActivity.this.f35390c.post(new s());
        }

        @JavascriptInterface
        public void goDownloadCenter() {
            ShareWebActivity.this.f35390c.post(new t());
        }

        @JavascriptInterface
        public void goGameDetail(String str) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(1);
            intentDateBean.setCrc_link_type_val(str);
            intentDateBean.setExtBean(new ExtBean(120));
            IntentUtil.getInstance().intentActivity(ShareWebActivity.this, intentDateBean);
        }

        @JavascriptInterface
        public void goHandShark() {
            ShareWebActivity.this.f35390c.post(new r());
        }

        @JavascriptInterface
        public void goMainLabel(String str) {
            ShareWebActivity.this.f35390c.post(new d0(str));
        }

        @JavascriptInterface
        public void goProfileMessage() {
            ShareWebActivity.this.f35390c.post(new b0());
        }

        @JavascriptInterface
        public void goQQGroup(String str) {
            ShareWebActivity.this.f35390c.post(new m0(str));
        }

        @JavascriptInterface
        public void goSearchLabel() {
            ShareWebActivity.this.f35390c.post(new f0());
        }

        @JavascriptInterface
        public void goStartLive() {
        }

        @JavascriptInterface
        public int inquiryGameStatus(String str) {
            DownloadTask downloadTask;
            boolean z3;
            List<DownloadTask> E = g1.f.G().E(str);
            if (E == null || E.size() <= 0) {
                downloadTask = null;
            } else {
                String str2 = "";
                String str3 = "";
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask2 : E) {
                        if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                            str2 = downloadTask2.getCrc_link_type_val();
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5;
                        } else {
                            str3 = downloadTask2.getCrc_link_type_val();
                            if (com.join.android.app.common.utils.a.g0(ShareWebActivity.this).c(ShareWebActivity.this, downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5) {
                                z3 = true;
                            }
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    downloadTask = g1.f.G().B(str2);
                } else if (z4) {
                    downloadTask = g1.f.G().B(str2);
                } else if (z3) {
                    downloadTask = g1.f.G().B(str3);
                } else {
                    downloadTask = g1.f.G().B(str2);
                    if (downloadTask == null) {
                        downloadTask = g1.f.G().B(str3);
                    }
                }
            }
            if (downloadTask == null) {
                return -1;
            }
            return downloadTask.getStatus();
        }

        @JavascriptInterface
        public int inquiryGameStatusByPackage(String str) {
            List<DownloadTask> D = g1.f.G().D(str);
            if (D == null || D.size() <= 0) {
                return -1;
            }
            return D.get(0).getStatus();
        }

        @JavascriptInterface
        public int instalApk(String str) {
            DownloadTask B = g1.f.G().B(str);
            if (B == null || !Dtype.android.name().equals(B.getFileType())) {
                return -1;
            }
            com.join.android.app.common.utils.a.g0(ShareWebActivity.this.f35421x).u(ShareWebActivity.this.f35421x, new File(B.getGameZipPath()));
            return 1;
        }

        @JavascriptInterface
        public int instalApkByPackageName(String str) {
            List<DownloadTask> D = g1.f.G().D(str);
            if (D == null || D.size() <= 0) {
                return 1;
            }
            com.join.android.app.common.utils.a.g0(ShareWebActivity.this.f35421x).u(ShareWebActivity.this.f35421x, new File(D.get(0).getGameZipPath()));
            return 1;
        }

        @JavascriptInterface
        public void intentQQ(String str) {
            ShareWebActivity.this.f35390c.post(new h(str));
        }

        @JavascriptInterface
        public void intentToCompletAccount() {
            ShareWebActivity.this.f35390c.post(new g());
        }

        @JavascriptInterface
        public void joinAction(String str, String str2) {
            ShareWebActivity.this.f35390c.post(new g0(str, str2));
        }

        @JavascriptInterface
        public void jumpGameMatch(String str) {
            ShareWebActivity.this.f35390c.post(new l0(str));
        }

        @JavascriptInterface
        public void liveIntentTo(int i2) {
        }

        @JavascriptInterface
        public void login() {
            ShareWebActivity.this.f35390c.post(new r0());
        }

        @JavascriptInterface
        public void openAction(String str, String str2) {
            ShareWebActivity.this.f35390c.post(new v(str, str2));
        }

        @JavascriptInterface
        public void papaLiveCropImage() {
            ShareWebActivity.this.f35390c.post(new z());
        }

        @JavascriptInterface
        public void payByPapa(String str, int i2, String str2, String str3, String str4, int i4, String str5, String str6, String str7, String str8, String str9, String str10) {
            ShareWebActivity.this.f35390c.post(new j(str, i2, str2, str3, str4, i4, str5, str6, str7, str8, str9, str10));
        }

        @JavascriptInterface
        public void payGameFinish(int i2) {
            if (i2 == 1) {
                ShareWebActivity.this.setResult(10010);
            } else if (i2 == 2) {
                ShareWebActivity.this.setResult(10011);
            }
            ShareWebActivity.this.finish();
        }

        @JavascriptInterface
        public void playVideo(String str, String str2) {
            ShareWebActivity.this.f35390c.post(new f(str, str2));
        }

        @JavascriptInterface
        public void rechargePabiFrom(String str, int i2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
            ShareWebActivity.this.f35390c.post(new m(i2, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11));
        }

        @JavascriptInterface
        public void saveStringByKey(String str, String str2) {
            SharedPreferences.Editor edit = ShareWebActivity.this.f35421x.getSharedPreferences("Papa_Stat_SharedPreferences", 0).edit();
            edit.putString("papaH5_" + str, str2);
            edit.commit();
        }

        @JavascriptInterface
        public void setFullScreenJs(String str) {
            ShareWebActivity.this.f35390c.post(new j0());
        }

        @JavascriptInterface
        public void setQuitFullScreenJs(String str) {
            ShareWebActivity.this.f35390c.post(new k0());
        }

        @JavascriptInterface
        public void setScreenLandOrPort(int i2) {
            ShareWebActivity.this.f35390c.post(new c(i2));
        }

        @JavascriptInterface
        public void setTitle(String str) {
            ShareWebActivity.this.f35390c.post(new n0(str));
        }

        @JavascriptInterface
        public void shareFromJson(String str) {
            ShareWebActivity.this.f35390c.post(new k(str));
        }

        @JavascriptInterface
        public void shareToOne(int i2, String str) {
            ShareWebActivity.this.f35390c.post(new a(str, i2));
        }

        @JavascriptInterface
        public void shareToOneImageOrText(int i2, String str, int i4) {
            ShareWebActivity.this.f35390c.post(new i(i2, str, i4));
        }

        @JavascriptInterface
        public void showBackNew(boolean z3) {
            ShareWebActivity.this.f35390c.post(new w(z3));
        }

        @JavascriptInterface
        public void showDownLiveDialog() {
        }

        @JavascriptInterface
        public void showDownload(boolean z3) {
            ShareWebActivity.this.f35390c.post(new RunnableC0155o(z3));
        }

        @JavascriptInterface
        public void showFinish(boolean z3) {
            ShareWebActivity.this.f35390c.post(new u(z3));
        }

        @JavascriptInterface
        public void showRefresh(boolean z3) {
            ShareWebActivity.this.f35390c.post(new n(z3));
        }

        @JavascriptInterface
        public void showSearch(boolean z3) {
            ShareWebActivity.this.f35390c.post(new p(z3));
        }

        @JavascriptInterface
        public void showShareButn(String str) {
            ShareWebActivity.this.f35390c.post(new h0(str));
        }

        @JavascriptInterface
        public void showTitle(boolean z3) {
            ShareWebActivity.this.f35390c.post(new d(z3));
        }

        @JavascriptInterface
        public void startGame(String str, String str2) {
            ShareWebActivity.this.f35390c.post(new o0(str, str2));
        }

        @JavascriptInterface
        public void startGameFromJson(String str) {
            ShareWebActivity.this.f35390c.post(new i0(str));
        }

        @JavascriptInterface
        public void startH5Game(String str) {
            CollectionBeanSub collectionBeanSub;
            DownloadTask downloadtaskDown;
            try {
                if (!com.join.mgps.Util.d2.i(str) || (collectionBeanSub = (CollectionBeanSub) JsonMapper.getInstance().fromJson(str, CollectionBeanSub.class)) == null || (downloadtaskDown = collectionBeanSub.getDownloadtaskDown()) == null) {
                    return;
                }
                UtilsMy.h2(downloadtaskDown, ShareWebActivity.this.f35421x);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @JavascriptInterface
        public void startIntent(String str) {
            ShareWebActivity.this.f35390c.post(new p0(str));
        }

        @JavascriptInterface
        public void startWechatApp(String str, String str2, String str3) {
            IWXAPI createWXAPI = WXAPIFactory.createWXAPI(ShareWebActivity.this.f35421x, str);
            createWXAPI.registerApp(str);
            WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
            req.userName = str2;
            req.path = str3;
            req.miniprogramType = 0;
            createWXAPI.sendReq(req);
        }

        @JavascriptInterface
        public int stopDown(String str) {
            DownloadTask B = g1.f.G().B(str);
            if (B == null) {
                return -1;
            }
            com.php25.PDownload.d.h(B);
            return 1;
        }

        @JavascriptInterface
        public int stopDownByPackageName(String str) {
            List<DownloadTask> D = g1.f.G().D(str);
            if (D == null || D.size() == 0) {
                return -1;
            }
            for (DownloadTask downloadTask : D) {
                com.php25.PDownload.d.h(downloadTask);
            }
            return 1;
        }

        @JavascriptInterface
        public void toastText(String str) {
            ShareWebActivity.this.f35390c.post(new x(str));
        }

        @JavascriptInterface
        public void updateAccount() {
            ShareWebActivity.this.I1();
        }

        @JavascriptInterface
        public void updateRealNameState() {
            try {
                ShareWebActivity.this.f35390c.post(new Runnable() { // from class: com.join.mgps.activity.t2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShareWebActivity.o.this.b();
                    }
                });
            } catch (Exception unused) {
            }
        }

        @JavascriptInterface
        public void updateVip() {
            ShareWebActivity.this.checkToken();
        }

        @JavascriptInterface
        public void goMainLabel(String str, String str2, String str3) {
            ShareWebActivity.this.f35390c.post(new e0(str, str2, str3));
        }

        @JavascriptInterface
        public void payByPapa(String str, String str2, int i2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
            ShareWebActivity.this.f35390c.post(new l(str, i2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str2, str13, str14));
        }

        @JavascriptInterface
        public String getSdkIntentData() {
            IntentDataMain intentDataMain = ShareWebActivity.this.C;
            return intentDataMain != null ? intentDataMain.getData() : "";
        }
    }

    /* loaded from: classes3.dex */
    public class p {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f35574a;

            a(int i2) {
                this.f35574a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = this.f35574a;
                if (i2 == 0) {
                    ShareWebActivity.this.setRequestedOrientation(4);
                } else if (i2 == 1) {
                    ShareWebActivity.this.setRequestedOrientation(0);
                } else if (i2 == 2) {
                    ShareWebActivity.this.setRequestedOrientation(1);
                } else if (i2 != 3) {
                } else {
                    ShareWebActivity.this.c2();
                }
            }
        }

        public p() {
        }

        @JavascriptInterface
        public void alipay(String str) {
            if (com.join.mgps.Util.d2.i(str)) {
                ShareWebActivity.this.m2(str);
            }
        }

        @JavascriptInterface
        public boolean checkAppHasInstall(String str) {
            try {
                return com.join.android.app.common.utils.a.g0(ShareWebActivity.this.f35421x).c(ShareWebActivity.this.f35421x, str);
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }

        @JavascriptInterface
        public String getAndroidVersion() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).s();
        }

        @JavascriptInterface
        public String getAppversionName() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).z();
        }

        @JavascriptInterface
        public String getData(String str) {
            List<H5GameAccountDataTable> n4 = n1.w.o().n(str);
            if (n4 != null) {
                ArrayList arrayList = new ArrayList();
                for (H5GameAccountDataTable h5GameAccountDataTable : n4) {
                    arrayList.add((AccountBean) JsonMapper.getInstance().fromJson(h5GameAccountDataTable.getAccount_data(), AccountBean.class));
                }
                return JsonMapper.getInstance().toJson(arrayList);
            }
            return "[]";
        }

        @JavascriptInterface
        public String getDeviceId() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).i();
        }

        @JavascriptInterface
        public String getGameName() {
            try {
                return ShareWebActivity.this.getResources().getString(R.string.app_name);
            } catch (Exception unused) {
                return "";
            }
        }

        @JavascriptInterface
        public String getIMEI() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).i();
        }

        @JavascriptInterface
        public int getNowVersion() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).y();
        }

        @JavascriptInterface
        public String getPhoneModle() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).q();
        }

        @JavascriptInterface
        public String getQdId() {
            return com.papa.sim.statistic.k.a(ShareWebActivity.this.f35421x);
        }

        @JavascriptInterface
        public String getVendor() {
            return com.join.android.app.common.utils.j.n(ShareWebActivity.this.f35421x).x();
        }

        @JavascriptInterface
        public void openWeb(String str) {
            IntentUtil.getInstance().goShareWebActivity(ShareWebActivity.this.f35421x, str);
        }

        @JavascriptInterface
        public void setData(String str, String str2) {
            List<H5GameAccountDataTable> n4 = n1.w.o().n(str);
            if (n4 != null && n4.size() > 0) {
                boolean z3 = false;
                for (H5GameAccountDataTable h5GameAccountDataTable : n4) {
                    if (((AccountBean) JsonMapper.getInstance().fromJson(h5GameAccountDataTable.getAccount_data(), AccountBean.class)).getUid() == ((AccountBean) JsonMapper.getInstance().fromJson(str2, AccountBean.class)).getUid()) {
                        h5GameAccountDataTable.setAppkey(str);
                        h5GameAccountDataTable.setAccount_data(str2);
                        n1.w.o().update(h5GameAccountDataTable);
                        z3 = true;
                    }
                }
                if (z3) {
                    return;
                }
                H5GameAccountDataTable h5GameAccountDataTable2 = new H5GameAccountDataTable();
                h5GameAccountDataTable2.setAppkey(str);
                h5GameAccountDataTable2.setAccount_data(str2);
                n1.w.o().k(h5GameAccountDataTable2);
                return;
            }
            H5GameAccountDataTable h5GameAccountDataTable3 = new H5GameAccountDataTable();
            h5GameAccountDataTable3.setAppkey(str);
            h5GameAccountDataTable3.setAccount_data(str2);
            n1.w.o().k(h5GameAccountDataTable3);
        }

        @JavascriptInterface
        public void setScreenLandOrPort(int i2) {
            ShareWebActivity.this.f35390c.post(new a(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class q extends WebViewClient {
        public q(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (str.endsWith(".zip")) {
                return;
            }
            String str2 = ShareWebActivity.this.f35388a;
            com.join.mgps.Util.t0.b(str2, "onPageFinished() called." + str);
            if (str.startsWith(com.facebook.common.util.f.f11765a) || str.startsWith("https") || str.startsWith("file://")) {
                ShareWebActivity.this.f35415u = str;
            }
            if (!ShareWebActivity.this.f35415u.equals("data:text/html,chromewebdata") && !ShareWebActivity.this.f35423y) {
                webView.getSettings().setBlockNetworkImage(false);
            } else {
                ShareWebActivity.this.showLodingFailed();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            String str2 = ShareWebActivity.this.f35388a;
            com.join.mgps.Util.t0.b(str2, "onPageStarted() called." + str);
            if (str.endsWith(".zip")) {
                return;
            }
            if (str.startsWith(com.facebook.common.util.f.f11765a) || str.startsWith("https") || str.startsWith("file://")) {
                ShareWebActivity.this.f35415u = str;
            }
            ShareWebActivity.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            super.onReceivedError(webView, i2, str, str2);
            String str3 = ShareWebActivity.this.f35388a;
            com.join.mgps.Util.t0.b(str3, "onReceivedError() called." + str2);
            if (str2.endsWith(".zip")) {
                return;
            }
            ShareWebActivity.this.f35423y = true;
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            ShareWebActivity.this.showLodingFailed();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.proceed();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            com.join.mgps.Util.t0.b(ShareWebActivity.this.f35388a, "shouldOverrideUrlLoading() called.");
            if (!com.join.android.app.common.utils.f.j(ShareWebActivity.this.f35421x)) {
                com.join.mgps.Util.i2.a(ShareWebActivity.this.f35421x).b(ShareWebActivity.this.getString(R.string.net_connect_failed));
            } else if (!str.startsWith("weixin:")) {
                if (str.startsWith(com.facebook.common.util.f.f11765a) || str.startsWith("https") || str.startsWith("file://")) {
                    ShareWebActivity.this.f35415u = str;
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                try {
                    ShareWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return true;
            } else {
                try {
                    ShareWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C1() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(536870912);
            startActivity(intent);
        }
        backModGame();
        finish();
    }

    private List<String> G1(Intent intent) {
        if (intent != null && intent.getExtras() != null) {
            return (List) intent.getExtras().get(MyAlbumActivity.f17332w);
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H1(int i2) {
        if (!this.I) {
            Toast.makeText(this, getString(R.string.tip_no_permission), 0).show();
            return;
        }
        File[] listFiles = new File(Environment.getExternalStorageDirectory() + "/wufan91/live").listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.exists() && file.isFile() && file.getName().endsWith(".jpg")) {
                    UtilsMy.delete(file);
                }
            }
        }
        if (i2 == 100) {
            this.K0 = v1("");
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            intent.putExtra("output", this.K0);
            startActivityForResult(intent, 100);
        } else if (i2 == 200) {
            this.K0 = v1("_select");
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.setType("image/*");
            startActivityForResult(intent2, 200);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1() {
        Dialog dialog = new Dialog(this, R.style.floate_dialog);
        this.J0 = dialog;
        dialog.setContentView(R.layout.dialog_pic_choose);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Window window = this.J0.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = defaultDisplay.getWidth();
        this.J0.getWindow().setAttributes(attributes);
        ((TextView) this.J0.findViewById(R.id.chos_camera)).setOnClickListener(new b());
        ((TextView) this.J0.findViewById(R.id.pic_lib)).setOnClickListener(new c());
        ((TextView) this.J0.findViewById(R.id.btn_cancel)).setOnClickListener(new d());
        this.J0.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q1() {
        RoomPosition p12 = this.E0.getP1();
        if (p12.getUid() == 0) {
            this.f35426z0 = 0;
        } else {
            if (p12.getUid() == this.f35422x0.getAccountData().getUid()) {
                this.D0 = 0;
            }
            this.f35426z0 = 1;
        }
        RoomPosition p22 = this.E0.getP2();
        if (p22.getUid() == 0) {
            this.A0 = 0;
        } else {
            if (p22.getUid() == this.f35422x0.getAccountData().getUid()) {
                this.D0 = 1;
            }
            this.A0 = 1;
        }
        RoomPosition p3 = this.E0.getP3();
        if (p3.getUid() == 0) {
            this.B0 = 0;
        } else {
            if (p3.getUid() == this.f35422x0.getAccountData().getUid()) {
                this.D0 = 2;
            }
            this.B0 = 1;
        }
        RoomPosition p4 = this.E0.getP4();
        if (p4.getUid() == 0) {
            this.C0 = 0;
            return;
        }
        if (p4.getUid() == this.f35422x0.getAccountData().getUid()) {
            this.D0 = 3;
        }
        this.C0 = 1;
    }

    private boolean R1(String str) {
        try {
            this.f35421x.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private boolean S1(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private void U1(String str) {
        String str2 = this.f35388a;
        com.join.mgps.Util.t0.b(str2, "lodeWebView() called." + str);
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                LJWebView lJWebView = this.f35399l;
                if (lJWebView == null) {
                    return;
                }
                lJWebView.setVisibility(0);
                this.f35399l.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
                this.f35399l.setClickable(true);
                this.f35399l.setUseWideViewPort(true);
                this.f35399l.setSupportZoom(false);
                this.f35399l.setBuiltInZoomControls(false);
                this.f35399l.setJavaScriptEnabled(true);
                this.f35399l.setCacheMode(-1);
                this.f35399l.setWebViewClient(new q(this));
                this.f35399l.r(new o());
                this.f35399l.s(new p());
                this.f35399l.w(str);
                this.f35399l.setonShowFileChooser(new i());
                this.f35399l.setActivity(this);
            } else {
                showLodingFailed();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        this.f35421x.startActivityForResult(Intent.createChooser(intent, "Image Chooser"), LJWebView.f45691r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(String str) {
        DownloadManager downloadManager = (DownloadManager) getSystemService("download");
        Cursor query = downloadManager.query(new DownloadManager.Query());
        while (query.moveToNext()) {
            int i2 = query.getInt(query.getColumnIndex("_id"));
            String string = query.getString(query.getColumnIndex("title"));
            String string2 = query.getString(query.getColumnIndex("local_uri"));
            int i4 = query.getInt(query.getColumnIndex("status"));
            String string3 = query.getString(query.getColumnIndex("bytes_so_far"));
            String string4 = query.getString(query.getColumnIndex("total_size"));
            StringBuilder sb = new StringBuilder();
            sb.append("downId:");
            sb.append(i2);
            sb.append(",status:");
            sb.append(i4);
            sb.append(",title:");
            sb.append(string);
            sb.append(",address:");
            sb.append(string2);
            sb.append(",size:");
            sb.append(string3);
            sb.append(",sizeTotal:");
            sb.append(string4);
            if (!com.join.mgps.Util.d2.h(string2)) {
                String substring = string2.substring(string2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
                new File(path, substring);
                if (("temp_" + str).equals(substring)) {
                    File file = new File(path, str);
                    if (file.exists()) {
                        file.delete();
                    }
                    File file2 = new File(path, substring);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    downloadManager.remove(i2);
                }
            }
        }
        query.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Z1() {
        /*
            r3 = this;
            android.widget.FrameLayout r0 = r3.f35409r
            r1 = 8
            r0.setVisibility(r1)
            android.widget.RelativeLayout r0 = r3.f35398k
            r1 = 0
            r0.setVisibility(r1)
            android.widget.RelativeLayout r0 = r3.f35393f
            r0.setVisibility(r1)
            int r0 = r3.E
            if (r0 == 0) goto L28
            r2 = 1
            if (r0 == r2) goto L24
            r1 = 2
            if (r0 == r1) goto L20
            r1 = 3
            if (r0 == r1) goto L28
            goto L2c
        L20:
            r3.setRequestedOrientation(r2)
            goto L2c
        L24:
            r3.setRequestedOrientation(r1)
            goto L2c
        L28:
            r0 = 4
            r3.setRequestedOrientation(r0)
        L2c:
            android.view.Window r0 = r3.getWindow()
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            int r1 = r0.flags
            r1 = r1 & (-1025(0xfffffffffffffbff, float:NaN))
            r0.flags = r1
            android.view.Window r1 = r3.getWindow()
            r1.setAttributes(r0)
            android.view.Window r0 = r3.getWindow()
            r1 = 512(0x200, float:7.175E-43)
            r0.clearFlags(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ShareWebActivity.Z1():void");
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(24:1|(22:3|(2:5|(2:7|(2:9|(2:11|(2:13|(1:15))(1:56))(1:57))(1:58))(1:59))(1:60)|16|17|18|19|(1:21)(1:52)|22|23|24|26|27|28|29|30|31|32|33|34|(1:36)(1:40)|37|38)|61|16|17|18|19|(0)(0)|22|23|24|26|27|28|29|30|31|32|33|34|(0)(0)|37|38|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        r2.printStackTrace();
        r2 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
        r4 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c3, code lost:
        r4 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c4, code lost:
        r2 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c5, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e0, code lost:
        r2.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f4, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f5, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b2(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.ShareWebActivity.b2(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2() {
        getWindow().setFlags(1024, 1024);
    }

    private boolean checkGameIsInstall(String str) {
        this.H0 = false;
        this.I0 = false;
        DownloadTask B = g1.f.G().B(str);
        if (B != null && B.getStatus() == 5) {
            this.H0 = true;
            EMUApkTable n4 = n1.p.o().n(B.getPlugin_num());
            if (n4 != null) {
                if (com.join.android.app.common.utils.h.t(this.f35421x, n4, false, new String[0]) && !UtilsMy.q0(this.f35421x, n4)) {
                    this.I0 = true;
                } else {
                    this.I0 = false;
                }
            } else {
                this.I0 = true;
            }
        } else {
            this.H0 = false;
        }
        return this.I0 && this.H0;
    }

    private void d2(GameRoom gameRoom) {
        com.join.mgps.dialog.v0 v0Var = this.F0;
        if (v0Var != null) {
            v0Var.a();
        }
        com.join.mgps.dialog.v0 v0Var2 = new com.join.mgps.dialog.v0(this.f35421x);
        this.F0 = v0Var2;
        v0Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.F0.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2(String str) {
        com.join.mgps.dialog.x0 x0Var = this.G0;
        if (x0Var != null && x0Var.isShowing()) {
            this.G0.dismiss();
        }
        com.join.mgps.dialog.x0 z3 = com.join.mgps.Util.a0.c0(this.f35421x).z(this.f35421x, str, false);
        this.G0 = z3;
        z3.b();
    }

    private void j2(int i2) {
        Intent intent = new Intent(this.f35421x, NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", "" + this.E0.getGameId());
        intent.putExtra(NewArenaDownloadActivity_.f36681q0, this.I0);
        intent.putExtra(NewArenaDownloadActivity_.f36682r0, this.H0);
        startActivityForResult(intent, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m2(String str) {
        new l(str).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2() {
        Iterator<String> it2 = this.T0.iterator();
        this.O0 = it2;
        if (it2 != null && it2.hasNext()) {
            com.join.mgps.Util.e2 e2Var = this.N0;
            e2Var.f(this.O0.next(), this.f35425z.getUid() + "", this.f35425z.getToken());
            this.O0.remove();
            return;
        }
        LiveUploadData liveUploadData = new LiveUploadData();
        liveUploadData.setCode(1);
        if (this.Q0.size() == 0) {
            liveUploadData.setCode(0);
        } else {
            try {
                List<String> list = this.Q0;
                liveUploadData.setData((String[]) list.toArray(new String[list.size()]));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        String json = JsonMapper.getInstance().toJson(liveUploadData);
        LJWebView lJWebView = this.f35399l;
        lJWebView.w("javascript:papaChoiceAndUploadImg('" + json + "')");
    }

    private boolean u1() {
        if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList = new ArrayList();
            if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
                arrayList.add("android.permission.CAMERA");
            }
            if (ContextCompat.checkSelfPermission(this, "android.permission.READ_PHONE_STATE") != 0) {
                arrayList.add("android.permission.READ_PHONE_STATE");
            }
            if (arrayList.size() != 0) {
                ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), 2);
                return false;
            }
            return true;
        }
        return true;
    }

    private Uri v1(String str) {
        String str2 = Environment.getExternalStorageDirectory() + "/wufan91/live";
        File file = new File(str2, this.f35425z.getUid() + str + System.currentTimeMillis() + ".jpg");
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
            return null;
        }
        try {
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            Toast.makeText(this, "生成封面失败", 0).show();
        }
        return FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void A1(String str, IntentDateBean intentDateBean) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).s("android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE").B5(new g(intentDateBean, str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void B1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void D(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient webChromeClient) {
        this.D = view;
        if (view == null) {
            return;
        }
        this.F = webChromeClient;
        this.f35398k.setVisibility(8);
        this.f35393f.setVisibility(8);
        this.f35409r.removeAllViews();
        this.f35409r.setVisibility(0);
        this.f35409r.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        setRequestedOrientation(0);
        c2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65475f0})
    public void D1(Intent intent) {
        finish();
    }

    public String E1(Context context) {
        String simOperator;
        try {
            simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (simOperator == null) {
            return "13-4-0";
        }
        if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
            return simOperator.equals("46001") ? "13-4-2" : simOperator.equals("46003") ? "13-4-3" : "13-4-0";
        }
        return "13-4-1";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void F1(String str, String str2) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
                ResultMainBean<List<DetailResultBean>> R = this.f35411s.R(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (R != null && R.getFlag() != 0) {
                    List<DetailResultBean> data = R.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        detailResultBean.set_from(110);
                        if (str2 != null) {
                            detailResultBean.setDown_url_remote(str2);
                        }
                        startDown(detailResultBean);
                        return;
                    }
                    return;
                } else if (R != null && R.getFlag() != 0) {
                    i2("获取游戏信息失败");
                    return;
                } else {
                    i2("获取游戏信息失败");
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                i2("获取游戏信息失败");
                return;
            }
        }
        i2("获取游戏信息失败");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I1() {
        if (this.f35414t0) {
            return;
        }
        this.f35414t0 = true;
        this.f35425z = AccountUtil_.getInstance_(this).getAccountData();
        if (com.join.android.app.common.utils.f.j(this)) {
            AccountBean accountBean = this.f35425z;
            if (accountBean != null && !TextUtils.isEmpty(accountBean.getToken())) {
                try {
                    AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
                    accountUserInfoRequestBean.setUid(this.f35425z.getUid() + "");
                    accountUserInfoRequestBean.setToken(this.f35425z.getToken());
                    accountUserInfoRequestBean.setDevice_id("");
                    accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
                    AccountResultMainBean<AccountBean> d4 = this.f35413t.d(accountUserInfoRequestBean.getParams());
                    if (d4 != null) {
                        if (d4.getError() == 0) {
                            AccountBean data = d4.getData();
                            if (data != null && data.getUid() != 0) {
                                this.f35425z.setSvip_level(data.getSvip_level());
                                this.f35425z.setVip_level(data.getVip_level());
                                this.f35425z.setLive_total_charm(data.getLive_total_charm());
                                this.f35425z.setIs_anchor(data.getIs_anchor());
                                this.f35425z.setPapaMoney(data.getPapaMoney());
                                this.f35425z.setMember_title(data.getMember_title());
                                if (com.join.mgps.Util.d2.i(data.getNickname())) {
                                    this.f35425z.setNickname(data.getNickname());
                                }
                                this.f35425z.setIs_real_name(data.getIs_real_name());
                            }
                            AccountUtil_.getInstance_(this).saveAccountData(this.f35425z, this);
                        } else {
                            d4.getError();
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } else {
                Intent intent = new Intent();
                intent.setAction(f1.a.f65500s);
                sendBroadcast(intent);
                return;
            }
        }
        this.f35414t0 = false;
    }

    public void J1(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                MainLabelActivity_.j1(this).d(Integer.parseInt(str)).start();
            } else {
                com.join.mgps.Util.t0.d("uploadData", "  goMyMainLabel tag_id is null ");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void K1(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str)) {
                int parseInt = TextUtils.isEmpty(str2) ? 0 : Integer.parseInt(str2);
                if (TextUtils.isEmpty(str3)) {
                    str3 = "";
                }
                IntentUtil.getInstance().goMainLabelActivity(this, Integer.parseInt(str), parseInt, str3);
                return;
            }
            com.join.mgps.Util.t0.d("uploadData", "  goMyMainLabel tag_id is null ");
        } catch (NumberFormatException e4) {
            e4.printStackTrace();
        }
    }

    public void L1() {
        SearchLabelActivity_.u(this).a(1).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M1(GameRoom gameRoom) {
        dismissLoadingDialog();
        this.E0 = gameRoom;
        if (!gameRoom.getAllowPeripheralJoin() && com.join.mgps.socket.fight.arena.c.o(this.f35421x)) {
            com.join.mgps.Util.i2.a(this.f35421x).b("禁止外设用户加入!");
        } else if (this.E0.getBattleArea().getNumber() != BattleArea.ALL.getNumber() && this.E0.getBattleArea().getNumber() != this.f35418v0.d().n().getNumber()) {
            d2(gameRoom);
        } else {
            if (!checkGameIsInstall("" + gameRoom.getGameId())) {
                j2(f35384d1);
            } else if (gameRoom.getHasJoinPassword()) {
                e2(gameRoom);
            } else {
                y1(gameRoom, "");
            }
        }
    }

    @Override // com.join.mgps.Util.e2.e
    public void N(int i2, String str) {
        com.join.mgps.Util.t0.d("uploadData", "  onUploadResult " + str);
        if (this.P0) {
            if (i2 == 0) {
                this.Q0.add(str);
            }
            Iterator<String> it2 = this.O0;
            if (it2 != null && it2.hasNext()) {
                p2();
                return;
            }
            LiveUploadData liveUploadData = new LiveUploadData();
            liveUploadData.setCode(0);
            try {
                List<String> list = this.Q0;
                liveUploadData.setData((String[]) list.toArray(new String[list.size()]));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            String json = JsonMapper.getInstance().toJson(liveUploadData);
            LJWebView lJWebView = this.f35399l;
            lJWebView.w("javascript:papaChoiceAndUploadImg('" + json + "')");
            this.f35402n0.dismiss();
            this.f35402n0.a("请稍候...");
            this.P0 = false;
            return;
        }
        this.f35402n0.dismiss();
        this.f35402n0.a("请稍候...");
        if (i2 == 0) {
            LJWebView lJWebView2 = this.f35399l;
            lJWebView2.w("javascript:papaLiveCropImage2('" + str + "')");
            Toast.makeText(this, "上传成功", 0).show();
        } else {
            Toast.makeText(this, "上传失败，错误码 " + i2, 0).show();
        }
        this.M0 = false;
    }

    public boolean N1() {
        return this.D != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P1(boolean z3) {
        if (z3) {
            com.join.mgps.Util.i2.a(this.f35421x).b("正在连接服务器，请稍候...");
        }
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this.f35421x, new m());
        this.f35418v0 = bVar;
        bVar.bindService();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T1(String str) {
        this.f35420w0 = str;
        if (!com.join.android.app.common.utils.f.j(this.f35421x)) {
            Toast.makeText(this.f35421x, "当前网络不可用，请检查网络", 0).show();
        } else if (!q2()) {
            g2();
        } else {
            com.join.mgps.socket.fight.arena.b bVar = this.f35418v0;
            if (bVar != null && bVar.d() == null) {
                P1(true);
                return;
            }
            this.f35418v0.d().z(this.f35424y0);
            this.f35402n0.b();
            this.f35402n0.setCancelable(true);
            if (!this.f35418v0.d().s()) {
                this.f35418v0.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_ARENAMAIN));
            } else {
                z1(str);
            }
        }
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void U() {
        LJWebView lJWebView = this.f35399l;
        if (lJWebView == null || lJWebView.getVisibility() == 0) {
            return;
        }
        h2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V1() {
        com.join.mgps.Util.t0.b(this.f35388a, "loding_faile() called.");
        if (this.f35399l != null) {
            this.f35423y = false;
            U1(this.f35415u);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W1(SocketError socketError) {
        int i2 = socketError.errorType;
        if (i2 != 6 && i2 != 3 && i2 != 4) {
            com.join.mgps.Util.i2.a(this.f35421x).b("网络异常，请稍后重试!");
            return;
        }
        com.join.mgps.Util.i2.a(this.f35421x).b(socketError.errorInfo);
        g2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a2() {
        U1(this.f35415u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    @AfterViews
    public void afterview() {
        this.f35411s = com.join.mgps.rpc.impl.c.P1();
        this.f35413t = com.join.mgps.rpc.impl.a.b0();
        com.join.mgps.Util.t0.b(this.f35388a, "afterView() called.");
        try {
            this.f35421x = this;
            if ("com.join.mgps.papa.share_webview_raiseVip".equals(getIntent().getAction())) {
                this.B = new IntentDateBean();
                String stringExtra = getIntent().getStringExtra(this.f35389b);
                String stringExtra2 = getIntent().getStringExtra("gameId");
                this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welcome?gameId=" + stringExtra2;
                if (stringExtra.equals("1")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/battle_bullet_screen?gameId=" + stringExtra2;
                } else if (stringExtra.equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/game_level?gameId=" + stringExtra2;
                } else if (stringExtra.equals("3")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/game_one_key_skill?gameId=" + stringExtra2;
                } else if (stringExtra.equals("4")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/game_more_archive?gameId=" + stringExtra2;
                } else if (stringExtra.equals("5")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/game_bug?gameId=" + stringExtra2;
                } else if (stringExtra.equals("6")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/game_practice?gameId=" + stringExtra2;
                } else if (stringExtra.equals("7")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/game_enhance?gameId=" + stringExtra2;
                } else if (stringExtra.equals("8")) {
                    this.f35415u = com.join.mgps.rpc.g.f51524k + "/member/vip_view/welfare/ad?gameId=" + stringExtra2;
                } else if (stringExtra.equals("9")) {
                    this.f35415u = getIntent().getStringExtra("url");
                }
                this.B.setLink_type_val(this.f35415u);
                this.f35404o0 = true;
            }
            IntentDateBean intentDateBean = this.B;
            this.f35415u = intentDateBean.getLink_type_val();
            this.f35417v = intentDateBean.getLink_type_val();
            int i2 = 0;
            i2 = 0;
            i2 = 0;
            i2 = 0;
            if (intentDateBean.getFrom().equals("11")) {
                P1(false);
            }
            if (this.f35415u == null) {
                this.f35415u = "";
            }
            if (!this.f35415u.contains("http://") && !this.f35415u.contains("file://") && !this.f35415u.contains("https://")) {
                this.f35415u = "http://" + this.f35415u;
            }
            if (this.f35415u.contains("jump_url_type")) {
                this.f35415u = b2(this.f35415u);
            }
            try {
                if (intentDateBean.getObject() != null) {
                    Object object = intentDateBean.getObject();
                    if (object instanceof UpdateIntentDataBean) {
                        UpdateIntentDataBean updateIntentDataBean = (UpdateIntentDataBean) object;
                        if (updateIntentDataBean.getDownloadTask() != null) {
                            i2 = APKUtils.E(updateIntentDataBean.getDownloadTask());
                        }
                    }
                }
            } catch (Exception unused) {
            }
            if (this.f35415u.contains("?")) {
                U1(this.f35415u + "&ver=" + Build.VERSION.RELEASE + "&type=" + i2);
            } else {
                U1(this.f35415u + "?ver=" + Build.VERSION.RELEASE + "&type=" + i2);
            }
            if (intentDateBean.getObject() instanceof String) {
                this.f35394g.setText((String) intentDateBean.getObject());
            }
            TextView textView = this.f35395h;
            if (textView != null) {
                textView.setText("网页加载失败，再试试吧~");
            }
            LJWebView lJWebView = this.f35399l;
            if (lJWebView != null) {
                lJWebView.setMethodListenter(this);
            }
            this.f35402n0 = com.join.mgps.Util.a0.c0(this.f35421x).x(this.f35421x);
            com.join.mgps.Util.c0.a().d(this);
            this.N0 = new com.join.mgps.Util.e2(this, this);
            this.f35399l.getWebView().setDownloadListener(new f(intentDateBean));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void backModGame() {
        IntentDateBean intentDateBean = this.B;
        if (intentDateBean == null) {
            return;
        }
        String ext1 = intentDateBean.getExt1();
        String ext2 = this.B.getExt2();
        String ext3 = this.B.getExt3();
        if (TextUtils.isEmpty(ext1) || TextUtils.isEmpty(ext2) || !ext1.equals("modGame")) {
            return;
        }
        if (com.join.mgps.Util.d2.h(ext3)) {
            ext3 = "0";
        }
        com.join.mgps.va.overmind.e.p().S(this, Integer.parseInt(ext3), ext2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkToken() {
        try {
            com.join.mgps.rpc.b b02 = com.join.mgps.rpc.impl.a.b0();
            AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            if (accountData == null || accountData.getAccount_type() == 2) {
                return;
            }
            AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
            accountUserInfoRequestBean.setUid(accountData.getUid() + "");
            accountUserInfoRequestBean.setToken(accountData.getToken());
            accountUserInfoRequestBean.setDevice_id("");
            accountUserInfoRequestBean.setSign(com.join.mgps.Util.u1.f(accountUserInfoRequestBean));
            AccountResultMainBean<AccountTokenSuccess> h4 = b02.h(accountUserInfoRequestBean.getParams());
            if (h4 == null || h4.getData() == null || h4.getData().getUser_info() == null) {
                return;
            }
            AccountBean user_info = h4.getData().getUser_info();
            if (user_info.getVip_level() > 0) {
                AccountBean accountData2 = AccountUtil_.getInstance_(this).getAccountData();
                accountData2.setVip_level(user_info.getVip_level());
                accountData2.setSvip_level(user_info.getSvip_level());
                accountData2.setVip_exp_time(user_info.getVip_exp_time());
                accountData2.setIs_anchor(user_info.getIs_anchor());
                AccountUtil_.getInstance_(this).saveAccountData(accountData2, this);
                UtilsMy.L(this);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissLoadingDialog() {
        com.join.mgps.dialog.x0 x0Var = this.f35402n0;
        if (x0Var != null) {
            x0Var.dismiss();
        }
        com.join.mgps.dialog.x0 x0Var2 = this.G0;
        if (x0Var2 != null) {
            x0Var2.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e2(GameRoom gameRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f35421x, "请输入房间密码", 4, false);
        aVar.g(new a(aVar, gameRoom));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g2() {
        com.join.mgps.Util.a0.c0(this.f35421x).j(this.f35421x);
    }

    public void goMyAlbumActivity4PickPic() {
        boolean z3 = false;
        if (ContextCompat.checkSelfPermission(this.f35421x, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            UtilsMy.c2(this.f35421x, "android.permission.WRITE_EXTERNAL_STORAGE");
        } else if (ContextCompat.checkSelfPermission(this.f35421x, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            UtilsMy.c2(this.f35421x, "android.permission.READ_EXTERNAL_STORAGE");
        } else {
            z3 = true;
        }
        if (z3) {
            Intent intent = new Intent(this, MyAlbumActivity.class);
            Bundle bundle = new Bundle();
            this.Q0.clear();
            this.R0.clear();
            bundle.putSerializable(MyAlbumActivity.f17332w, (Serializable) this.R0);
            intent.putExtras(bundle);
            startActivityForResult(intent, 256);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h2() {
        try {
            com.join.mgps.Util.t0.b(this.f35388a, "showMain() called.");
            this.f35392e.setVisibility(8);
            this.f35391d.setVisibility(8);
            LJWebView lJWebView = this.f35399l;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse arenaResponse) {
        String str;
        int i2 = arenaResponse.errorType;
        if (i2 == 7) {
            str = "密码输入错误，请重试";
        } else if (i2 == 8) {
            str = "房间不存在";
        } else if (i2 == 9) {
            str = "房间已满，无法加入!";
        } else if (i2 == 13) {
            str = "铜板不足，无法加入房间";
        } else if (i2 == 1001) {
            str = arenaResponse.errorInfo;
        } else if (i2 == 16) {
            str = "无法加入，你被禁止加入该房间";
        } else if (i2 != 17) {
            com.join.mgps.Util.i2.a(this.f35421x).b(com.join.mgps.socket.fight.arena.c.g(arenaResponse));
            str = "";
        } else {
            str = "该房间为比赛专用房间,非参赛选手无法加入";
        }
        com.join.mgps.Util.i2.a(this.f35421x).b(str);
        dismissLoadingDialog();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i2(String str) {
        com.join.mgps.Util.i2.a(this.f35421x).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k2(DetailResultBean detailResultBean) {
        List<DownloadTask> D;
        boolean z3;
        if (detailResultBean == null) {
            return;
        }
        try {
            if (detailResultBean.getMod_info() != null) {
                D = g1.f.G().C(detailResultBean.getMod_info().getMod_game_id(), detailResultBean.getMod_info().getMain_game_id());
            } else {
                D = g1.f.G().D(detailResultBean.getPackage_name());
            }
            if (D != null && D.size() > 0) {
                boolean z4 = false;
                loop0: while (true) {
                    z3 = false;
                    for (DownloadTask downloadTask : D) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z4 = com.join.mgps.va.overmind.e.p().D(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.a.g0(this).c(this, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z3 = true;
                        }
                    }
                    break loop0;
                }
                if (z4 && z3) {
                    r0 = g1.f.G().B(detailResultBean.getMod_info().getMain_game_id());
                } else if (z4) {
                    if (detailResultBean.getMod_info() != null) {
                        r0 = g1.f.G().B(detailResultBean.getMod_info().getMod_game_id());
                    }
                } else if (z3) {
                    r0 = g1.f.G().B(detailResultBean.getMod_info().getMain_game_id());
                } else {
                    r0 = detailResultBean.getMod_info() != null ? g1.f.G().B(detailResultBean.getMod_info().getMod_game_id()) : null;
                    if (r0 == null) {
                        r0 = g1.f.G().B(detailResultBean.getMod_info().getMain_game_id());
                    }
                }
            }
            if (r0 == null) {
                if (detailResultBean.getMod_info() == null) {
                    r0 = detailResultBean.getDownloadtaskDown();
                } else {
                    UtilsMy.K0(this.f35421x, detailResultBean);
                    return;
                }
            }
            if (r0 != null) {
                if (UtilsMy.n0(r0.getPay_game_amount(), r0.getCrc_link_type_val()) > 0) {
                    UtilsMy.m3(this.f35421x, r0.getCrc_link_type_val());
                    return;
                }
                UtilsMy.d1(r0, detailResultBean);
                if (UtilsMy.T0(this.f35421x, r0)) {
                    return;
                }
                if (detailResultBean.getDown_status() == 5) {
                    UtilsMy.R0(this.f35421x, r0);
                } else {
                    UtilsMy.F0(this.f35421x, r0, r0.getTp_down_url(), r0.getOther_down_switch(), r0.getCdn_down_switch());
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void l2(PapayOrder papayOrder) {
        PayNowActivity_.j1(this.f35421x).c(papayOrder).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n2(CreateVipData createVipData) {
        try {
            this.f35425z = AccountUtil_.getInstance_(this.f35421x).getAccountData();
            PapayOrder papayOrder = new PapayOrder();
            papayOrder.APPKEY = "16000431";
            papayOrder.PAYTYPE = 0;
            papayOrder.NOTIFY_URI = com.join.mgps.rpc.g.f51524k + "/member/buy_vip/callback";
            papayOrder.APP_NAME = "悟饭充值";
            papayOrder.APP_ORDER_ID = "papavip" + System.currentTimeMillis() + "";
            papayOrder.PA_OPEN_UID = this.f35425z.getUid();
            papayOrder.APP_USER_ID = this.f35425z.getUid() + "";
            papayOrder.APP_USER_NAME = this.f35425z.getNickname();
            papayOrder.PRODUCT_ID = "month" + createVipData.getMonth();
            papayOrder.PRODUCT_NAME = "会员充值";
            papayOrder.MONEY_AMOUNT = createVipData.getAmount() + "";
            papayOrder.APP_DISTRICT = 1;
            papayOrder.APP_SERVER = 1;
            papayOrder.APP_EXT1 = createVipData.getExtra();
            papayOrder.APP_EXT2 = "";
            papayOrder.PAYORRECHARGE = 1;
            papayOrder.ORDERTYPE = 1;
            papayOrder.PAYSHOWTYPE = 3;
            papayOrder.TOKEN = this.f35425z.getToken();
            l2(papayOrder);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void o2(Uri uri) {
        this.L0 = v1("_crop");
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", com.join.android.app.mgsim.wufun.b.f17913g);
        intent.putExtra("aspectY", 290);
        intent.putExtra("outputX", com.join.android.app.mgsim.wufun.b.f17913g);
        intent.putExtra("outputY", 290);
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("return-data", false);
        intent.putExtra("output", this.L0);
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        startActivityForResult(intent, 10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, Intent intent) {
        String s3;
        if (i4 == -1) {
            if (i2 == 10) {
                this.M0 = true;
                com.facebook.imagepipeline.core.g imagePipeline = Fresco.getImagePipeline();
                imagePipeline.h(this.L0);
                imagePipeline.f(this.L0);
                imagePipeline.e(this.L0);
                com.join.mgps.Util.e2 e2Var = this.N0;
                String path = this.L0.getPath();
                e2Var.f(path, this.f35425z.getUid() + "", this.f35425z.getToken());
                this.f35402n0.b();
                this.f35402n0.a("正在上传直播封面");
                this.f35402n0.setCancelable(false);
            } else if (i2 == 100) {
                o2(this.K0);
            } else if (i2 == 200 && (s3 = com.join.mgps.Util.g0.s(this, intent.getData())) != null) {
                o2(Uri.fromFile(new File(s3)));
            }
        }
        if (i2 == 256) {
            if (this.R0 == null) {
                this.R0 = new ArrayList();
            }
            this.R0.clear();
            this.R0.addAll(G1(intent));
            net.bither.util.b.q().y();
        } else if (i2 == f35384d1 && i4 == -1) {
            if (this.E0.getHasJoinPassword()) {
                e2(this.E0);
            } else if (this.E0.getHasJoinPassword()) {
                e2(this.E0);
            } else {
                f2("正在获取房间...");
                y1(this.E0, "");
            }
        }
        this.f35399l.q(i2, i4, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        BackHandledFragment backHandledFragment = this.U0;
        if (backHandledFragment == null || !backHandledFragment.a()) {
            if (getSupportFragmentManager().getBackStackEntryCount() == 0) {
                super.onBackPressed();
            } else {
                getSupportFragmentManager().popBackStack();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            try {
                LJWebView lJWebView = this.f35399l;
                if (lJWebView != null) {
                    lJWebView.getWebView().restoreState(bundle);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        t1();
        this.G = true;
        this.f35399l.w("");
        com.join.mgps.Util.c0.a().e(this);
        try {
            if (this.C != null) {
                moveTaskToBack(true);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (this.S0 != null) {
            net.bither.util.b.q().z(this.S0);
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (a4 == null) {
            return;
        }
        if (APKUtils.E(a4)) {
            LJWebView lJWebView = this.f35399l;
            lJWebView.w("javascript:papaGameStatusNotify(" + a4.getRef_crc_sign_id() + "," + a4.getStatus() + ")");
            return;
        }
        LJWebView lJWebView2 = this.f35399l;
        lJWebView2.w("javascript:papaGameStatusNotify(" + a4.getCrc_link_type_val() + "," + a4.getStatus() + ")");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        com.join.mgps.Util.t0.b(this.f35388a, "onKeyDown() called.");
        if (i2 == 4 && keyEvent.getRepeatCount() == 0) {
            if (N1()) {
                this.F.onHideCustomView();
                return true;
            }
            if (com.join.mgps.Util.d2.i(this.f35417v) && this.f35417v.equals(this.f35415u)) {
                C1();
            }
            String str = this.f35417v;
            if (str == null) {
                C1();
                return true;
            }
            if (str.contains("?")) {
                String str2 = this.f35417v;
                str = str2.substring(0, str2.lastIndexOf("?"));
            }
            if (this.f35415u.contains("?")) {
                String str3 = this.f35415u;
                this.f35415u = str3.substring(0, str3.lastIndexOf("?"));
            }
            if (com.join.mgps.Util.d2.i(this.f35417v) && str.equals(this.f35415u)) {
                C1();
            }
            WebView webView = this.f35399l.getWebView();
            if (webView != null && com.join.android.app.common.utils.f.j(this)) {
                webView.loadUrl("javascript:papaBackPageUp()");
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        LJWebView lJWebView = this.f35399l;
        if (lJWebView != null) {
            try {
                lJWebView.getWebView().getClass().getMethod("onPause", new Class[0]).invoke(this.f35399l.getWebView(), null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 2) {
            return;
        }
        for (int i4 : iArr) {
            if (i4 != 0) {
                return;
            }
        }
        this.I = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f35399l.w("javascript:papaActivityOnResume()");
        LJWebView lJWebView = this.f35399l;
        if (lJWebView != null) {
            try {
                lJWebView.getWebView().getClass().getMethod("onResume", new Class[0]).invoke(this.f35399l.getWebView(), null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        this.f35425z = AccountUtil_.getInstance_(this.f35421x).getAccountData();
        if (this.A) {
            if (this.f35399l != null) {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                if (this.f35425z != null) {
                    webAccountDataBean.setHasLogin(true);
                    webAccountDataBean.setAccountBean(this.f35425z);
                } else {
                    webAccountDataBean.setHasLogin(false);
                    webAccountDataBean.setAccountBean(this.f35425z);
                }
                LJWebView lJWebView2 = this.f35399l;
                lJWebView2.w("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
            this.A = false;
        }
        net.bither.util.b.q().e(this.S0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f35399l.getWebView().saveState(bundle);
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void p0(String str) {
        TextView textView = this.f35394g;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void q0() {
        this.D = null;
        Z1();
    }

    boolean q2() {
        AccountBean accountBean = accountBean(this.f35421x);
        this.f35425z = accountBean;
        return (accountBean == null || AccountUtil_.getInstance_(this.f35421x).isTourist()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void r1() {
        if (this.f35417v.equals(this.f35415u)) {
            C1();
        }
        WebView webView = this.f35399l.getWebView();
        if (webView != null && com.join.android.app.common.utils.f.j(this)) {
            webView.loadUrl("javascript:papaBackPageUp()");
        } else {
            C1();
        }
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void s() {
        WebView webView = this.f35399l.getWebView();
        if (webView != null && webView.canGoBack()) {
            webView.goBack();
        } else {
            C1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void s1() {
        C1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void search() {
        SearchHintActivity_.S1(this.f35421x).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        com.join.mgps.Util.t0.b(this.f35388a, "setNetwork() called.");
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            com.join.mgps.Util.t0.b(this.f35388a, "showLoding() called.");
            this.f35391d.setVisibility(8);
            this.f35392e.setVisibility(8);
            LJWebView lJWebView = this.f35399l;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            com.join.mgps.Util.t0.b(this.f35388a, "showLodingFailed() called.");
            this.f35392e.setVisibility(0);
            this.f35391d.setVisibility(8);
            LJWebView lJWebView = this.f35399l;
            if (lJWebView != null) {
                lJWebView.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean detailResultBean) {
        String crc_sign_id;
        boolean z3;
        String str;
        if (detailResultBean.getMod_info() != null) {
            crc_sign_id = detailResultBean.getMod_info().getMod_game_id();
            detailResultBean.get_from();
            detailResultBean.get_from_type();
        } else {
            crc_sign_id = detailResultBean.getCrc_sign_id();
            detailResultBean.get_from();
            detailResultBean.get_from_type();
        }
        detailResultBean.getTag_info();
        String str2 = detailResultBean.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(detailResultBean.getSp_tag_info().getModel().getId())) {
            str = str2;
            z3 = false;
        } else {
            z3 = true;
            str = "ANDROID_SINGLE";
        }
        if (!z3) {
            boolean H1 = com.join.mgps.Util.d2.h(detailResultBean.getPlugin_num()) ? false : UtilsMy.H1(Integer.parseInt(detailResultBean.getPlugin_num()));
            if (H1) {
                str = UtilsMy.y1(detailResultBean.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            }
            z3 = H1;
        }
        try {
            String d4 = new PrefDef_(this.f35421x).androidIdNullsKey().d();
            if (com.join.mgps.Util.d2.i(d4)) {
                List list = (List) JsonMapper.getInstance().fromJson(d4, List.class);
                if (com.join.mgps.Util.d2.i(MApplication.f9241z) && list.contains(MApplication.f9241z) && z3) {
                    if (IntentUtil.getInstance().goLogin(this.f35421x)) {
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
        boolean booleanValue = new PrefDef_(this.f35421x).download_game_switch().d().booleanValue();
        if (z3 && booleanValue) {
            UtilsMy.p0(this.f35421x, 2, crc_sign_id, str, new j(detailResultBean));
        } else {
            k2(detailResultBean);
        }
    }

    void t1() {
        com.join.mgps.socket.fight.arena.b bVar = this.f35418v0;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        com.join.mgps.Util.t0.b(this.f35388a, "--- removeObserver---");
        this.f35418v0.d().A(this.f35424y0);
        this.f35418v0.g();
        this.f35418v0.stopService();
    }

    @Override // com.mgsim.common.fragment.a
    public void v0(BackHandledFragment backHandledFragment) {
        this.U0 = backHandledFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void w1(int i2) {
        this.f35425z = AccountUtil_.getInstance_(this.f35421x).getAccountData();
        try {
            VipMoneyRequest vipMoneyRequest = new VipMoneyRequest();
            vipMoneyRequest.setMonth(i2);
            vipMoneyRequest.setToken(this.f35425z.getToken());
            vipMoneyRequest.setUid(this.f35425z.getUid());
            AccountResultMainBean<CreateVipData> w3 = this.f35413t.w(vipMoneyRequest.getParams());
            dismissLoadingDialog();
            if (w3 != null) {
                if (w3.getError() == 0) {
                    CreateVipData data = w3.getData();
                    data.setMonth(i2);
                    n2(data);
                } else if (w3.getError() == 701) {
                    this.A = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.f35421x, 0, 2);
                }
            }
        } catch (Exception unused) {
            dismissLoadingDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x1() {
        this.f35402n0.b();
        this.f35402n0.a("正在上传图片请稍候");
        this.f35402n0.setCancelable(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void y1(GameRoom gameRoom, String str) {
        this.f35418v0.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_ARENAMAIN, gameRoom.getRoomId(), str, gameRoom.getElite()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void z1(String str) {
        this.f35418v0.f(ArenaRequestFactory.searchRoomById(ArenaConstants.REGISTER_TYPE_ARENAMAIN, Integer.parseInt(str)));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(PapayResult papayResult) {
        if (papayResult != null) {
            int status = papayResult.getStatus();
            if (status == 1) {
                this.f35399l.w("javascript:papaPayResult(5000)");
            } else if (status == 2) {
                this.f35399l.w("javascript:papaPayResult(5001)");
            } else if (status == 3) {
                this.f35399l.w("javascript:papaPayResult(5002)");
            } else if (status != 4) {
            } else {
                this.f35399l.w("javascript:papaPayResult(5003)");
            }
        }
    }
}
