package com;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.db.DatabaseHelper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.b0;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.p0;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.z1;
import com.join.mgps.activity.GameMainActivity3_;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.w;
import com.join.mgps.dialog.d;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.join.mgps.wrapper.SystemUiHider.a;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
import java.util.Observable;
import java.util.Observer;
/* loaded from: classes2.dex */
public class BaseAppCompatActivity extends AppCompatActivity implements Observer, LoadingLayout.b, LoadingLayout.a {
    private EmuOutResultReceiver adResultReceiver;
    private w broadcasExt;
    View contentView;
    Dialog dialogU;
    String fialePath;
    String gameid;
    GestureDetector gestureDetector;
    private Handler hideHandler;
    private Runnable hideRunnable;
    private com.join.android.app.common.dialog.e loading;
    protected Handler mHandler;
    protected LoadingLayout mLoadingLayout;
    private NetBroadcastReceiver netBroadcastReceiver;
    PopupWindow popupWindow;
    int rangeBottom;
    int rangeTop;
    y recver;
    private z time;
    protected com.join.mgps.wrapper.SystemUiHider.a uiHider;
    protected String loadingHintMsg = null;
    boolean isfirst = true;
    protected boolean isBackHome = false;
    protected boolean hasDialog = false;
    protected boolean canShowFeedBack = true;
    boolean hasdestroyed = false;
    private DatabaseHelper databaseHelper = null;
    private boolean fullScreenFlag = false;
    int fullScreenCfg = 0;
    boolean isInBackground = false;
    long lastShowPopTime = 0;
    boolean isSo = false;
    AlertDialog.Builder dialog = null;
    private Handler handlerx = new g();
    long timeLastDe = 0;
    private final IntentFilter intentFilter12_ = new IntentFilter();
    private final BroadcastReceiver onReciviedReceiver_ = new h();
    int REQUEST_CODE = 10101;

    /* loaded from: classes2.dex */
    public class EmuOutResultReceiver extends BroadcastReceiver {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
                if (com.join.android.app.common.utils.j.w() == null || !TextUtils.equals(com.join.android.app.common.utils.j.w().getLocalClassName(), BaseAppCompatActivity.this.getLocalClassName())) {
                    return;
                }
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                baseAppCompatActivity.hasDialog = true;
                baseAppCompatActivity.showOnlineCouponDialog();
            }
        }

        public EmuOutResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            intent.getAction();
            new Thread(new a()).start();
        }
    }

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9141a;

        a(String str) {
            this.f9141a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.d("popwindow", "onClick main dismiss");
            BaseAppCompatActivity.this.popupWindow.dismiss();
            if (BaseAppCompatActivity.this.isSo) {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.enterSoStartMyGame, new Ext().setGameId(this.f9141a));
            } else {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.enterSinStartMyGame, new Ext().setGameId(this.f9141a));
            }
            IntentUtil.getInstance().goMyGameManagerActivity(view.getContext());
        }
    }

    /* loaded from: classes2.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f9143a;

        b(DownloadTask downloadTask) {
            this.f9143a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseAppCompatActivity.this.isSo) {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSoGameStart, new Ext().setGameId(this.f9143a.getCrc_link_type_val()));
            } else {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f9143a.getCrc_link_type_val()));
            }
            UtilsMy.c3(view.getContext(), this.f9143a);
            BaseAppCompatActivity.this.popupWindow.dismiss();
            t0.d("popwindow", "onClick ok dismiss");
        }
    }

    /* loaded from: classes2.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseAppCompatActivity.this.popupWindow.dismiss();
            t0.d("popwindow", "onClick cancle dismiss");
        }
    }

    /* loaded from: classes2.dex */
    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            BaseAppCompatActivity.this.gestureDetector.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class e extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f9147a;

        e(int i2) {
            this.f9147a = i2;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            if (motionEvent.getX() - motionEvent2.getX() <= this.f9147a && motionEvent2.getX() - motionEvent.getX() <= this.f9147a && motionEvent.getY() - motionEvent2.getY() <= this.f9147a) {
                return motionEvent2.getY() - motionEvent.getY() > ((float) this.f9147a);
            }
            BaseAppCompatActivity.this.popupWindow.dismiss();
            BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
            if (baseAppCompatActivity.isSo) {
                com.papa.sim.statistic.p.l(baseAppCompatActivity.contentView.getContext()).K1(Event.exitSoGameStart, new Ext().setGameId(BaseAppCompatActivity.this.gameid));
            } else {
                com.papa.sim.statistic.p.l(baseAppCompatActivity.contentView.getContext()).K1(Event.exitSinGameStart, new Ext().setGameId(BaseAppCompatActivity.this.gameid));
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements w2.g<com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", BaseAppCompatActivity.this.getPackageName(), null));
                BaseAppCompatActivity.this.startActivity(intent);
            }
        }

        f() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (bVar.f59247a.equals("android.permission.READ_PHONE_STATE")) {
                    String i2 = com.join.android.app.common.utils.j.n(MApplication.f9223q).i();
                    MApplication.f9225r = i2;
                    try {
                        MApplication.f9225r = com.join.mgps.Util.a.d(i2, "");
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            } else if (bVar.f59249c || bVar.f59247a.equals("android.permission.READ_PHONE_STATE")) {
            } else {
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                Dialog dialog = baseAppCompatActivity.dialogU;
                if (dialog == null) {
                    baseAppCompatActivity.dialog = new AlertDialog.Builder(baseAppCompatActivity, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                BaseAppCompatActivity.this.dialog.setTitle("提示");
                if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    BaseAppCompatActivity.this.dialog.setMessage("请去设置中开启权限");
                } else {
                    BaseAppCompatActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
                }
                BaseAppCompatActivity.this.dialog.setPositiveButton("去打开", new a());
                BaseAppCompatActivity baseAppCompatActivity2 = BaseAppCompatActivity.this;
                baseAppCompatActivity2.dialogU = baseAppCompatActivity2.dialog.show();
            }
        }
    }

    /* loaded from: classes2.dex */
    class g extends Handler {
        g() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                int i2 = message.what;
                if (i2 == 1) {
                    com.join.android.app.common.utils.a.g0(BaseAppCompatActivity.this).u(BaseAppCompatActivity.this, new File(BaseAppCompatActivity.this.fialePath));
                } else if (i2 == 3) {
                    try {
                        BaseAppCompatActivity.this.showDownFinish((String) message.obj);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                    if (baseAppCompatActivity.isInBackground) {
                        return;
                    }
                    baseAppCompatActivity.getPermison((x) message.obj);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes2.dex */
    class h extends BroadcastReceiver {
        h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            if (f1.a.f65489m0.equals(intent.getAction())) {
                BaseAppCompatActivity.this.onRecivied(intent, context);
            } else if (f1.a.M.equals(intent.getAction())) {
                if (BaseAppCompatActivity.this.isInBackground) {
                    return;
                }
                final String stringExtra = intent.getStringExtra("plugNumber");
                final String stringExtra2 = intent.getStringExtra("gameZipPath");
                final String stringExtra3 = intent.getStringExtra("PackageName");
                final String stringExtra4 = intent.getStringExtra("romType");
                String stringExtra5 = intent.getStringExtra("gameName");
                com.join.mgps.customview.w wVar = new com.join.mgps.customview.w(context);
                wVar.b(new w.a() { // from class: com.c
                    @Override // com.join.mgps.customview.w.a
                    public final void a(String str) {
                        UtilsMy.z0(context, stringExtra, stringExtra2, stringExtra3, stringExtra4);
                    }
                });
                long currentTimeMillis = System.currentTimeMillis();
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                if (currentTimeMillis - baseAppCompatActivity.timeLastDe > 2000) {
                    wVar.c(baseAppCompatActivity.getWindow().getDecorView().getRootView(), stringExtra5);
                    BaseAppCompatActivity.this.timeLastDe = System.currentTimeMillis();
                }
            } else {
                BaseAppCompatActivity baseAppCompatActivity2 = BaseAppCompatActivity.this;
                if (baseAppCompatActivity2.isInBackground) {
                    return;
                }
                baseAppCompatActivity2.showDownLoadVersionDialog(intent.getStringExtra("gameid"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f9153a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f9154b;

        i(Intent intent, Context context) {
            this.f9153a = intent;
            this.f9154b = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            BaseAppCompatActivity.this.getUNzipPermiss(this.f9153a.getStringExtra("gameId"), BaseAppCompatActivity.this);
            com.papa.sim.statistic.p.l(this.f9154b).K1(Event.Unzip_getpermission, new Ext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f9156a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f9157b;

        j(Intent intent, Context context) {
            this.f9156a = intent;
            this.f9157b = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            BaseAppCompatActivity.this.setUnzipFailedStatus(this.f9156a.getStringExtra("gameId"));
            com.papa.sim.statistic.p.l(this.f9157b).K1(Event.Unzip_cancelpermission, new Ext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k implements NetBroadcastReceiver.a {
        k() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int i2) {
            BaseAppCompatActivity.this.onNetworkChanged(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements w2.g<com.tbruyelle.rxpermissions2.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9160a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f9161b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", BaseAppCompatActivity.this.getPackageName(), null));
                BaseAppCompatActivity.this.startActivity(intent);
            }
        }

        l(Context context, String str) {
            this.f9160a = context;
            this.f9161b = str;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (ContextCompat.checkSelfPermission(this.f9160a, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                    com.papa.sim.statistic.p.l(this.f9160a).K1(Event.Unzip_permissionsuccess, new Ext());
                    DownloadTask B = g1.f.G().B(this.f9161b);
                    if (B != null) {
                        if (Integer.parseInt(B.getPlugin_num()) == ConstantIntEnum.MGAME.value()) {
                            com.join.android.app.common.servcie.a.e().r(this.f9160a, B, false);
                        } else {
                            com.join.android.app.common.servcie.a.e().r(this.f9160a, B, true);
                        }
                    }
                }
            } else if (bVar.f59249c) {
                BaseAppCompatActivity.this.setUnzipFailedStatus(this.f9161b);
            } else {
                BaseAppCompatActivity.this.setUnzipFailedStatus(this.f9161b);
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                Dialog dialog = baseAppCompatActivity.dialogU;
                if (dialog == null) {
                    baseAppCompatActivity.dialog = new AlertDialog.Builder(baseAppCompatActivity, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                BaseAppCompatActivity.this.dialog.setTitle("提示");
                if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    BaseAppCompatActivity.this.dialog.setMessage("请去设置中开启权限");
                } else {
                    BaseAppCompatActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
                }
                BaseAppCompatActivity.this.dialog.setPositiveButton("去打开", new a());
                BaseAppCompatActivity baseAppCompatActivity2 = BaseAppCompatActivity.this;
                baseAppCompatActivity2.dialogU = baseAppCompatActivity2.dialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements d.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f9164a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f9165b;

        m(com.join.mgps.dialog.d dVar, String str) {
            this.f9164a = dVar;
            this.f9165b = str;
        }

        @Override // com.join.mgps.dialog.d.f
        public void a() {
            ((CommonService_.u1) CommonService_.d2(this.f9164a.getContext()).extra("gameDownloadDetail2", this.f9165b)).a();
            this.f9164a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class n implements d.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f9167a;

        n(com.join.mgps.dialog.d dVar) {
            this.f9167a = dVar;
        }

        @Override // com.join.mgps.dialog.d.h
        public void a() {
            this.f9167a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    /* loaded from: classes2.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    /* loaded from: classes2.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.i();
            }
        }
    }

    /* loaded from: classes2.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    /* loaded from: classes2.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseAppCompatActivity.this.uiHider.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class u implements a.b {
        u() {
        }

        @Override // com.join.mgps.wrapper.SystemUiHider.a.b
        public void onVisibilityChange(boolean z3) {
            if (z3) {
                BaseAppCompatActivity.this.hideUiDelayed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class v implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f9176a;

        v(View view) {
            this.f9176a = view;
        }

        private boolean a(View view) {
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            return ((float) (view.getBottom() - rect.bottom)) > view.getResources().getDisplayMetrics().density * 100.0f;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (a(this.f9176a)) {
                BaseAppCompatActivity.this.showKeyBoardHandler();
            } else {
                BaseAppCompatActivity.this.hideKeyBoardHandler();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class w extends BroadcastReceiver {
        w() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BaseAppCompatActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class x {

        /* renamed from: a  reason: collision with root package name */
        public String f9179a;

        /* renamed from: b  reason: collision with root package name */
        public String f9180b;

        x() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class y extends BroadcastReceiver {
        y() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t0.c(" permissxx   getpermiss");
            if (intent == null) {
                return;
            }
            if (intent.getAction().equals("com.wufun.get.downFinish")) {
                BaseAppCompatActivity.this.showDownFinishPre(intent.getStringExtra("gameid"));
                return;
            }
            x xVar = new x();
            xVar.f9179a = intent.getStringExtra("permission");
            xVar.f9180b = intent.getStringExtra("filePath");
            Message message = new Message();
            message.what = 2;
            message.obj = xVar;
            BaseAppCompatActivity.this.handlerx.sendMessageDelayed(message, 500L);
        }
    }

    /* loaded from: classes2.dex */
    class z extends CountDownTimer {
        public z(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            try {
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                if (baseAppCompatActivity.popupWindow == null || baseAppCompatActivity == null || baseAppCompatActivity.isFinishing()) {
                    return;
                }
                t0.d("popwindow", "onFinish TimeCount dismiss");
                BaseAppCompatActivity.this.popupWindow.dismiss();
                BaseAppCompatActivity.this.popupWindow = null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    private void clearHiderListener() {
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            aVar.d(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUNzipPermiss(String str, Context context) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r("android.permission.WRITE_EXTERNAL_STORAGE").B5(new l(context, str));
        } catch (Exception unused) {
        }
    }

    private void initPopData(String str) {
        this.gameid = str;
        this.contentView.findViewById(R.id.main).setOnClickListener(new a(str));
        TextView textView = (TextView) this.contentView.findViewById(R.id.title);
        TextView textView2 = (TextView) this.contentView.findViewById(R.id.ok);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) this.contentView.findViewById(R.id.icon);
        TextView textView3 = (TextView) this.contentView.findViewById(R.id.info);
        ImageView imageView = (ImageView) this.contentView.findViewById(R.id.cancle);
        DownloadTask B = g1.f.G().B(str);
        if (Dtype.apk.name().equals(B.getFileType())) {
            textView3.setText("下载完成");
            this.isSo = true;
            com.papa.sim.statistic.p.l(this).K1(Event.showSoGameStart, new Ext().setGameId(B.getCrc_link_type_val()));
        } else {
            com.papa.sim.statistic.p.l(this).K1(Event.showSinGameStart, new Ext().setGameId(B.getCrc_link_type_val()));
            this.isSo = false;
            textView3.setText("安装完成");
        }
        MyImageLoader.h(simpleDraweeView, B.getPortraitURL());
        textView.setText(B.getShowName());
        textView2.setText("开始游戏");
        textView2.setOnClickListener(new b(B));
        imageView.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$0() {
        com.join.mgps.Util.o.e(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRecivied(Intent intent, Context context) {
        if (this.isInBackground) {
            return;
        }
        com.papa.sim.statistic.p.l(context).K1(Event.Unzip_nopermission, new Ext());
        Dialog dialog = this.dialogU;
        if (dialog == null) {
            this.dialog = new AlertDialog.Builder(context, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.dialog.setTitle("解压失败");
        this.dialog.setMessage("未获取到存储权限");
        this.dialog.setPositiveButton("去获取", new i(intent, context));
        this.dialog.setNegativeButton("取消", new j(intent, context));
        this.dialogU = this.dialog.show();
    }

    @TargetApi(19)
    private void setTranslucentStatus(boolean z3) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z3) {
            attributes.flags |= 67108864;
        } else {
            attributes.flags &= -67108865;
        }
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUnzipFailedStatus(String str) {
        if (TextUtils.equals(str, String.valueOf(ConstantIntEnum.PS2.value()))) {
            DownloadTask B = g1.f.G().B(str);
            B.setStatus(13);
            g1.f.G().f0(B, B.getStatus());
            com.join.android.app.common.servcie.a.e().i(B);
            c0.a().c(new com.join.mgps.event.l(B, B.getStatus()));
        }
    }

    public static void setWindowStatusBarColor(Activity activity, int i2) {
        z1.q(activity, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownFinish(String str) {
        if (this.isInBackground) {
            return;
        }
        try {
            if ((MApplication.f9223q.getActivity() instanceof ModGameIndexActivity) || (MApplication.f9223q.getActivity() instanceof GameMainActivity3_) || (MApplication.f9223q.getActivity() instanceof NewArenaMainActivty_)) {
                return;
            }
            a0.c0(this).I(str);
            this.hasDialog = true;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownFinishPre(String str) {
        Message message = new Message();
        message.obj = str;
        message.what = 3;
        this.handlerx.sendMessageDelayed(message, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownLoadVersionDialog(String str) {
        com.join.mgps.dialog.d dVar = new com.join.mgps.dialog.d(this, R.style.MyDialog);
        dVar.e(new m(dVar, str));
        dVar.g(new n(dVar));
        dVar.h("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
        dVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOnlineCouponDialog() {
    }

    private void showPopwindow() {
        t0.d("popwindow", "22222222");
        this.contentView = LayoutInflater.from(this).inflate(R.layout.appdown_finish_dialog_layout, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(this.contentView, -1, -2);
        this.popupWindow = popupWindow;
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        this.popupWindow.setOutsideTouchable(false);
        this.popupWindow.setTouchable(true);
        this.popupWindow.setAnimationStyle(R.style.ClickToast);
        this.popupWindow.setTouchInterceptor(new d());
        int dimensionPixelOffset = this.contentView.getContext().getResources().getDimensionPixelOffset(R.dimen.wdp30);
        if (this.gestureDetector == null) {
            this.gestureDetector = new GestureDetector(this.contentView.getContext(), new e(dimensionPixelOffset));
        }
        t0.d("popwindow", "222 3333");
        if (this.popupWindow.isShowing() || System.currentTimeMillis() - this.lastShowPopTime <= 5000) {
            return;
        }
        PopupWindow popupWindow2 = this.popupWindow;
        View view = this.contentView;
        com.join.android.app.common.utils.j.n(this);
        popupWindow2.showAtLocation(view, 48, 0, com.join.android.app.common.utils.j.v(this));
        this.lastShowPopTime = System.currentTimeMillis();
        t0.d("popwindow", "3333");
    }

    private synchronized void updateHider() {
        int i2;
        try {
            boolean z3 = this.fullScreenFlag;
            if (z3) {
                if (z3) {
                    i2 = 6;
                } else {
                    i2 = com.join.mgps.wrapper.a.f52423b < 11 ? 3 : 1;
                }
                this.fullScreenCfg = i2;
            } else {
                this.fullScreenCfg = 0;
            }
            if (this.fullScreenCfg != 0) {
                this.hideHandler = new Handler();
                this.hideRunnable = new t();
                com.join.mgps.wrapper.SystemUiHider.a a4 = com.join.mgps.wrapper.SystemUiHider.a.a(this, findViewById(16908290), this.fullScreenCfg);
                this.uiHider = a4;
                a4.e();
                this.uiHider.d(new u());
            }
            com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
            if (aVar != null && aVar.c()) {
                this.uiHider.b();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        showLoadingLayoutBase();
        loadDataBase();
    }

    public void createDB(String str) {
        g1.e.d(this).b(str);
    }

    public void dismissLoading() {
        com.join.android.app.common.dialog.e eVar = this.loading;
        if (eVar == null) {
            return;
        }
        try {
            eVar.dismiss();
        } catch (Exception unused) {
        }
    }

    public DatabaseHelper getHelper() {
        if (this.databaseHelper == null) {
            this.databaseHelper = g1.e.d(this).c();
        }
        return this.databaseHelper;
    }

    public int getLoadingLayoutResID() {
        return 0;
    }

    public int getLoadingMarginTop() {
        return b0.a(this, 48.0f);
    }

    void getPermison(x xVar) {
        t0.c(" permissxx   getpermiss2");
        if (xVar == null) {
            return;
        }
        String str = xVar.f9179a;
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return;
        }
        if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
            String str2 = xVar.f9180b;
            if (str2 != null) {
                this.fialePath = str2;
            }
            this.handlerx.sendEmptyMessage(1);
            return;
        }
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(str).B5(new f());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void hideKeyBoardHandler() {
    }

    public void hideLoadingLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new p());
        }
    }

    protected void hideUiDelayed() {
    }

    public boolean isHindeLoadingLayout() {
        return this.mLoadingLayout.e();
    }

    public void loadDataBase() {
    }

    @Override // com.join.mgps.customview.LoadingLayout.a
    public void noDataCallBack() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.broadcasExt == null) {
            this.broadcasExt = new w();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(f1.a.f65514z);
            registerReceiver(this.broadcasExt, intentFilter);
        }
        this.hasdestroyed = false;
        if (this.netBroadcastReceiver == null) {
            try {
                this.intentFilter12_.addAction(f1.a.f65489m0);
                this.intentFilter12_.addAction(f1.a.f65491n0);
                this.intentFilter12_.addAction(f1.a.M);
                registerReceiver(this.onReciviedReceiver_, this.intentFilter12_);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
            this.netBroadcastReceiver = netBroadcastReceiver;
            netBroadcastReceiver.a(new k());
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            registerReceiver(this.netBroadcastReceiver, intentFilter2);
        }
        setupKeyboardHandler(this);
        if (this.recver == null) {
            this.recver = new y();
            IntentFilter intentFilter3 = new IntentFilter();
            intentFilter3.addAction("com.wufun.get.permission");
            intentFilter3.addAction("com.wufun.get.downFinish");
            LocalBroadcastManager.getInstance(this).registerReceiver(this.recver, intentFilter3);
        }
        this.rangeTop = getResources().getDimensionPixelOffset(R.dimen.wdp200);
        this.rangeBottom = com.join.android.app.common.utils.j.n(this).k(this);
        if (this.adResultReceiver == null) {
            this.adResultReceiver = new EmuOutResultReceiver();
            IntentFilter intentFilter4 = new IntentFilter();
            intentFilter4.addAction(f1.a.U);
            intentFilter4.addAction(f1.a.F0);
            registerReceiver(this.adResultReceiver, intentFilter4);
        }
        com.join.mgps.va.overmind.e.p().R(getIntent());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler = null;
        }
        this.hasdestroyed = true;
        if (!isFinishing() && this.popupWindow != null) {
            t0.d("popwindow", "onDestroy  dismiss");
            this.popupWindow.dismiss();
            this.popupWindow = null;
        }
        unregisterReceiver(this.broadcasExt);
        unregisterReceiver(this.netBroadcastReceiver);
        unregisterReceiver(this.adResultReceiver);
        try {
            BroadcastReceiver broadcastReceiver = this.onReciviedReceiver_;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.recver);
        org.androidannotations.api.c.m(this).o(this);
        super.onDestroy();
    }

    public void onFavoriteChanged(int i2, boolean z3) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onNetworkChanged(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.join.mgps.va.overmind.e.p().R(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.popupWindow != null && !this.hasdestroyed) {
            try {
                t0.d("popwindow", "onPause  dismiss");
                this.popupWindow.dismiss();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        this.isInBackground = true;
        clearHiderListener();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (strArr != null) {
            try {
                if (strArr.length <= 0 || com.papa.sim.statistic.pref.b.j(this).k()) {
                    return;
                }
                for (String str : strArr) {
                    if (str.equals("android.permission.READ_PHONE_STATE")) {
                        com.papa.sim.statistic.pref.b.j(this).D(true);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        DownloadTask B;
        DownloadTask B2;
        super.onResume();
        this.hasDialog = false;
        t0.d("basappac", "onResume");
        this.isInBackground = false;
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            p0.a(this);
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.b
            @Override // java.lang.Runnable
            public final void run() {
                BaseAppCompatActivity.this.lambda$onResume$0();
            }
        }, 500L);
        org.androidannotations.api.c.m(this).r(this);
        if (this.isfirst) {
            this.isfirst = false;
            return;
        }
        PrefDef_ prefDef_ = new PrefDef_(this);
        String d4 = prefDef_.lastInstallApp().d();
        if (d2.i(d4) && (B2 = g1.f.G().B(d4)) != null && B2.getStatus() == 11 && !B2.getCrc_link_type_val().equals(new PrefDef_(this).lastShowTOUTIAOAd().d()) && !com.join.android.app.common.utils.a.g0(this).c(this, B2.getPackageName())) {
            if (!(MApplication.f9223q.getActivity() instanceof ModGameIndexActivity)) {
                UnzipFailedDialog_.intent(this).gameId(B2.getCrc_link_type_val()).from(2).start();
            }
            this.hasDialog = true;
        }
        if (!this.hasDialog) {
            String d5 = prefDef_.lastInstallAppFinish().d();
            if (d2.i(d5) && (B = g1.f.G().B(d5)) != null) {
                String packageName = B.getPackageName();
                if (d2.i(d5) && !d2.h(packageName) && com.join.mgps.Util.g.d(this, packageName) && !B.getTips().contains("网游")) {
                    showDownFinishPre(d5);
                    prefDef_.lastInstallAppFinish().g("");
                }
            }
        }
        if (!this.hasDialog && this.canShowFeedBack) {
            this.hasDialog = a0.c0(this).e(this);
        }
        UtilsMy.a3(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        dismissLoading();
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            if (z3 && this.fullScreenFlag) {
                aVar.b();
            } else {
                aVar.f();
            }
        }
        super.onWindowFocusChanged(z3);
    }

    void resolveStatusModeConflict() {
        Configuration configuration = getResources().getConfiguration();
        if (configuration != null && configuration.orientation == 2) {
            setSystemUiHide(true);
        } else {
            setSystemUiHide(false);
        }
        setStatusBar();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        setStatusBar();
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.mLoadingLayout = loadingLayout;
        String str = this.loadingHintMsg;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.mLoadingLayout.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.mLoadingLayout.setRefreshCallBackListener(this);
            this.mLoadingLayout.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public void setLoadingFailMsg(String str) {
        this.mLoadingLayout.setFailedMessage(str);
    }

    public void setLoadingHintMsg(String str) {
        this.loadingHintMsg = str;
    }

    public void setNoDataListener() {
        this.mLoadingLayout.setNoDataCallBackListener(this);
    }

    void setStatusBar() {
        String str = Build.BRAND;
        if (!"vivo".equals(str.toLowerCase()) && !"oppo".equals(str.toLowerCase())) {
            z1.o(this, -1, true);
            return;
        }
        z1.o(this, -8421505, true);
        z1.c(this, z1.d(this));
    }

    public void setSystemUiHide(boolean z3) {
        this.fullScreenFlag = z3;
        updateHider();
        if (this.uiHider != null) {
            findViewById(16908290).getSystemUiVisibility();
            if (this.fullScreenFlag) {
                if (this.uiHider.c()) {
                    this.uiHider.b();
                    return;
                }
                return;
            }
            if (!this.uiHider.c()) {
                this.uiHider.f();
            }
            this.uiHider.f();
        }
    }

    public void setTextViewNoData(String str) {
        LoadingLayout loadingLayout = this.mLoadingLayout;
        if (loadingLayout != null) {
            loadingLayout.setTextViewNoData(str);
        }
    }

    public void setmLoadingHintMsgLoading(String str) {
        this.mLoadingLayout.setLoadingHintMsg(str);
    }

    public void setupKeyboardHandler(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new v(decorView.getRootView()));
    }

    public void showFailLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new r());
        }
    }

    public void showKeyBoardHandler() {
    }

    public void showLoading() {
        com.join.android.app.common.dialog.e eVar = new com.join.android.app.common.dialog.e(this);
        this.loading = eVar;
        eVar.show();
    }

    public void showLoadingLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new o());
        }
    }

    public void showNoDataLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new q());
        }
    }

    public void showNoDataLayoutTwo() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new s());
        }
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        setStatusBar();
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.mLoadingLayout = loadingLayout;
        String str = this.loadingHintMsg;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.mLoadingLayout.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.mLoadingLayout.setRefreshCallBackListener(this);
            this.mLoadingLayout.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
        this.mHandler = new Handler(Looper.getMainLooper());
    }
}
