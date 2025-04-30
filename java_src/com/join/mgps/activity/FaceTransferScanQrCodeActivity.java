package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.helper.ApWifiManager;
import com.join.mgps.service.SocketClientService;
import com.zxing.android.decoding.CaptureActivityHandlerForFace;
import com.zxing.android.view.ViewfinderView;
import java.io.IOException;
import java.util.Vector;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class FaceTransferScanQrCodeActivity extends BaseLoadingActivity implements SurfaceHolder.Callback {
    private static final String G = FaceTransferScanQrCodeActivity.class.getSimpleName();
    private static final float H = 0.1f;
    public static final int I = 123;
    private static final long J = 200;
    private boolean A;

    /* renamed from: d  reason: collision with root package name */
    private CaptureActivityHandlerForFace f29733d;

    /* renamed from: e  reason: collision with root package name */
    private ViewfinderView f29734e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f29735f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f29736g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f29737h;

    /* renamed from: i  reason: collision with root package name */
    private Vector<BarcodeFormat> f29738i;

    /* renamed from: j  reason: collision with root package name */
    private String f29739j;

    /* renamed from: k  reason: collision with root package name */
    private com.join.mgps.zxing.decoding.g f29740k;

    /* renamed from: l  reason: collision with root package name */
    private MediaPlayer f29741l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29742m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f29743n;

    /* renamed from: o  reason: collision with root package name */
    Context f29744o;

    /* renamed from: p  reason: collision with root package name */
    ApWifiManager f29745p;

    /* renamed from: s  reason: collision with root package name */
    SurfaceView f29748s;

    /* renamed from: z  reason: collision with root package name */
    com.zxing.android.camera.c f29755z;

    /* renamed from: q  reason: collision with root package name */
    WifiUtils f29746q = null;

    /* renamed from: r  reason: collision with root package name */
    com.join.mgps.Util.f f29747r = null;

    /* renamed from: t  reason: collision with root package name */
    String f29749t = null;

    /* renamed from: u  reason: collision with root package name */
    String f29750u = null;

    /* renamed from: v  reason: collision with root package name */
    e f29751v = null;

    /* renamed from: w  reason: collision with root package name */
    boolean f29752w = false;

    /* renamed from: x  reason: collision with root package name */
    boolean f29753x = false;

    /* renamed from: y  reason: collision with root package name */
    boolean f29754y = false;
    Runnable B = new Runnable() { // from class: com.join.mgps.activity.l
        @Override // java.lang.Runnable
        public final void run() {
            FaceTransferScanQrCodeActivity.this.X0();
        }
    };
    Runnable C = new Runnable() { // from class: com.join.mgps.activity.k
        @Override // java.lang.Runnable
        public final void run() {
            FaceTransferScanQrCodeActivity.this.Y0();
        }
    };
    SocketClientService.a D = null;
    ServiceConnection E = new b();
    private final MediaPlayer.OnCompletionListener F = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferScanQrCodeActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof SocketClientService.a) {
                SocketClientService.a aVar = (SocketClientService.a) iBinder;
                FaceTransferScanQrCodeActivity.this.D = aVar;
                aVar.newSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes3.dex */
    class c implements MediaPlayer.OnCompletionListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(0);
        }
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29759a;

        static {
            int[] iArr = new int[NetworkInfo.State.values().length];
            f29759a = iArr;
            try {
                iArr[NetworkInfo.State.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29759a[NetworkInfo.State.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29759a[NetworkInfo.State.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29759a[NetworkInfo.State.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29759a[NetworkInfo.State.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29759a[NetworkInfo.State.SUSPENDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Parcelable parcelableExtra;
            String action = intent.getAction();
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("wifi_state", 0);
                if (intExtra == 1) {
                    String unused = FaceTransferScanQrCodeActivity.G;
                } else if (intExtra == 3) {
                    String unused2 = FaceTransferScanQrCodeActivity.G;
                    FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity = FaceTransferScanQrCodeActivity.this;
                    if (faceTransferScanQrCodeActivity.f29752w) {
                        faceTransferScanQrCodeActivity.M0();
                    }
                }
            }
            if (!"android.net.wifi.STATE_CHANGE".equals(action) || (parcelableExtra = intent.getParcelableExtra("networkInfo")) == null) {
                return;
            }
            int i2 = d.f29759a[((NetworkInfo) parcelableExtra).getState().ordinal()];
            if (i2 != 1) {
                if (i2 != 4) {
                    return;
                }
                String unused3 = FaceTransferScanQrCodeActivity.G;
                return;
            }
            String ssid = WifiUtils.getInstance(FaceTransferScanQrCodeActivity.this.f29744o).getSSID(FaceTransferScanQrCodeActivity.this.f29744o);
            String unused4 = FaceTransferScanQrCodeActivity.G;
            StringBuilder sb = new StringBuilder();
            sb.append("onReceive: wifi 连接上的名称");
            sb.append(ssid);
            if (ssid == null || !ssid.equals(FaceTransferScanQrCodeActivity.this.f29749t)) {
                return;
            }
            FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity2 = FaceTransferScanQrCodeActivity.this;
            if (faceTransferScanQrCodeActivity2.f29753x) {
                return;
            }
            faceTransferScanQrCodeActivity2.N0();
            FaceTransferScanQrCodeActivity.this.f29753x = true;
        }
    }

    private void R0() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 123);
        } else {
            c1();
        }
    }

    private void V0() {
        if (this.f29742m && this.f29741l == null) {
            setVolumeControlStream(3);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f29741l = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.f29741l.setOnCompletionListener(this.F);
            AssetFileDescriptor openRawResourceFd = getResources().openRawResourceFd(R.raw.jiejitoubi);
            try {
                this.f29741l.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                openRawResourceFd.close();
                this.f29741l.setVolume(0.1f, 0.1f);
                this.f29741l.prepare();
            } catch (IOException unused) {
                this.f29741l = null;
            }
        }
    }

    private void W0(SurfaceHolder surfaceHolder) {
        try {
            this.f29755z.f(surfaceHolder);
            if (this.f29733d == null) {
                this.f29733d = new CaptureActivityHandlerForFace(this, this.f29738i, this.f29739j);
            }
        } catch (IOException | RuntimeException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X0() {
        try {
            if (this.A) {
                return;
            }
            Toast.makeText(this, "连接失败，请手动连接网络:" + this.f29749t, 0).show();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y0() {
        try {
            if (this.A) {
                return;
            }
            com.join.mgps.Util.r2.h(this).a(com.join.mgps.Util.r2.c(this.f29749t, this.f29750u, 1));
            this.f44765c.postDelayed(this.B, 7000L);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void Z0() {
        MediaPlayer mediaPlayer;
        if (this.f29742m && (mediaPlayer = this.f29741l) != null) {
            mediaPlayer.start();
        }
        if (this.f29743n) {
            ((Vibrator) getSystemService("vibrator")).vibrate(200L);
        }
    }

    private void c1() {
        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.preview_view);
        this.f29748s = surfaceView;
        SurfaceHolder holder = surfaceView.getHolder();
        if (this.f29737h) {
            W0(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.f29738i = null;
        this.f29739j = null;
        this.f29742m = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.f29742m = false;
        }
        V0();
        this.f29743n = true;
    }

    void M0() {
        H0();
        this.f29745p.connectApWifi(this.f29749t, this.f29750u);
        try {
            Handler handler = this.f44765c;
            if (handler != null) {
                handler.postDelayed(this.B, 12000L);
            }
        } catch (Resources.NotFoundException e4) {
            e4.printStackTrace();
        }
    }

    void N0() {
        Intent intent = new Intent(this, SocketClientService.class);
        String localIPAddress = this.f29746q.getLocalIPAddress();
        int lastIndexOf = localIPAddress.lastIndexOf(com.join.mgps.Util.g0.f27568a);
        String str = localIPAddress.substring(0, lastIndexOf) + ".1";
        StringBuilder sb = new StringBuilder();
        sb.append("connected2Service: host");
        sb.append(str);
        sb.append(":::本地地址:::");
        sb.append(localIPAddress);
        intent.putExtra(com.alipay.sdk.cons.c.f9731f, str);
        bindService(intent, this.E, 1);
        startService(intent);
        this.f29754y = true;
    }

    public void O0() {
        this.f29734e.c();
    }

    public com.zxing.android.camera.c P0() {
        return this.f29755z;
    }

    public Handler Q0() {
        return this.f29733d;
    }

    public ViewfinderView S0() {
        return this.f29734e;
    }

    void T0() {
        Intent intent = new Intent(this, GameTransferActivity_.class);
        Bundle bundle = new Bundle();
        bundle.putInt(GameTransferActivity_.I0, 1);
        intent.putExtras(bundle);
        startActivity(intent);
        finish();
    }

    public void U0(Result result, Bitmap bitmap) {
        this.f29740k.b();
        Z0();
        String text = result.getText();
        StringBuilder sb = new StringBuilder();
        sb.append("handleDecode: 扫描结果");
        sb.append(text);
        if (text.equals("")) {
            Toast.makeText(this, "Scan failed!", 0).show();
            return;
        }
        String[] split = text.split(":");
        int length = split.length;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handleDecode: 扫描结果::::");
        sb2.append(split.toString());
        sb2.append(":::::size::::");
        sb2.append(length);
        if (length == 4) {
            this.f29749t = split[1];
            this.f29750u = split[3];
            if (!this.f29746q.isWifiEnable()) {
                this.f29752w = true;
                this.f29747r.f();
                this.f29746q.openWifi(this.f29744o);
            } else {
                M0();
            }
            this.f29748s.setVisibility(8);
            this.f29734e.setVisibility(8);
            a1();
            return;
        }
        Toast.makeText(this, (int) R.string.erro_scan_qr_code, 0).show();
    }

    void a1() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        e eVar = new e();
        this.f29751v = eVar;
        registerReceiver(eVar, intentFilter);
    }

    void b1() {
        Handler handler = this.f44765c;
        if (handler == null) {
            return;
        }
        try {
            handler.removeCallbacks(this.C);
            this.f44765c.removeCallbacks(this.B);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void d1() {
        e eVar = this.f29751v;
        if (eVar != null) {
            unregisterReceiver(eVar);
        }
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.scan_qr_code_fl;
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

    void initView() {
        this.f29734e = (ViewfinderView) findViewById(R.id.viewfinder_view);
        this.f29735f = (TextView) findViewById(R.id.title_textview);
        ImageView imageView = (ImageView) findViewById(R.id.back_image);
        this.f29736g = imageView;
        imageView.setOnClickListener(new a());
        this.f29735f.setText(R.string.title_scan_qr_code);
        this.f29737h = false;
        this.f29740k = new com.join.mgps.zxing.decoding.g(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f29755z = new com.zxing.android.camera.c(this);
        setLoadingHintMsg(getResources().getString(R.string.success_scan_qr_code_loading_hint));
        setContentView(R.layout.face_transfer_scan_qr_code_activity);
        this.f29744o = getApplicationContext();
        this.f29745p = new ApWifiManager(this.f29744o);
        this.f29746q = WifiUtils.getInstance(this.f29744o);
        this.f29747r = com.join.mgps.Util.f.i(this.f29744o);
        E0();
        initView();
        R0();
        org.greenrobot.eventbus.c.f().t(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f29740k.c();
        d1();
        b1();
        org.greenrobot.eventbus.c.f().y(this);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            stopService();
            finish();
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        CaptureActivityHandlerForFace captureActivityHandlerForFace = this.f29733d;
        if (captureActivityHandlerForFace != null) {
            captureActivityHandlerForFace.a();
            this.f29733d = null;
        }
        this.f29755z.b();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 != 123) {
            super.onRequestPermissionsResult(i2, strArr, iArr);
        } else if (iArr[0] == 0) {
            c1();
        } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
            Toast.makeText(this, "扫描二维码需要相机权限,请授权相机权限", 0).show();
        } else {
            Toast.makeText(this, "没有获取到权限,请授权相机权限", 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (getRequestedOrientation() != 1) {
            setRequestedOrientation(1);
        }
        com.zxing.android.camera.c cVar = new com.zxing.android.camera.c(getApplication());
        this.f29755z = cVar;
        this.f29734e.setCameraManager(cVar);
        SurfaceHolder holder = this.f29748s.getHolder();
        if (this.f29737h) {
            W0(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.f29738i = null;
        this.f29739j = null;
        this.f29742m = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.f29742m = false;
        }
        V0();
        this.f29743n = true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketStatusEvent(com.join.mgps.socket.entity.f fVar) {
        String str = G;
        com.join.mgps.Util.u0.e(str, "onSocketStatusEvent: 0000");
        if (fVar == null) {
            return;
        }
        int i2 = fVar.f52117a;
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            stopService();
            finish();
            return;
        }
        com.join.mgps.Util.u0.e(str, "onSocketStatusEvent: 成功");
        this.A = true;
        com.papa.sim.statistic.p.l(this).i0(AccountUtil_.getInstance_(this).getUid());
        T0();
    }

    void stopService() {
        if (this.f29754y) {
            unbindService(this.E);
            stopService(new Intent(this, SocketClientService.class));
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i4, int i5) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.f29737h) {
            return;
        }
        this.f29737h = true;
        W0(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f29737h = false;
    }
}
