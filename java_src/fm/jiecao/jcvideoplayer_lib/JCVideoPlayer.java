package fm.jiecao.jcvideoplayer_lib;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.common.statfs.StatFsHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public abstract class JCVideoPlayer extends FrameLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, View.OnTouchListener {
    public static final int A0 = 0;
    public static final int B0 = 1;
    public static final int C0 = 2;
    public static final int D0 = 3;
    public static final int E0 = 4;
    public static final int F0 = 5;
    public static final int G0 = 6;
    public static final int H0 = 7;
    public static final String I = "JieCaoVideoPlayer";
    public static int I0 = -1;
    public static boolean J = true;
    protected static fm.jiecao.jcvideoplayer_lib.c J0 = null;
    public static boolean K = true;
    protected static Timer K0 = null;
    public static final String L0 = "URL_KEY_DEFAULT";
    public static long M0 = 0;
    public static AudioManager.OnAudioFocusChangeListener N0 = new a();

    /* renamed from: n0  reason: collision with root package name */
    public static int f65540n0 = 4;

    /* renamed from: o0  reason: collision with root package name */
    public static int f65541o0 = 1;

    /* renamed from: p0  reason: collision with root package name */
    public static boolean f65542p0 = true;

    /* renamed from: q0  reason: collision with root package name */
    public static boolean f65543q0 = false;

    /* renamed from: r0  reason: collision with root package name */
    public static final int f65544r0 = 33797;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f65545s0 = 33798;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f65546t0 = 80;

    /* renamed from: u0  reason: collision with root package name */
    public static final int f65547u0 = 300;

    /* renamed from: v0  reason: collision with root package name */
    public static long f65548v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    public static final int f65549w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    public static final int f65550x0 = 1;

    /* renamed from: y0  reason: collision with root package name */
    public static final int f65551y0 = 2;

    /* renamed from: z0  reason: collision with root package name */
    public static final int f65552z0 = 3;
    protected int A;
    protected int B;
    protected float C;
    protected int D;
    LinkedHashMap E;
    int F;
    public int G;
    public int H;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f65553a;

    /* renamed from: b  reason: collision with root package name */
    public int f65554b;

    /* renamed from: c  reason: collision with root package name */
    public int f65555c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f65556d;

    /* renamed from: e  reason: collision with root package name */
    public Map<String, String> f65557e;

    /* renamed from: f  reason: collision with root package name */
    public Object[] f65558f;

    /* renamed from: g  reason: collision with root package name */
    public int f65559g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f65560h;

    /* renamed from: i  reason: collision with root package name */
    public SeekBar f65561i;

    /* renamed from: j  reason: collision with root package name */
    public ImageView f65562j;

    /* renamed from: k  reason: collision with root package name */
    public TextView f65563k;

    /* renamed from: l  reason: collision with root package name */
    public TextView f65564l;

    /* renamed from: m  reason: collision with root package name */
    public ViewGroup f65565m;

    /* renamed from: n  reason: collision with root package name */
    public ViewGroup f65566n;

    /* renamed from: o  reason: collision with root package name */
    public ViewGroup f65567o;

    /* renamed from: p  reason: collision with root package name */
    protected int f65568p;

    /* renamed from: q  reason: collision with root package name */
    protected int f65569q;

    /* renamed from: r  reason: collision with root package name */
    protected AudioManager f65570r;

    /* renamed from: s  reason: collision with root package name */
    protected Handler f65571s;

    /* renamed from: t  reason: collision with root package name */
    protected c f65572t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f65573u;

    /* renamed from: v  reason: collision with root package name */
    protected float f65574v;

    /* renamed from: w  reason: collision with root package name */
    protected float f65575w;

    /* renamed from: x  reason: collision with root package name */
    protected boolean f65576x;

    /* renamed from: y  reason: collision with root package name */
    protected boolean f65577y;

    /* renamed from: z  reason: collision with root package name */
    protected boolean f65578z;

    /* loaded from: classes3.dex */
    static class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i2) {
            if (i2 != -2) {
                if (i2 != -1) {
                    return;
                }
                JCVideoPlayer.H();
                StringBuilder sb = new StringBuilder();
                sb.append("AUDIOFOCUS_LOSS [");
                sb.append(hashCode());
                sb.append("]");
                return;
            }
            try {
                if (fm.jiecao.jcvideoplayer_lib.b.b().f65620a != null && fm.jiecao.jcvideoplayer_lib.b.b().f65620a.isPlaying()) {
                    fm.jiecao.jcvideoplayer_lib.b.b().f65620a.pause();
                }
            } catch (IllegalStateException e4) {
                e4.printStackTrace();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AUDIOFOCUS_LOSS_TRANSIENT [");
            sb2.append(hashCode());
            sb2.append("]");
        }
    }

    /* loaded from: classes3.dex */
    public static class b implements SensorEventListener {
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = sensorEvent.values;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[2];
            if (((f4 <= -15.0f || f4 >= -10.0f) && (f4 >= 15.0f || f4 <= 10.0f)) || Math.abs(f5) >= 1.5d || System.currentTimeMillis() - JCVideoPlayer.M0 <= 2000) {
                return;
            }
            if (f.b() != null) {
                f.b().b(f4);
            }
            JCVideoPlayer.M0 = System.currentTimeMillis();
        }
    }

    /* loaded from: classes3.dex */
    public class c extends TimerTask {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int currentPositionWhenPlaying = JCVideoPlayer.this.getCurrentPositionWhenPlaying();
                int duration = JCVideoPlayer.this.getDuration();
                JCVideoPlayer.this.setProgressAndText((currentPositionWhenPlaying * 100) / (duration == 0 ? 1 : duration), currentPositionWhenPlaying, duration);
            }
        }

        public c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JCVideoPlayer jCVideoPlayer = JCVideoPlayer.this;
            int i2 = jCVideoPlayer.f65554b;
            if (i2 == 3 || i2 == 5 || i2 == 4) {
                jCVideoPlayer.f65571s.post(new a());
            }
        }
    }

    public JCVideoPlayer(Context context) {
        super(context);
        this.f65553a = false;
        this.f65554b = -1;
        this.f65555c = -1;
        this.f65556d = false;
        this.f65558f = null;
        this.f65559g = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        m(context);
    }

    public static void H() {
        if (System.currentTimeMillis() - f65548v0 > 300) {
            f.a();
            fm.jiecao.jcvideoplayer_lib.b.b().d();
        }
    }

    public static void M(Context context) {
        ActionBar supportActionBar;
        if (J && (supportActionBar = e.c(context).getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.show();
        }
        if (K) {
            e.c(context).getWindow().clearFlags(1024);
        }
    }

    public static void P(Context context, Class cls, String str, Object... objArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(L0, str);
        Q(context, cls, linkedHashMap, 0, objArr);
    }

    public static void Q(Context context, Class cls, LinkedHashMap linkedHashMap, int i2, Object... objArr) {
        l(context);
        e.c(context).setRequestedOrientation(f65540n0);
        ViewGroup viewGroup = (ViewGroup) e.j(context).findViewById(16908290);
        View findViewById = viewGroup.findViewById(f65544r0);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        try {
            JCVideoPlayer jCVideoPlayer = (JCVideoPlayer) cls.getConstructor(Context.class).newInstance(context);
            jCVideoPlayer.setId(f65544r0);
            viewGroup.addView(jCVideoPlayer, new FrameLayout.LayoutParams(-1, -1));
            jCVideoPlayer.setUp(linkedHashMap, i2, 2, objArr);
            f65548v0 = System.currentTimeMillis();
            jCVideoPlayer.f65560h.performClick();
        } catch (InstantiationException e4) {
            e4.printStackTrace();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public static boolean d() {
        if (System.currentTimeMillis() - f65548v0 < 300) {
            return false;
        }
        if (f.d() != null) {
            f65548v0 = System.currentTimeMillis();
            JCVideoPlayer d4 = f.d();
            d4.s(d4.f65555c == 2 ? 8 : 10);
            f.c().F();
            return true;
        } else if (f.c() == null || !(f.c().f65555c == 2 || f.c().f65555c == 3)) {
            return false;
        } else {
            f65548v0 = System.currentTimeMillis();
            f.b().f65554b = 0;
            f.c().f();
            fm.jiecao.jcvideoplayer_lib.b.b().d();
            f.e(null);
            return true;
        }
    }

    public static void h(Context context, String str) {
        e.a(context, str);
    }

    public static void l(Context context) {
        ActionBar supportActionBar;
        if (J && (supportActionBar = e.c(context).getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.hide();
        }
        if (K) {
            e.c(context).getWindow().setFlags(1024, 1024);
        }
    }

    public static void setJcUserAction(fm.jiecao.jcvideoplayer_lib.c cVar) {
        J0 = cVar;
    }

    public void A() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStatePlaying  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 3;
        R();
    }

    public void B() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStatePreparing  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 1;
        J();
    }

    public void C(int i2, int i4) {
        this.f65554b = 2;
        this.F = i2;
        this.f65559g = i4;
        fm.jiecao.jcvideoplayer_lib.b.f65615k = e.d(this.E, i2);
        fm.jiecao.jcvideoplayer_lib.b.f65616l = this.f65556d;
        fm.jiecao.jcvideoplayer_lib.b.f65617m = this.f65557e;
        fm.jiecao.jcvideoplayer_lib.b.b().c();
    }

    public void D() {
        StringBuilder sb = new StringBuilder();
        sb.append("onVideoRendingStart  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65553a = true;
        int i2 = this.f65554b;
        if (i2 == 1 || i2 == 2 || i2 == 4) {
            if (this.f65559g != 0) {
                fm.jiecao.jcvideoplayer_lib.b.b().f65620a.seekTo(this.f65559g);
                this.f65559g = 0;
            } else {
                int f4 = e.f(getContext(), e.d(this.E, this.F));
                if (f4 != 0) {
                    fm.jiecao.jcvideoplayer_lib.b.b().f65620a.seekTo(f4);
                }
            }
            R();
            A();
        }
    }

    public void E() {
        StringBuilder sb = new StringBuilder();
        sb.append("onVideoSizeChanged  [");
        sb.append(hashCode());
        sb.append("] ");
        JCResizeTextureView jCResizeTextureView = fm.jiecao.jcvideoplayer_lib.b.f65613i;
        if (jCResizeTextureView != null) {
            jCResizeTextureView.setVideoSize(fm.jiecao.jcvideoplayer_lib.b.b().a());
        }
    }

    public void F() {
        StringBuilder sb = new StringBuilder();
        sb.append("playOnThisJcvd  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = f.d().f65554b;
        this.F = f.d().F;
        f();
        setState(this.f65554b);
        a();
    }

    public void G() {
        if (!e.d(this.E, this.F).equals(fm.jiecao.jcvideoplayer_lib.b.f65615k) || System.currentTimeMillis() - f65548v0 <= 300) {
            return;
        }
        if (f.d() == null || f.d().f65555c != 2) {
            if (f.d() == null && f.c() != null && f.c().f65555c == 2) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("release [");
            sb.append(hashCode());
            sb.append("]");
            H();
        }
    }

    public void I() {
        fm.jiecao.jcvideoplayer_lib.b.f65614j = null;
        JCResizeTextureView jCResizeTextureView = fm.jiecao.jcvideoplayer_lib.b.f65613i;
        if (jCResizeTextureView == null || jCResizeTextureView.getParent() == null) {
            return;
        }
        ((ViewGroup) fm.jiecao.jcvideoplayer_lib.b.f65613i.getParent()).removeView(fm.jiecao.jcvideoplayer_lib.b.f65613i);
    }

    public void J() {
        this.f65561i.setProgress(0);
        this.f65561i.setSecondaryProgress(0);
        this.f65563k.setText(e.k(0));
        this.f65564l.setText(e.k(0));
    }

    public void K(int i2) {
    }

    public void L(float f4, String str, int i2, String str2, int i4) {
    }

    public void N(float f4, int i2) {
    }

    public void O(int i2) {
    }

    public void R() {
        e();
        K0 = new Timer();
        c cVar = new c();
        this.f65572t = cVar;
        K0.schedule(cVar, 0L, 300L);
    }

    public void S() {
        f.a();
        StringBuilder sb = new StringBuilder();
        sb.append("startVideo [");
        sb.append(hashCode());
        sb.append("] ");
        n();
        a();
        ((AudioManager) getContext().getSystemService("audio")).requestAudioFocus(N0, 3, 2);
        e.j(getContext()).getWindow().addFlags(128);
        fm.jiecao.jcvideoplayer_lib.b.f65615k = e.d(this.E, this.F);
        fm.jiecao.jcvideoplayer_lib.b.f65616l = this.f65556d;
        fm.jiecao.jcvideoplayer_lib.b.f65617m = this.f65557e;
        B();
        f.e(this);
    }

    public void T() {
        StringBuilder sb = new StringBuilder();
        sb.append("startWindowFullscreen  [");
        sb.append(hashCode());
        sb.append("] ");
        l(getContext());
        e.c(getContext()).setRequestedOrientation(f65540n0);
        ViewGroup viewGroup = (ViewGroup) e.j(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(f65544r0);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        this.f65565m.removeView(fm.jiecao.jcvideoplayer_lib.b.f65613i);
        try {
            JCVideoPlayer jCVideoPlayer = (JCVideoPlayer) getClass().getConstructor(Context.class).newInstance(getContext());
            jCVideoPlayer.setId(f65544r0);
            viewGroup.addView(jCVideoPlayer, new FrameLayout.LayoutParams(-1, -1));
            jCVideoPlayer.setUp(this.E, this.F, 2, this.f65558f);
            jCVideoPlayer.setState(this.f65554b);
            jCVideoPlayer.a();
            f.f(jCVideoPlayer);
            x();
            f65548v0 = System.currentTimeMillis();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void U() {
        StringBuilder sb = new StringBuilder();
        sb.append("startWindowTiny  [");
        sb.append(hashCode());
        sb.append("] ");
        s(9);
        int i2 = this.f65554b;
        if (i2 == 0 || i2 == 7) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) e.j(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(f65545s0);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        this.f65565m.removeView(fm.jiecao.jcvideoplayer_lib.b.f65613i);
        try {
            JCVideoPlayer jCVideoPlayer = (JCVideoPlayer) getClass().getConstructor(Context.class).newInstance(getContext());
            jCVideoPlayer.setId(f65545s0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) StatFsHelper.f11741h, (int) StatFsHelper.f11741h);
            layoutParams.gravity = 85;
            viewGroup.addView(jCVideoPlayer, layoutParams);
            jCVideoPlayer.setUp(this.E, this.F, 3, this.f65558f);
            jCVideoPlayer.setState(this.f65554b);
            jCVideoPlayer.a();
            f.f(jCVideoPlayer);
            x();
        } catch (InstantiationException e4) {
            e4.printStackTrace();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public void a() {
        StringBuilder sb = new StringBuilder();
        sb.append("addTextureView [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65565m.addView(fm.jiecao.jcvideoplayer_lib.b.f65613i, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void b(float f4) {
        int i2;
        if (!o() || this.f65554b != 3 || (i2 = this.f65555c) == 2 || i2 == 3) {
            return;
        }
        if (f4 > 0.0f) {
            e.c(getContext()).setRequestedOrientation(0);
        } else {
            e.c(getContext()).setRequestedOrientation(8);
        }
        s(7);
        T();
    }

    public void c() {
        if (System.currentTimeMillis() - M0 > 2000 && o() && this.f65554b == 3 && this.f65555c == 2) {
            M0 = System.currentTimeMillis();
            d();
        }
    }

    public void e() {
        Timer timer = K0;
        if (timer != null) {
            timer.cancel();
        }
        c cVar = this.f65572t;
        if (cVar != null) {
            cVar.cancel();
        }
    }

    public void f() {
        e.c(getContext()).setRequestedOrientation(f65541o0);
        M(getContext());
        JCVideoPlayer b4 = f.b();
        b4.f65565m.removeView(fm.jiecao.jcvideoplayer_lib.b.f65613i);
        ((ViewGroup) e.j(getContext()).findViewById(16908290)).removeView(b4);
        f.f(null);
    }

    public void g() {
        ViewGroup viewGroup = (ViewGroup) e.j(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(f65544r0);
        View findViewById2 = viewGroup.findViewById(f65545s0);
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        if (findViewById2 != null) {
            viewGroup.removeView(findViewById2);
        }
        M(getContext());
    }

    public int getCurrentPositionWhenPlaying() {
        if (fm.jiecao.jcvideoplayer_lib.b.b().f65620a == null) {
            return 0;
        }
        int i2 = this.f65554b;
        if (i2 == 3 || i2 == 5 || i2 == 4) {
            try {
                return fm.jiecao.jcvideoplayer_lib.b.b().f65620a.getCurrentPosition();
            } catch (IllegalStateException e4) {
                e4.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public int getDuration() {
        if (fm.jiecao.jcvideoplayer_lib.b.b().f65620a == null) {
            return 0;
        }
        try {
            return fm.jiecao.jcvideoplayer_lib.b.b().f65620a.getDuration();
        } catch (IllegalStateException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public abstract int getLayoutId();

    public void i() {
    }

    public void j() {
    }

    public void k() {
    }

    public void m(Context context) {
        View.inflate(context, getLayoutId(), this);
        this.f65560h = (ImageView) findViewById(R.id.start);
        this.f65562j = (ImageView) findViewById(R.id.fullscreen);
        this.f65561i = (SeekBar) findViewById(R.id.bottom_seek_progress);
        this.f65563k = (TextView) findViewById(R.id.current);
        this.f65564l = (TextView) findViewById(R.id.total);
        this.f65567o = (ViewGroup) findViewById(R.id.layout_bottom);
        this.f65565m = (ViewGroup) findViewById(R.id.surface_container);
        this.f65566n = (ViewGroup) findViewById(R.id.layout_top);
        this.f65560h.setOnClickListener(this);
        this.f65562j.setOnClickListener(this);
        this.f65561i.setOnSeekBarChangeListener(this);
        this.f65567o.setOnClickListener(this);
        this.f65565m.setOnClickListener(this);
        this.f65565m.setOnTouchListener(this);
        this.f65568p = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f65569q = getContext().getResources().getDisplayMetrics().heightPixels;
        this.f65570r = (AudioManager) getContext().getSystemService("audio");
        this.f65571s = new Handler();
        try {
            if (o()) {
                f65541o0 = ((AppCompatActivity) context).getRequestedOrientation();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void n() {
        I();
        JCResizeTextureView jCResizeTextureView = new JCResizeTextureView(getContext());
        fm.jiecao.jcvideoplayer_lib.b.f65613i = jCResizeTextureView;
        jCResizeTextureView.setSurfaceTextureListener(fm.jiecao.jcvideoplayer_lib.b.b());
    }

    public boolean o() {
        return f.b() != null && f.b() == this;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.start) {
            StringBuilder sb = new StringBuilder();
            sb.append("onClick start [");
            sb.append(hashCode());
            sb.append("] ");
            if (TextUtils.isEmpty(e.d(this.E, this.F))) {
                Toast.makeText(getContext(), getResources().getString(R.string.no_url), 0).show();
                return;
            }
            int i2 = this.f65554b;
            if (i2 == 0 || i2 == 7) {
                if (!e.d(this.E, this.F).startsWith(com.facebook.common.util.f.f11767c) && !e.d(this.E, this.F).startsWith(net.lingala.zip4j.util.e.F0) && !e.h(getContext()) && !f65543q0) {
                    O(0);
                    return;
                }
                S();
                s(this.f65554b == 7 ? 1 : 0);
            } else if (i2 == 3) {
                s(3);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("pauseVideo [");
                sb2.append(hashCode());
                sb2.append("] ");
                fm.jiecao.jcvideoplayer_lib.b.b().f65620a.pause();
                y();
            } else if (i2 == 5) {
                s(4);
                fm.jiecao.jcvideoplayer_lib.b.b().f65620a.start();
                A();
            } else if (i2 == 6) {
                s(2);
                S();
            }
        } else if (id == R.id.fullscreen) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onClick fullscreen [");
            sb3.append(hashCode());
            sb3.append("] ");
            if (this.f65554b == 6) {
                return;
            }
            if (this.f65555c == 2) {
                d();
                return;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("toFullscreenActivity [");
            sb4.append(hashCode());
            sb4.append("] ");
            s(7);
            T();
        } else if (id == R.id.surface_container && this.f65554b == 7) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("onClick surfaceContainer State=Error [");
            sb5.append(hashCode());
            sb5.append("] ");
            S();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5 = this.f65555c;
        if (i5 != 2 && i5 != 3) {
            if (this.G != 0 && this.H != 0) {
                int size = View.MeasureSpec.getSize(i2);
                int i6 = (int) ((size * this.H) / this.G);
                setMeasuredDimension(size, i6);
                getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
                return;
            }
            super.onMeasure(i2, i4);
            return;
        }
        super.onMeasure(i2, i4);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z3) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        StringBuilder sb = new StringBuilder();
        sb.append("bottomProgress onStartTrackingTouch [");
        sb.append(hashCode());
        sb.append("] ");
        e();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        StringBuilder sb = new StringBuilder();
        sb.append("bottomProgress onStopTrackingTouch [");
        sb.append(hashCode());
        sb.append("] ");
        s(5);
        R();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        int i2 = this.f65554b;
        if (i2 == 3 || i2 == 5) {
            int progress = (seekBar.getProgress() * getDuration()) / 100;
            fm.jiecao.jcvideoplayer_lib.b.b().f65620a.seekTo(progress);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("seekTo ");
            sb2.append(progress);
            sb2.append(" [");
            sb2.append(hashCode());
            sb2.append("] ");
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int streamMaxVolume;
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        if (view.getId() == R.id.surface_container) {
            int action = motionEvent.getAction();
            if (action == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("onTouch surfaceContainer actionDown [");
                sb.append(hashCode());
                sb.append("] ");
                this.f65573u = true;
                this.f65574v = x3;
                this.f65575w = y3;
                this.f65576x = false;
                this.f65577y = false;
                this.f65578z = false;
            } else if (action == 1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onTouch surfaceContainer actionUp [");
                sb2.append(hashCode());
                sb2.append("] ");
                this.f65573u = false;
                j();
                k();
                i();
                if (this.f65577y) {
                    s(12);
                    fm.jiecao.jcvideoplayer_lib.b.b().f65620a.seekTo(this.D);
                    int duration = getDuration();
                    this.f65561i.setProgress((this.D * 100) / (duration != 0 ? duration : 1));
                }
                if (this.f65576x) {
                    s(11);
                }
                R();
            } else if (action == 2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onTouch surfaceContainer actionMove [");
                sb3.append(hashCode());
                sb3.append("] ");
                float f4 = x3 - this.f65574v;
                float f5 = y3 - this.f65575w;
                float abs = Math.abs(f4);
                float abs2 = Math.abs(f5);
                if (this.f65555c == 2 && !this.f65577y && !this.f65576x && !this.f65578z && (abs > 80.0f || abs2 > 80.0f)) {
                    e();
                    if (abs >= 80.0f) {
                        if (this.f65554b != 7) {
                            this.f65577y = true;
                            this.A = getCurrentPositionWhenPlaying();
                        }
                    } else if (this.f65574v < this.f65568p * 0.5f) {
                        this.f65578z = true;
                        float f6 = e.c(getContext()).getWindow().getAttributes().screenBrightness;
                        if (f6 < 0.0f) {
                            try {
                                this.C = Settings.System.getInt(getContext().getContentResolver(), "screen_brightness");
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("current system brightness: ");
                                sb4.append(this.C);
                            } catch (Settings.SettingNotFoundException e4) {
                                e4.printStackTrace();
                            }
                        } else {
                            this.C = f6 * 255.0f;
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("current activity brightness: ");
                            sb5.append(this.C);
                        }
                    } else {
                        this.f65576x = true;
                        this.B = this.f65570r.getStreamVolume(3);
                    }
                }
                if (this.f65577y) {
                    int duration2 = getDuration();
                    int i2 = (int) (this.A + ((duration2 * f4) / this.f65568p));
                    this.D = i2;
                    if (i2 > duration2) {
                        this.D = duration2;
                    }
                    L(f4, e.k(this.D), this.D, e.k(duration2), duration2);
                }
                if (this.f65576x) {
                    f5 = -f5;
                    this.f65570r.setStreamVolume(3, this.B + ((int) (((this.f65570r.getStreamMaxVolume(3) * f5) * 3.0f) / this.f65569q)), 0);
                    N(-f5, (int) (((this.B * 100) / streamMaxVolume) + (((f5 * 3.0f) * 100.0f) / this.f65569q)));
                }
                if (this.f65578z) {
                    float f7 = -f5;
                    WindowManager.LayoutParams attributes = e.c(getContext()).getWindow().getAttributes();
                    float f8 = this.C;
                    float f9 = (int) (((f7 * 255.0f) * 3.0f) / this.f65569q);
                    if ((f8 + f9) / 255.0f >= 1.0f) {
                        attributes.screenBrightness = 1.0f;
                    } else if ((f8 + f9) / 255.0f <= 0.0f) {
                        attributes.screenBrightness = 0.01f;
                    } else {
                        attributes.screenBrightness = (f8 + f9) / 255.0f;
                    }
                    e.c(getContext()).getWindow().setAttributes(attributes);
                    K((int) (((this.C * 100.0f) / 255.0f) + (((f7 * 3.0f) * 100.0f) / this.f65569q)));
                }
            }
        }
        return false;
    }

    public void p() {
        Runtime.getRuntime().gc();
        StringBuilder sb = new StringBuilder();
        sb.append("onAutoCompletion  [");
        sb.append(hashCode());
        sb.append("] ");
        s(6);
        k();
        j();
        i();
        e();
        v();
        if (this.f65555c == 2) {
            d();
        }
        e.i(getContext(), e.d(this.E, this.F), 0);
    }

    public void q() {
        StringBuilder sb = new StringBuilder();
        sb.append("onCompletion  [");
        sb.append(hashCode());
        sb.append("] ");
        int i2 = this.f65554b;
        if (i2 == 3 || i2 == 5) {
            e.i(getContext(), e.d(this.E, this.F), getCurrentPositionWhenPlaying());
        }
        e();
        x();
        this.f65565m.removeView(fm.jiecao.jcvideoplayer_lib.b.f65613i);
        fm.jiecao.jcvideoplayer_lib.b.b().f65621b = 0;
        fm.jiecao.jcvideoplayer_lib.b.b().f65622c = 0;
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(N0);
        e.j(getContext()).getWindow().clearFlags(128);
        g();
        e.c(getContext()).setRequestedOrientation(f65541o0);
        fm.jiecao.jcvideoplayer_lib.b.f65613i = null;
        fm.jiecao.jcvideoplayer_lib.b.f65614j = null;
        this.f65553a = false;
    }

    public void r(int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("onError ");
        sb.append(i2);
        sb.append(" - ");
        sb.append(i4);
        sb.append(" [");
        sb.append(hashCode());
        sb.append("] ");
        if (i2 == 38 || i2 == -38 || i4 == -38) {
            return;
        }
        w();
        if (o()) {
            fm.jiecao.jcvideoplayer_lib.b.b().d();
        }
    }

    public void s(int i2) {
        LinkedHashMap linkedHashMap;
        if (J0 == null || !o() || (linkedHashMap = this.E) == null) {
            return;
        }
        J0.a(i2, e.d(linkedHashMap, this.F), this.f65555c, this.f65558f);
    }

    public void setBufferProgress(int i2) {
        if (i2 != 0) {
            this.f65561i.setSecondaryProgress(i2);
        }
    }

    public void setProgressAndText(int i2, int i4, int i5) {
        if (!this.f65573u && i2 != 0) {
            this.f65561i.setProgress(i2);
        }
        if (i4 != 0) {
            this.f65563k.setText(e.k(i4));
        }
        this.f65564l.setText(e.k(i5));
    }

    public void setState(int i2) {
        setState(i2, 0, 0);
    }

    public void setUp(String str, int i2, Object... objArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(L0, str);
        setUp(linkedHashMap, 0, i2, objArr);
    }

    public void t(int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("onInfo what - ");
        sb.append(i2);
        sb.append(" extra - ");
        sb.append(i4);
        if (i2 == 701) {
            int i5 = this.f65554b;
            if (i5 == 4) {
                return;
            }
            I0 = i5;
            z();
        } else if (i2 != 702) {
            if (i2 == 3) {
                D();
            }
        } else {
            int i6 = I0;
            if (i6 != -1) {
                if (this.f65554b == 4) {
                    setState(i6);
                }
                I0 = -1;
            }
        }
    }

    public void u() {
    }

    public void v() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStateAutoComplete  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 6;
        e();
        this.f65561i.setProgress(100);
        this.f65563k.setText(this.f65564l.getText());
    }

    public void w() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStateError  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 7;
        e();
    }

    public void x() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStateNormal  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 0;
        e();
        if (o()) {
            fm.jiecao.jcvideoplayer_lib.b.b().d();
        }
    }

    public void y() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStatePause  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 5;
        R();
    }

    public void z() {
        StringBuilder sb = new StringBuilder();
        sb.append("onStatePlaybackBufferingStart  [");
        sb.append(hashCode());
        sb.append("] ");
        this.f65554b = 4;
        R();
    }

    public void setState(int i2, int i4, int i5) {
        switch (i2) {
            case 0:
                x();
                return;
            case 1:
                B();
                return;
            case 2:
                C(i4, i5);
                return;
            case 3:
                A();
                return;
            case 4:
                z();
                return;
            case 5:
                y();
                return;
            case 6:
                v();
                return;
            case 7:
                w();
                return;
            default:
                return;
        }
    }

    public void setUp(LinkedHashMap linkedHashMap, int i2, int i4, Object... objArr) {
        if (this.E == null || TextUtils.isEmpty(e.d(linkedHashMap, this.F)) || !TextUtils.equals(e.d(this.E, this.F), e.d(linkedHashMap, this.F))) {
            this.E = linkedHashMap;
            this.F = i2;
            this.f65555c = i4;
            this.f65558f = objArr;
            this.f65557e = null;
            this.f65553a = false;
            x();
        }
    }

    public JCVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65553a = false;
        this.f65554b = -1;
        this.f65555c = -1;
        this.f65556d = false;
        this.f65558f = null;
        this.f65559g = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        m(context);
    }
}
