package com.join.mgps.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.join.mgps.service.SocketClientService;
import com.join.mgps.service.SocketServerService;
import java.io.File;
import java.util.Random;
import m.framework.ui.widget.asyncview.AsyncImageView;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.face_transfer_homepage_activity)
/* loaded from: classes.dex */
public class FaceTransferHomePageActivity extends BaseActivity {

    /* renamed from: u  reason: collision with root package name */
    private static final String f29695u = "FaceTransferHomePageActivity";
    @ViewById(R.id.title_textview)

    /* renamed from: a  reason: collision with root package name */
    TextView f29696a;
    @StringRes(R.string.title_face_transfer_homepage)

    /* renamed from: b  reason: collision with root package name */
    String f29697b;

    /* renamed from: c  reason: collision with root package name */
    Context f29698c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f29699d;

    /* renamed from: f  reason: collision with root package name */
    int f29701f;

    /* renamed from: h  reason: collision with root package name */
    private WifiUtils f29703h;

    /* renamed from: l  reason: collision with root package name */
    private ru.alexbykov.nopermission.b f29707l;

    /* renamed from: o  reason: collision with root package name */
    boolean f29710o;

    /* renamed from: r  reason: collision with root package name */
    boolean f29713r;

    /* renamed from: e  reason: collision with root package name */
    private String f29700e = "AndroidShare_";

    /* renamed from: g  reason: collision with root package name */
    private boolean f29702g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f29704i = false;

    /* renamed from: j  reason: collision with root package name */
    String f29705j = "";

    /* renamed from: k  reason: collision with root package name */
    boolean f29706k = false;

    /* renamed from: m  reason: collision with root package name */
    boolean f29708m = false;

    /* renamed from: n  reason: collision with root package name */
    boolean f29709n = false;

    /* renamed from: p  reason: collision with root package name */
    SocketServerService.a f29711p = null;

    /* renamed from: q  reason: collision with root package name */
    ServiceConnection f29712q = new c();

    /* renamed from: s  reason: collision with root package name */
    SocketClientService.a f29714s = null;

    /* renamed from: t  reason: collision with root package name */
    ServiceConnection f29715t = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ClickableSpan {
        a() {
        }

        private void a(View view) {
            if (view instanceof TextView) {
                ((TextView) view).setHighlightColor(FaceTransferHomePageActivity.this.getResources().getColor(AsyncImageView.DEFAULT_TRANSPARENT));
            }
        }

        private void b(Context context) {
            try {
                File file = new File(FaceTransferHomePageActivity.this.getPackageManager().getApplicationInfo(context.getPackageName(), 0).sourceDir);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("application/zip");
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                FaceTransferHomePageActivity.this.startActivity(Intent.createChooser(intent, "发送悟饭（蓝牙发送免流量）"));
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            Context context = view.getContext();
            a(view);
            b(context);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor("#3CA4FD"));
            textPaint.clearShadowLayer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements w2.g<com.tbruyelle.rxpermissions2.b> {
        b() {
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(com.tbruyelle.rxpermissions2.b bVar) throws Exception {
            if (bVar.f59248b) {
                if (FaceTransferHomePageActivity.this.checkPermiss("android.permission.CAMERA") && FaceTransferHomePageActivity.this.checkPermiss("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    FaceTransferHomePageActivity.this.startActivity(new Intent(FaceTransferHomePageActivity.this, FaceTransferScanQrCodeActivity.class));
                }
            } else if (bVar.f59249c) {
            } else {
                com.join.mgps.Util.a0.c0(FaceTransferHomePageActivity.this).W(FaceTransferHomePageActivity.this, bVar);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements ServiceConnection {
        c() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.join.mgps.Util.u0.e(FaceTransferHomePageActivity.f29695u, "----onServiceConnected---");
            if (iBinder instanceof SocketServerService.a) {
                FaceTransferHomePageActivity faceTransferHomePageActivity = FaceTransferHomePageActivity.this;
                faceTransferHomePageActivity.f29710o = true;
                SocketServerService.a aVar = (SocketServerService.a) iBinder;
                faceTransferHomePageActivity.f29711p = aVar;
                aVar.newServerSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.join.mgps.Util.u0.a(FaceTransferHomePageActivity.f29695u, "----onServiceDisconnected---");
        }
    }

    /* loaded from: classes3.dex */
    class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof SocketClientService.a) {
                FaceTransferHomePageActivity faceTransferHomePageActivity = FaceTransferHomePageActivity.this;
                faceTransferHomePageActivity.f29713r = true;
                SocketClientService.a aVar = (SocketClientService.a) iBinder;
                faceTransferHomePageActivity.f29714s = aVar;
                aVar.newSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29720a;

        e(String str) {
            this.f29720a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (Build.VERSION.SDK_INT >= 11) {
                ((ClipboardManager) FaceTransferHomePageActivity.this.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.f29720a));
            } else {
                ((ClipboardManager) FaceTransferHomePageActivity.this.getSystemService("clipboard")).setText(this.f29720a);
            }
            com.join.android.app.common.manager.a.h().j(view.getContext(), "复制成功！", 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.q f29722a;

        f(com.join.mgps.customview.q qVar) {
            this.f29722a = qVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f29722a.dismiss();
            FaceTransferHomePageActivity.this.f29702g = true;
            Intent intent = new Intent(net.lingala.zip4j.util.e.F0);
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.TetherSettings"));
            intent.setAction("android.intent.action.VIEW");
            FaceTransferHomePageActivity.this.startActivityForResult(intent, 88);
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.q f29724a;

        g(com.join.mgps.customview.q qVar) {
            this.f29724a = qVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f29724a.dismiss();
            FaceTransferHomePageActivity.this.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 89);
        }
    }

    private void O0() {
        String string = getString(R.string.no_papa_tip, new Object[]{"免流量发送给好友"});
        SpannableString spannableString = new SpannableString(string);
        a aVar = new a();
        int indexOf = string.indexOf("免流量发送给好友");
        spannableString.setSpan(aVar, indexOf, indexOf + 8, 17);
    }

    private void getDeviceInfo() {
        this.f29707l.d("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.READ_PHONE_STATE", "android.permission.READ_SMS", "android.permission.READ_PHONE_NUMBERS").r(new Runnable() { // from class: com.join.mgps.activity.j
            @Override // java.lang.Runnable
            public final void run() {
                FaceTransferHomePageActivity.this.onSuccess();
            }
        }).n(new Runnable() { // from class: com.join.mgps.activity.i
            @Override // java.lang.Runnable
            public final void run() {
                FaceTransferHomePageActivity.this.onDenied();
            }
        }).p(new Runnable() { // from class: com.join.mgps.activity.h
            @Override // java.lang.Runnable
            public final void run() {
                FaceTransferHomePageActivity.this.onNeverAskAgain();
            }
        }).s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDenied() {
        com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNeverAskAgain() {
        com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccess() {
        this.f29706k = true;
        this.f29705j = this.f29703h.getApSSIDAll(this);
    }

    void J0() {
        if (this.f29709n) {
            Q0();
            this.f29709n = false;
        }
        if (this.f29708m) {
            Toast.makeText(this, "正在等待连接...", 0).show();
            return;
        }
        Toast.makeText(this, "正在等待连接...", 0).show();
        Intent intent = new Intent(this, SocketServerService.class);
        try {
            bindService(intent, this.f29712q, 1);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        startService(intent);
        this.f29708m = true;
    }

    void K0() {
        if (this.f29708m) {
            stopService();
            this.f29708m = false;
        }
        if (this.f29709n) {
            Toast.makeText(this, "正在连接中...", 0).show();
            return;
        }
        Toast.makeText(this, "正在连接中...", 0).show();
        Intent intent = new Intent(this, SocketClientService.class);
        String localIPAddress = this.f29703h.getLocalIPAddress();
        int lastIndexOf = localIPAddress.lastIndexOf(com.join.mgps.Util.g0.f27568a);
        String str = localIPAddress.substring(0, lastIndexOf) + ".1";
        StringBuilder sb = new StringBuilder();
        sb.append("connected2Service: host");
        sb.append(str);
        sb.append(":::本地地址:::");
        sb.append(localIPAddress);
        intent.putExtra(com.alipay.sdk.cons.c.f9731f, str);
        bindService(intent, this.f29715t, 1);
        startService(intent);
        this.f29709n = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void L0() {
        this.f29707l = new ru.alexbykov.nopermission.b(this);
        this.f29703h = WifiUtils.getInstance(getApplicationContext());
        this.f29701f = new Random().nextInt(900) + 100;
        org.greenrobot.eventbus.c.f().t(this);
        init();
        initView();
    }

    void M0() {
        String apSSID = this.f29703h.getApSSID(this);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            if (!this.f29706k) {
                getDeviceInfo();
                return;
            }
            apSSID = this.f29703h.getApSSIDAll(this);
            this.f29705j = apSSID;
            if ("unknown id".equals(apSSID) || com.join.mgps.Util.d2.h(apSSID)) {
                com.join.mgps.Util.i2.a(this).b("你已拒绝权限申请，无法对战！");
                return;
            }
        }
        if (i2 >= 26 && (!com.join.android.app.common.utils.f.k(this) || com.join.mgps.Util.d2.h(apSSID))) {
            com.join.mgps.customview.q qVar = new com.join.mgps.customview.q(this);
            qVar.show();
            qVar.c(this.f29700e + this.f29701f);
            qVar.e("去连接", new g(qVar));
            return;
        }
        K0();
    }

    boolean N0() {
        if (Build.VERSION.SDK_INT >= 26) {
            String str = this.f29700e + this.f29701f;
            if (this.f29703h.getWifiApStateInt() != 11 && this.f29702g) {
                if (this.f29703h.getWifiApStateInt() == 13 || this.f29703h.getWifiApStateInt() == 3) {
                    ((BuildQRCodeActivity_.c) BuildQRCodeActivity_.X0(this).extra(BuildQRCodeActivity_.D, this.f29700e + this.f29701f)).start();
                    return true;
                }
                return true;
            }
            this.f29704i = false;
            com.join.mgps.customview.q qVar = new com.join.mgps.customview.q(this);
            qVar.show();
            qVar.b(str);
            qVar.a(new e(str));
            qVar.d(new f(qVar));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void P0() {
        IntentUtil.getInstance().goFormDetial(this, "3269874");
    }

    void Q0() {
        if (this.f29713r) {
            unbindService(this.f29715t);
            stopService(new Intent(this, SocketClientService.class));
        }
    }

    void init() {
        this.f29698c = getApplicationContext();
    }

    void initView() {
        this.f29696a.setText(this.f29697b);
        this.f29696a.setGravity(17);
        O0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.face_transfer_rel_create_hotspot, R.id.face_transfer_rel_join_hotspot, R.id.back_image})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.back_image /* 2131296574 */:
                finish();
                return;
            case R.id.face_transfer_rel_create_hotspot /* 2131297398 */:
                if (N0()) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    int checkSelfPermission = checkSelfPermission("android.permission.ACCESS_FINE_LOCATION");
                    StringBuilder sb = new StringBuilder();
                    sb.append("location permission: ");
                    sb.append(checkSelfPermission);
                    if (checkSelfPermission != 0) {
                        ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 1);
                        return;
                    }
                }
                com.papa.sim.statistic.p.l(this).l0(AccountUtil_.getInstance_(this).getUid());
                IntentUtil.getInstance().goBuildQRCodeActivity(this);
                return;
            case R.id.face_transfer_rel_join_hotspot /* 2131297399 */:
                try {
                    if (Build.VERSION.SDK_INT >= 26 && com.join.mgps.Util.e.f(this)) {
                        Toast.makeText(this, "请确保本机热点处于关闭状态", 0).show();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                com.papa.sim.statistic.p.l(this).m0(AccountUtil_.getInstance_(this).getUid());
                new com.tbruyelle.rxpermissions2.c(this).r("android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE").B5(new b());
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
        stopService();
        Q0();
        this.f29709n = false;
        this.f29708m = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 == 1 && ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            com.papa.sim.statistic.p.l(this).l0(AccountUtil_.getInstance_(this).getUid());
            IntentUtil.getInstance().goBuildQRCodeActivity(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketStatusEvent(com.join.mgps.socket.entity.f fVar) {
        String str = f29695u;
        com.join.mgps.Util.u0.e(str, "onSocketStatusEvent: 0000");
        if (fVar == null) {
            return;
        }
        int i2 = fVar.f52117a;
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            Q0();
            stopService();
            this.f29709n = false;
            this.f29708m = false;
            return;
        }
        com.join.mgps.Util.u0.e(str, "onSocketStatusEvent: 成功");
        com.papa.sim.statistic.p.l(this).i0(AccountUtil_.getInstance_(this).getUid());
        if (this.f29709n) {
            GameTransferActivity_.U1(this).a(1).start();
        } else if (this.f29708m) {
            GameTransferActivity_.U1(this).a(2).start();
        }
        this.f29709n = false;
        this.f29708m = false;
    }

    void stopService() {
        if (this.f29710o) {
            unbindService(this.f29712q);
            stopService(new Intent(this, SocketServerService.class));
        }
    }
}
