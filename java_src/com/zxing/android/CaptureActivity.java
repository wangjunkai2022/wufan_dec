package com.zxing.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.Toast;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.decoding.CaptureActivityHandler;
import com.zxing.android.decoding.h;
import com.zxing.android.view.ViewfinderView;
import java.io.IOException;
import java.util.Vector;
/* loaded from: classes3.dex */
public class CaptureActivity extends Activity implements SurfaceHolder.Callback {

    /* renamed from: m  reason: collision with root package name */
    public static final String f64977m = "RESULT";

    /* renamed from: n  reason: collision with root package name */
    private static final long f64978n = 200;

    /* renamed from: a  reason: collision with root package name */
    private CaptureActivityHandler f64979a;

    /* renamed from: b  reason: collision with root package name */
    private ViewfinderView f64980b;

    /* renamed from: c  reason: collision with root package name */
    private SurfaceView f64981c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f64982d;

    /* renamed from: e  reason: collision with root package name */
    private Vector<BarcodeFormat> f64983e;

    /* renamed from: f  reason: collision with root package name */
    private String f64984f;

    /* renamed from: g  reason: collision with root package name */
    private h f64985g;

    /* renamed from: h  reason: collision with root package name */
    private MediaPlayer f64986h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f64987i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f64988j;

    /* renamed from: k  reason: collision with root package name */
    com.zxing.android.camera.c f64989k;

    /* renamed from: l  reason: collision with root package name */
    private final MediaPlayer.OnCompletionListener f64990l = new c();

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Result f64991a;

        a(Result result) {
            this.f64991a = result;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            Intent intent = new Intent();
            intent.putExtra("result", this.f64991a.getText());
            CaptureActivity.this.setResult(-1, intent);
            CaptureActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            CaptureActivity.this.i(0L);
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

    private void f() {
        if (this.f64987i && this.f64986h == null) {
            setVolumeControlStream(3);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f64986h = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.f64986h.setOnCompletionListener(this.f64990l);
            try {
                AssetFileDescriptor openFd = getAssets().openFd("qrbeep.ogg");
                this.f64986h.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                this.f64986h.setVolume(0.1f, 0.1f);
                this.f64986h.prepare();
            } catch (IOException unused) {
                this.f64986h = null;
            }
        }
    }

    private void g(SurfaceHolder surfaceHolder) {
        try {
            this.f64989k.f(surfaceHolder);
            if (this.f64979a == null) {
                this.f64979a = new CaptureActivityHandler(this, this.f64983e, this.f64984f);
            }
        } catch (IOException | RuntimeException unused) {
        }
    }

    private void h() {
        MediaPlayer mediaPlayer;
        if (this.f64987i && (mediaPlayer = this.f64986h) != null) {
            mediaPlayer.start();
        }
        if (this.f64988j) {
            ((Vibrator) getSystemService("vibrator")).vibrate(200L);
        }
    }

    private void j(Result result, Bitmap bitmap) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setIcon(new BitmapDrawable(bitmap));
        builder.setTitle("类型:" + result.getBarcodeFormat() + "\n 结果：" + result.getText());
        builder.setPositiveButton("确定", new a(result));
        builder.setNegativeButton("重新扫描", new b());
        builder.setCancelable(false);
        builder.show();
    }

    public void a() {
        this.f64980b.c();
    }

    public com.zxing.android.camera.c b() {
        return this.f64989k;
    }

    public Handler c() {
        return this.f64979a;
    }

    public ViewfinderView d() {
        return this.f64980b;
    }

    public void e(Result result, Bitmap bitmap) {
        this.f64985g.b();
        h();
        String text = result.getText();
        if (text.equals("")) {
            Toast.makeText(this, "Scan failed!", 0).show();
        } else {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("result", text);
            intent.putExtras(bundle);
            setResult(-1, intent);
        }
        finish();
    }

    public void i(long j4) {
        CaptureActivityHandler captureActivityHandler = this.f64979a;
        if (captureActivityHandler != null) {
            captureActivityHandler.sendEmptyMessageDelayed(8, j4);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_capture);
        this.f64981c = (SurfaceView) findViewById(R.id.surfaceview);
        this.f64980b = (ViewfinderView) findViewById(R.id.viewfinderview);
        getWindow().addFlags(128);
        this.f64982d = false;
        this.f64985g = new h(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.f64985g.c();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            setResult(0);
            finish();
            return true;
        } else if (i2 == 80 || i2 == 27) {
            return true;
        } else {
            return super.onKeyDown(i2, keyEvent);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CaptureActivityHandler captureActivityHandler = this.f64979a;
        if (captureActivityHandler != null) {
            captureActivityHandler.a();
            this.f64979a = null;
        }
        this.f64989k.b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getRequestedOrientation() != 1) {
            setRequestedOrientation(1);
        }
        com.zxing.android.camera.c cVar = new com.zxing.android.camera.c(getApplication());
        this.f64989k = cVar;
        this.f64980b.setCameraManager(cVar);
        SurfaceHolder holder = this.f64981c.getHolder();
        if (this.f64982d) {
            g(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.f64983e = null;
        this.f64984f = null;
        this.f64987i = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.f64987i = false;
        }
        f();
        this.f64988j = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i4, int i5) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.f64982d) {
            return;
        }
        this.f64982d = true;
        g(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f64982d = false;
    }
}
