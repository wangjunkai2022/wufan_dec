package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.helper.ApWifiManager;
import com.join.mgps.receiver.WifiAPBroadcastReceiver;
import com.join.mgps.service.SocketServerService;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.androidannotations.annotations.AfterInject;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.activity_build_qr_code)
/* loaded from: classes.dex */
public class BuildQRCodeActivity extends BaseLoadingActivity {
    private static final int A = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final String f28421z = "BuildQRCodeActivity";
    @ViewById(R.id.title_textview)

    /* renamed from: d  reason: collision with root package name */
    TextView f28422d;
    @ViewById(R.id.build_qr_code_title)

    /* renamed from: e  reason: collision with root package name */
    RelativeLayout f28423e;
    @StringRes(R.string.title_build_qr_code)

    /* renamed from: f  reason: collision with root package name */
    String f28424f;
    @ViewById(R.id.qr_code_vstub)

    /* renamed from: g  reason: collision with root package name */
    ViewStub f28425g;

    /* renamed from: h  reason: collision with root package name */
    ImageView f28426h;

    /* renamed from: i  reason: collision with root package name */
    TextView f28427i;

    /* renamed from: j  reason: collision with root package name */
    Context f28428j;

    /* renamed from: k  reason: collision with root package name */
    ApWifiManager f28429k;

    /* renamed from: l  reason: collision with root package name */
    com.join.mgps.Util.f f28430l;
    @StringRes(R.string.hint_msg_creating_ap_wifi)

    /* renamed from: s  reason: collision with root package name */
    String f28437s;
    @StringRes(R.string.hint_msg_create_ap_wifi_failed)

    /* renamed from: t  reason: collision with root package name */
    String f28438t;

    /* renamed from: u  reason: collision with root package name */
    b f28439u;
    @Extra(BuildQRCodeActivity_.D)

    /* renamed from: w  reason: collision with root package name */
    String f28441w;

    /* renamed from: m  reason: collision with root package name */
    ExecutorService f28431m = null;

    /* renamed from: n  reason: collision with root package name */
    Future<?> f28432n = null;

    /* renamed from: o  reason: collision with root package name */
    com.join.mgps.task.a f28433o = null;

    /* renamed from: p  reason: collision with root package name */
    private String f28434p = null;

    /* renamed from: q  reason: collision with root package name */
    String f28435q = "";

    /* renamed from: r  reason: collision with root package name */
    boolean f28436r = false;

    /* renamed from: v  reason: collision with root package name */
    boolean f28440v = false;

    /* renamed from: x  reason: collision with root package name */
    SocketServerService.a f28442x = null;

    /* renamed from: y  reason: collision with root package name */
    ServiceConnection f28443y = new a();

    /* loaded from: classes3.dex */
    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.join.mgps.Util.u0.e(BuildQRCodeActivity.f28421z, "----onServiceConnected---");
            BuildQRCodeActivity buildQRCodeActivity = BuildQRCodeActivity.this;
            buildQRCodeActivity.f28440v = true;
            if (iBinder instanceof SocketServerService.a) {
                SocketServerService.a aVar = (SocketServerService.a) iBinder;
                buildQRCodeActivity.f28442x = aVar;
                aVar.newServerSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.join.mgps.Util.u0.a(BuildQRCodeActivity.f28421z, "----onServiceDisconnected---");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (WifiAPBroadcastReceiver.f51466b.equals(intent.getAction()) && intent.getIntExtra("wifi_state", 0) == 11) {
                Toast.makeText(BuildQRCodeActivity.this.f28428j, "热点已关闭", 0).show();
                BuildQRCodeActivity.this.finish();
            }
        }
    }

    void K0() {
        H0();
        R0();
        S0();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f28434p = this.f28441w;
            this.f28435q = com.join.mgps.data.c.f47302q;
            com.join.mgps.event.c cVar = new com.join.mgps.event.c();
            cVar.f48156a = 1;
            cVar.f48157b = this.f28434p;
            cVar.f48158c = this.f28435q;
            org.greenrobot.eventbus.c.f().o(cVar);
        } else {
            this.f28429k.createApWifi(this.f28434p, this.f28435q);
        }
        com.join.mgps.task.a aVar = new com.join.mgps.task.a(this.f28428j);
        this.f28433o = aVar;
        this.f28432n = this.f28431m.submit(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        View inflate = this.f28425g.inflate();
        this.f28426h = (ImageView) inflate.findViewById(R.id.qr_code_img);
        TextView textView = (TextView) inflate.findViewById(R.id.ssidTxt);
        this.f28427i = textView;
        textView.setText("请将热点名称设置为\n" + this.f28434p);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f28427i.setVisibility(0);
        }
        this.f28426h.setImageBitmap(v1.a.b("SSID:" + this.f28434p + ":Pwd:" + this.f28435q, this.f28428j));
        N0();
        V0();
        com.papa.sim.statistic.p.l(this).j0(AccountUtil_.getInstance_(this).getUid());
    }

    void M0() {
        this.f28429k.closeWifiAp();
        stopService();
    }

    void N0() {
        Intent intent = new Intent(this, SocketServerService.class);
        bindService(intent, this.f28443y, 1);
        startService(intent);
    }

    void O0() {
        com.join.mgps.task.a aVar = this.f28433o;
        if (aVar != null) {
            aVar.c();
        }
        Future<?> future = this.f28432n;
        if (future != null && !future.isCancelled()) {
            this.f28432n.cancel(true);
        }
        ExecutorService executorService = this.f28431m;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f28431m.shutdownNow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterInject
    public void P0() {
        setLoadingHintMsg(this.f28437s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void Q0() {
        init();
        initView();
        this.f28423e.setVisibility(0);
    }

    public void R0() {
        String str;
        Random random = new Random();
        do {
            str = this.f28435q + Character.toString((char) ((Math.abs(random.nextInt()) % 10) + 48));
            this.f28435q = str;
        } while (str.length() < 8);
        com.join.mgps.Util.u0.e(f28421z, "getRandomPwd: 随机的6位密码是" + this.f28435q);
    }

    void S0() {
        this.f28434p = com.join.mgps.Util.h.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.back_image})
    public void T0() {
        M0();
        finish();
    }

    void U0() {
        GameTransferActivity_.U1(this).a(2).start();
        finish();
    }

    void V0() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(WifiAPBroadcastReceiver.f51466b);
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        b bVar = new b();
        this.f28439u = bVar;
        registerReceiver(bVar, intentFilter);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void crateApWifiStatus(com.join.mgps.event.c cVar) {
        if (cVar == null) {
            return;
        }
        int i2 = cVar.f48156a;
        if (i2 == 0) {
            com.join.mgps.Util.u0.e(f28421z, "onFailed: 热点创建失败");
            setmLoadingHintMsgLoading(this.f28438t);
        } else if (i2 != 1) {
        } else {
            String str = f28421z;
            com.join.mgps.Util.u0.e(str, "onSuccess: 热点创建成功");
            AccountUtil_.getInstance_(this).getUid();
            com.join.mgps.Util.u0.e(str, "crateApWifiStatus: " + this.f28432n.isDone() + ":::是否取消:::" + this.f28432n.isCancelled());
            E0();
            if (!this.f28436r) {
                L0();
                Future<?> future = this.f28432n;
                if (future != null && !future.isCancelled()) {
                    this.f28432n.cancel(true);
                }
            }
            this.f28436r = true;
        }
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.build_qr_code_rl;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingMarginTop() {
        String str = Build.MODEL;
        if (!TextUtils.isEmpty(str) && str.equals("HM 1SLTETD")) {
            double loadingMarginTop = super.getLoadingMarginTop();
            Double.isNaN(loadingMarginTop);
            return (int) (loadingMarginTop * 1.5d);
        }
        return super.getLoadingMarginTop();
    }

    void init() {
        this.f28428j = getApplicationContext();
        this.f28431m = Executors.newFixedThreadPool(2);
        this.f28429k = new ApWifiManager(this.f28428j);
        this.f28430l = com.join.mgps.Util.f.i(this.f28428j);
        org.greenrobot.eventbus.c.f().t(this);
    }

    void initView() {
        this.f28422d.setText(this.f28424f);
        K0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().y(this);
        O0();
        b bVar = this.f28439u;
        if (bVar != null) {
            unregisterReceiver(bVar);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            M0();
            finish();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketStatusEvent(com.join.mgps.socket.entity.f fVar) {
        String str = f28421z;
        com.join.mgps.Util.u0.e(str, "onSocketStatusEvent: 0000");
        if (fVar == null) {
            return;
        }
        int i2 = fVar.f52117a;
        if (i2 == 1) {
            com.join.mgps.Util.u0.e(str, "onSocketStatusEvent: 创建成功");
            U0();
        } else if (i2 != 2) {
        } else {
            stopService();
            M0();
            finish();
        }
    }

    void stopService() {
        if (this.f28440v) {
            this.f28440v = false;
            this.f28442x.setMonitor(false);
            unbindService(this.f28443y);
            stopService(new Intent(this, SocketServerService.class));
        }
    }
}
