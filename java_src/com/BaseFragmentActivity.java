package com;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.p0;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.z1;
import com.join.mgps.activity.GameMainActivity3_;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.dialog.d;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
/* loaded from: classes2.dex */
public class BaseFragmentActivity extends FragmentActivity {
    private o broadcasExt;
    View contentView;
    Dialog dialogU;
    String fialePath;
    String gameid;
    GestureDetector gestureDetector;
    PopupWindow popupWindow;
    q recver;
    private r time;
    private Handler mHandler = new Handler();
    boolean hasdestroyed = false;
    boolean isfirst = true;
    boolean isInBackground = false;
    long lastShowPopTime = 0;
    boolean isSo = false;
    AlertDialog.Builder dialog = null;
    private Handler handlerx = new m();
    private final IntentFilter intentFilter12_ = new IntentFilter();
    private final BroadcastReceiver onReciviedReceiver_ = new n();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f9184a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f9185b;

        a(Intent intent, Context context) {
            this.f9184a = intent;
            this.f9185b = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            BaseFragmentActivity.this.getUNzipPermiss(this.f9184a.getStringExtra("gameId"), BaseFragmentActivity.this);
            com.papa.sim.statistic.p.l(this.f9185b).K1(Event.Unzip_getpermission, new Ext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f9187a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f9188b;

        b(Intent intent, Context context) {
            this.f9187a = intent;
            this.f9188b = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            BaseFragmentActivity.this.setUnzipFailedStatus(this.f9187a.getStringExtra("gameId"));
            com.papa.sim.statistic.p.l(this.f9188b).K1(Event.Unzip_cancelpermission, new Ext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements w2.g<com.tbruyelle.rxpermissions2.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9190a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f9191b;

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
                intent.setData(Uri.fromParts("package", BaseFragmentActivity.this.getPackageName(), null));
                BaseFragmentActivity.this.startActivity(intent);
            }
        }

        c(Context context, String str) {
            this.f9190a = context;
            this.f9191b = str;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (ContextCompat.checkSelfPermission(this.f9190a, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                    com.papa.sim.statistic.p.l(this.f9190a).K1(Event.Unzip_permissionsuccess, new Ext());
                    DownloadTask B = g1.f.G().B(this.f9191b);
                    if (B != null) {
                        if (Integer.parseInt(B.getPlugin_num()) == ConstantIntEnum.MGAME.value()) {
                            com.join.android.app.common.servcie.a.e().r(this.f9190a, B, false);
                        } else {
                            com.join.android.app.common.servcie.a.e().r(this.f9190a, B, true);
                        }
                    }
                }
            } else if (bVar.f59249c) {
                BaseFragmentActivity.this.setUnzipFailedStatus(this.f9191b);
            } else {
                BaseFragmentActivity.this.setUnzipFailedStatus(this.f9191b);
                BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
                Dialog dialog = baseFragmentActivity.dialogU;
                if (dialog == null) {
                    baseFragmentActivity.dialog = new AlertDialog.Builder(baseFragmentActivity, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                BaseFragmentActivity.this.dialog.setTitle("提示");
                if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    BaseFragmentActivity.this.dialog.setMessage("请去设置中开启权限");
                } else {
                    BaseFragmentActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
                }
                BaseFragmentActivity.this.dialog.setPositiveButton("去打开", new a());
                BaseFragmentActivity baseFragmentActivity2 = BaseFragmentActivity.this;
                baseFragmentActivity2.dialogU = baseFragmentActivity2.dialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements d.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f9194a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f9195b;

        d(com.join.mgps.dialog.d dVar, String str) {
            this.f9194a = dVar;
            this.f9195b = str;
        }

        @Override // com.join.mgps.dialog.d.f
        public void a() {
            ((CommonService_.u1) CommonService_.d2(this.f9194a.getContext()).extra("gameDownloadDetail2", this.f9195b)).a();
            this.f9194a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements d.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.d f9197a;

        e(com.join.mgps.dialog.d dVar) {
            this.f9197a = dVar;
        }

        @Override // com.join.mgps.dialog.d.h
        public void a() {
            this.f9197a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9199a;

        f(String str) {
            this.f9199a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            baseFragmentActivity.popupWindow = null;
            if (baseFragmentActivity.isSo) {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.enterSoStartMyGame, new Ext().setGameId(this.f9199a));
            } else {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.enterSinStartMyGame, new Ext().setGameId(this.f9199a));
            }
            IntentUtil.getInstance().goMyGameManagerActivity(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f9201a;

        g(DownloadTask downloadTask) {
            this.f9201a = downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseFragmentActivity.this.isSo) {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSoGameStart, new Ext().setGameId(this.f9201a.getCrc_link_type_val()));
            } else {
                com.papa.sim.statistic.p.l(view.getContext()).K1(Event.onclickSinGameStart, new Ext().setGameId(this.f9201a.getCrc_link_type_val()));
            }
            UtilsMy.c3(view.getContext(), this.f9201a);
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity.this.popupWindow = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseFragmentActivity.this.popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements View.OnTouchListener {
        i() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            BaseFragmentActivity.this.gestureDetector.onTouchEvent(motionEvent);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f9205a;

        j(int i2) {
            this.f9205a = i2;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            if (motionEvent.getX() - motionEvent2.getX() <= this.f9205a && motionEvent2.getX() - motionEvent.getX() <= this.f9205a && motionEvent.getY() - motionEvent2.getY() <= this.f9205a) {
                return motionEvent2.getY() - motionEvent.getY() > ((float) this.f9205a);
            }
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            baseFragmentActivity.popupWindow = null;
            if (baseFragmentActivity.isSo) {
                com.papa.sim.statistic.p.l(baseFragmentActivity.contentView.getContext()).K1(Event.exitSoGameStart, new Ext().setGameId(BaseFragmentActivity.this.gameid));
            } else {
                com.papa.sim.statistic.p.l(baseFragmentActivity.contentView.getContext()).K1(Event.exitSinGameStart, new Ext().setGameId(BaseFragmentActivity.this.gameid));
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    class k implements w2.g<com.tbruyelle.rxpermissions2.b> {
        k() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            boolean z3 = bVar.f59248b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements w2.g<com.tbruyelle.rxpermissions2.b> {

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
                intent.setData(Uri.fromParts("package", BaseFragmentActivity.this.getPackageName(), null));
                BaseFragmentActivity.this.startActivity(intent);
            }
        }

        l() {
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
            } else if (bVar.f59249c) {
            } else {
                BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
                Dialog dialog = baseFragmentActivity.dialogU;
                if (dialog == null) {
                    baseFragmentActivity.dialog = new AlertDialog.Builder(baseFragmentActivity, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                BaseFragmentActivity.this.dialog.setTitle("提示");
                if (!bVar.f59247a.equals("android.permission.WRITE_EXTERNAL_STORAGE") && !bVar.f59247a.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    BaseFragmentActivity.this.dialog.setMessage("请去设置中开启权限");
                } else {
                    BaseFragmentActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
                }
                BaseFragmentActivity.this.dialog.setPositiveButton("去打开", new a());
                BaseFragmentActivity baseFragmentActivity2 = BaseFragmentActivity.this;
                baseFragmentActivity2.dialogU = baseFragmentActivity2.dialog.show();
            }
        }
    }

    /* loaded from: classes2.dex */
    class m extends Handler {
        m() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                int i2 = message.what;
                if (i2 == 1) {
                    com.join.android.app.common.utils.a.g0(BaseFragmentActivity.this).u(BaseFragmentActivity.this, new File(BaseFragmentActivity.this.fialePath));
                } else if (i2 == 3) {
                    try {
                        BaseFragmentActivity.this.showDownFinish((String) message.obj);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } else {
                    BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
                    if (baseFragmentActivity.isInBackground) {
                        return;
                    }
                    baseFragmentActivity.getPermison((p) message.obj);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes2.dex */
    class n extends BroadcastReceiver {
        n() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (f1.a.f65489m0.equals(intent.getAction())) {
                BaseFragmentActivity.this.onRecivied(intent, context);
                return;
            }
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            if (baseFragmentActivity.isInBackground) {
                return;
            }
            baseFragmentActivity.showDownLoadVersionDialog(intent.getStringExtra("gameid"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o extends BroadcastReceiver {
        o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BaseFragmentActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p {

        /* renamed from: a  reason: collision with root package name */
        public String f9213a;

        /* renamed from: b  reason: collision with root package name */
        public String f9214b;

        p() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class q extends BroadcastReceiver {
        q() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t0.c(" permissxx   getpermiss");
            if (intent == null) {
                return;
            }
            if (intent.getAction().equals("com.wufun.get.downFinish")) {
                BaseFragmentActivity.this.showDownFinishPre(intent.getStringExtra("gameid"));
                return;
            }
            p pVar = new p();
            pVar.f9213a = intent.getStringExtra("permission");
            pVar.f9214b = intent.getStringExtra("filePath");
            Message message = new Message();
            message.what = 2;
            message.obj = pVar;
            BaseFragmentActivity.this.handlerx.sendMessageDelayed(message, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r extends CountDownTimer {
        public r(long j4, long j5) {
            super(j4, j5);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            if (baseFragmentActivity.popupWindow == null || baseFragmentActivity == null || baseFragmentActivity.isFinishing()) {
                return;
            }
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity.this.popupWindow = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUNzipPermiss(String str, Context context) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r("android.permission.WRITE_EXTERNAL_STORAGE").B5(new c(context, str));
        } catch (Exception unused) {
        }
    }

    private void initPopData(String str) {
        View findViewById = this.contentView.findViewById(R.id.main);
        this.gameid = str;
        findViewById.setOnClickListener(new f(str));
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
        textView2.setOnClickListener(new g(B));
        imageView.setOnClickListener(new h());
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
        this.dialog.setPositiveButton("去获取", new a(intent, context));
        this.dialog.setNegativeButton("取消", new b(intent, context));
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
        DownloadTask B = g1.f.G().B(str);
        boolean z3 = B != null && d2.i(B.getMod_info());
        if (!this.isInBackground || z3) {
            try {
                if (System.currentTimeMillis() - this.lastShowPopTime <= 2000 || (MApplication.f9223q.getActivity() instanceof ModGameIndexActivity) || (MApplication.f9223q.getActivity() instanceof GameMainActivity3_) || (MApplication.f9223q.getActivity() instanceof NewArenaMainActivty_)) {
                    return;
                }
                if (!z3) {
                    r rVar = this.time;
                    if (rVar != null) {
                        rVar.onFinish();
                    } else {
                        this.time = new r(com.join.mgps.data.c.f47286a, 1000L);
                    }
                    this.time.start();
                }
                if (z3) {
                    a0.c0(this).I(str);
                    return;
                }
                PopupWindow popupWindow = this.popupWindow;
                if (popupWindow != null) {
                    if (!popupWindow.isShowing() && System.currentTimeMillis() - this.lastShowPopTime > 5000) {
                        t0.d("popwindow", "33333333333");
                        PopupWindow popupWindow2 = this.popupWindow;
                        View view = this.contentView;
                        com.join.android.app.common.utils.j.n(this);
                        popupWindow2.showAtLocation(view, 48, 0, com.join.android.app.common.utils.j.v(this));
                        this.lastShowPopTime = System.currentTimeMillis();
                    }
                } else {
                    showPopwindow();
                }
                initPopData(str);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownFinishPre(String str) {
        Message message = new Message();
        message.obj = str;
        message.what = 3;
        this.handlerx.sendMessageDelayed(message, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownLoadVersionDialog(String str) {
        com.join.mgps.dialog.d dVar = new com.join.mgps.dialog.d(this, R.style.MyDialog);
        dVar.e(new d(dVar, str));
        dVar.g(new e(dVar));
        dVar.h("该游戏在安卓" + Build.VERSION.RELEASE + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
        dVar.show();
    }

    private void showPopwindow() {
        this.contentView = LayoutInflater.from(this).inflate(R.layout.appdown_finish_dialog_layout, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(this.contentView, -1, -2);
        this.popupWindow = popupWindow;
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        this.popupWindow.setOutsideTouchable(false);
        this.popupWindow.setTouchable(true);
        this.popupWindow.setAnimationStyle(R.style.ClickToast);
        this.popupWindow.setTouchInterceptor(new i());
        int dimensionPixelOffset = this.contentView.getContext().getResources().getDimensionPixelOffset(R.dimen.wdp30);
        if (this.gestureDetector == null) {
            this.gestureDetector = new GestureDetector(this.contentView.getContext(), new j(dimensionPixelOffset));
        }
        t0.d("popwindow", "4444444444444 1");
        if (this.popupWindow.isShowing() || System.currentTimeMillis() - this.lastShowPopTime <= 5000) {
            return;
        }
        PopupWindow popupWindow2 = this.popupWindow;
        View view = this.contentView;
        com.join.android.app.common.utils.j.n(this);
        popupWindow2.showAtLocation(view, 48, 0, com.join.android.app.common.utils.j.v(this));
        this.lastShowPopTime = System.currentTimeMillis();
        t0.d("popwindow", "4444444444444 2");
    }

    public boolean checkPermiss(String str) {
        return ContextCompat.checkSelfPermission(this, str) == 0;
    }

    public void getPermison(String str) {
        p pVar = new p();
        pVar.f9213a = str;
        getPermison(pVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.hasdestroyed = false;
        this.broadcasExt = new o();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f1.a.f65514z);
        registerReceiver(this.broadcasExt, intentFilter);
        try {
            this.intentFilter12_.addAction(f1.a.f65489m0);
            this.intentFilter12_.addAction(f1.a.f65491n0);
            registerReceiver(this.onReciviedReceiver_, this.intentFilter12_);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.recver = new q();
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.wufun.get.permission");
        intentFilter2.addAction("com.wufun.get.downFinish");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.recver, intentFilter2);
        com.join.mgps.va.overmind.e.p().R(getIntent());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        PopupWindow popupWindow;
        try {
            super.onDestroy();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (!isFinishing() && (popupWindow = this.popupWindow) != null) {
            popupWindow.dismiss();
            this.popupWindow = null;
        }
        this.hasdestroyed = true;
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.recver);
        try {
            unregisterReceiver(this.broadcasExt);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        try {
            BroadcastReceiver broadcastReceiver = this.onReciviedReceiver_;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
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
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && !this.hasdestroyed) {
            try {
                popupWindow.dismiss();
                this.popupWindow = null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        this.isInBackground = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        DownloadTask B;
        DownloadTask B2;
        super.onResume();
        boolean z3 = false;
        this.isInBackground = false;
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            p0.a(this);
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.d
            @Override // java.lang.Runnable
            public final void run() {
                BaseFragmentActivity.this.lambda$onResume$0();
            }
        }, 500L);
        PrefDef_ prefDef_ = new PrefDef_(this);
        if (this.isfirst) {
            this.isfirst = false;
            return;
        }
        String d4 = prefDef_.lastInstallApp().d();
        if (d2.i(d4) && (B2 = g1.f.G().B(d4)) != null && B2.getStatus() == 11 && !B2.getCrc_link_type_val().equals(new PrefDef_(this).lastShowTOUTIAOAd().d()) && !com.join.android.app.common.utils.a.g0(this).c(this, B2.getPackageName()) && !(MApplication.f9223q.getActivity() instanceof ModGameIndexActivity)) {
            UnzipFailedDialog_.intent(this).gameId(B2.getCrc_link_type_val()).from(2).start();
            z3 = true;
        }
        if (!z3) {
            String d5 = prefDef_.lastInstallAppFinish().d();
            if (d2.i(d5) && (B = g1.f.G().B(d5)) != null) {
                String packageName = B.getPackageName();
                if (d2.i(d5) && !d2.h(packageName) && com.join.mgps.Util.g.d(this, packageName) && !B.getTips().contains("网游")) {
                    showDownFinishPre(d5);
                    prefDef_.lastInstallAppFinish().g("");
                }
            }
        }
        UtilsMy.a3(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        String str = Build.BRAND;
        if (!"vivo".equals(str.toLowerCase()) && !"oppo".equals(str.toLowerCase())) {
            z1.o(this, -1, true);
            return;
        }
        z1.o(this, -8421505, true);
        z1.c(this, z1.d(this));
    }

    public boolean checkPermiss(String... strArr) {
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(this, str) != 0) {
                return false;
            }
        }
        return true;
    }

    public void getPermison(String... strArr) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(strArr).B5(new k());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        String str = Build.BRAND;
        if (!"vivo".equals(str.toLowerCase()) && !"oppo".equals(str.toLowerCase())) {
            z1.o(this, -1, true);
            return;
        }
        z1.o(this, -8421505, true);
        z1.c(this, z1.d(this));
    }

    public void getPermison(p pVar) {
        t0.c(" permissxx   getpermiss2");
        if (pVar == null) {
            return;
        }
        String str = pVar.f9213a;
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return;
        }
        if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
            String str2 = pVar.f9214b;
            if (str2 != null) {
                this.fialePath = str2;
            }
            this.handlerx.sendEmptyMessage(1);
            return;
        }
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(str).B5(new l());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
