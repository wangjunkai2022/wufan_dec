package com.join.mgps.zxing;

import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.BaseActivity;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.camera.c;
import com.join.mgps.zxing.decoding.CaptureActivityHandler;
import com.join.mgps.zxing.decoding.g;
import com.join.mgps.zxing.view.ViewfinderView;
import java.io.IOException;
import java.util.Vector;
/* loaded from: classes4.dex */
public class CaptureActivity extends BaseActivity implements SurfaceHolder.Callback {

    /* renamed from: l  reason: collision with root package name */
    private static final float f52424l = 0.1f;

    /* renamed from: m  reason: collision with root package name */
    private static final long f52425m = 200;

    /* renamed from: a  reason: collision with root package name */
    private CaptureActivityHandler f52426a;

    /* renamed from: b  reason: collision with root package name */
    private ViewfinderView f52427b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f52428c;

    /* renamed from: d  reason: collision with root package name */
    private Vector<BarcodeFormat> f52429d;

    /* renamed from: e  reason: collision with root package name */
    private String f52430e;

    /* renamed from: f  reason: collision with root package name */
    private g f52431f;

    /* renamed from: g  reason: collision with root package name */
    private MediaPlayer f52432g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f52433h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f52434i;

    /* renamed from: j  reason: collision with root package name */
    private Button f52435j;

    /* renamed from: k  reason: collision with root package name */
    private final MediaPlayer.OnCompletionListener f52436k = new b();

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CaptureActivity.this.finish();
        }
    }

    /* loaded from: classes4.dex */
    class b implements MediaPlayer.OnCompletionListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(0);
        }
    }

    private void I0() {
        if (this.f52433h && this.f52432g == null) {
            setVolumeControlStream(3);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f52432g = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.f52432g.setOnCompletionListener(this.f52436k);
            try {
                AssetFileDescriptor openRawResourceFd = getResources().openRawResourceFd(R.raw.jiejitoubi);
                this.f52432g.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                openRawResourceFd.close();
                this.f52432g.setVolume(0.1f, 0.1f);
                this.f52432g.prepare();
            } catch (Exception unused) {
                this.f52432g = null;
            }
        }
    }

    private void J0(SurfaceHolder surfaceHolder) {
        try {
            c.c().h(surfaceHolder);
            if (this.f52426a == null) {
                this.f52426a = new CaptureActivityHandler(this, this.f52429d, this.f52430e);
            }
        } catch (IOException | RuntimeException unused) {
        }
    }

    private void K0() {
        MediaPlayer mediaPlayer;
        if (this.f52433h && (mediaPlayer = this.f52432g) != null) {
            mediaPlayer.start();
        }
        if (this.f52434i) {
            ((Vibrator) getSystemService("vibrator")).vibrate(200L);
        }
    }

    public void E0() {
        this.f52427b.c();
    }

    public Handler F0() {
        return this.f52426a;
    }

    public ViewfinderView G0() {
        return this.f52427b;
    }

    public void H0(Result result, Bitmap bitmap) {
        this.f52431f.b();
        K0();
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

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.zxing_camera);
        c.g(getApplication());
        this.f52427b = (ViewfinderView) findViewById(R.id.viewfinder_view);
        this.f52435j = (Button) findViewById(R.id.btn_cancel_scan);
        this.f52428c = false;
        this.f52431f = new g(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f52431f.c();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        CaptureActivityHandler captureActivityHandler = this.f52426a;
        if (captureActivityHandler != null) {
            captureActivityHandler.a();
            this.f52426a = null;
        }
        c.c().b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        SurfaceHolder holder = ((SurfaceView) findViewById(R.id.preview_view)).getHolder();
        if (this.f52428c) {
            J0(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.f52429d = null;
        this.f52430e = null;
        this.f52433h = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.f52433h = false;
        }
        I0();
        this.f52434i = true;
        this.f52435j.setOnClickListener(new a());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i4, int i5) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.f52428c) {
            return;
        }
        this.f52428c = true;
        J0(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f52428c = false;
    }
}
