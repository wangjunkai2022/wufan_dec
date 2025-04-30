package com.join.android.app.component.video;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.e1;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u0;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.join.mgps.customview.EqualizerView;
import com.join.mgps.customview.t;
import com.join.mgps.pref.h;
import com.papa.gsyvideoplayer.utils.l;
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class StandardVideoViewJC extends JCVideoPlayer {
    protected static Timer D1 = null;
    public static boolean E1 = true;
    private static boolean F1 = true;
    t A1;
    private final int B1;
    public String C1;
    public ImageView O0;
    public ProgressBar P0;
    public ProgressBar Q0;
    public TextView R0;
    public SimpleDraweeView S0;
    public ImageView T0;
    public LinearLayout U0;
    public ImageView V0;
    public TextView W0;
    public TextView X0;
    public TextView Y0;
    public PopupWindow Z0;

    /* renamed from: a1  reason: collision with root package name */
    protected f f17663a1;

    /* renamed from: b1  reason: collision with root package name */
    protected Dialog f17664b1;

    /* renamed from: c1  reason: collision with root package name */
    protected ProgressBar f17665c1;

    /* renamed from: d1  reason: collision with root package name */
    protected TextView f17666d1;

    /* renamed from: e1  reason: collision with root package name */
    protected TextView f17667e1;

    /* renamed from: f1  reason: collision with root package name */
    protected ImageView f17668f1;

    /* renamed from: g1  reason: collision with root package name */
    protected Dialog f17669g1;

    /* renamed from: h1  reason: collision with root package name */
    protected ProgressBar f17670h1;

    /* renamed from: i1  reason: collision with root package name */
    protected TextView f17671i1;

    /* renamed from: j1  reason: collision with root package name */
    protected ImageView f17672j1;

    /* renamed from: k1  reason: collision with root package name */
    protected Dialog f17673k1;

    /* renamed from: l1  reason: collision with root package name */
    protected ProgressBar f17674l1;

    /* renamed from: m1  reason: collision with root package name */
    protected TextView f17675m1;

    /* renamed from: n1  reason: collision with root package name */
    private boolean f17676n1;

    /* renamed from: o1  reason: collision with root package name */
    private BroadcastReceiver f17677o1;

    /* renamed from: p1  reason: collision with root package name */
    SimpleDraweeView f17678p1;

    /* renamed from: q1  reason: collision with root package name */
    View f17679q1;

    /* renamed from: r1  reason: collision with root package name */
    View f17680r1;

    /* renamed from: s1  reason: collision with root package name */
    TextView f17681s1;

    /* renamed from: t1  reason: collision with root package name */
    int f17682t1;

    /* renamed from: u1  reason: collision with root package name */
    long f17683u1;

    /* renamed from: v1  reason: collision with root package name */
    public ImageView f17684v1;

    /* renamed from: w1  reason: collision with root package name */
    protected ImageView f17685w1;

    /* renamed from: x1  reason: collision with root package name */
    protected boolean f17686x1;

    /* renamed from: y1  reason: collision with root package name */
    private boolean f17687y1;

    /* renamed from: z1  reason: collision with root package name */
    private Handler f17688z1;

    /* loaded from: classes2.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    int intExtra = (intent.getIntExtra(SimulatorExitPlayActivity_.E, 0) * 100) / intent.getIntExtra("scale", 100);
                    if (intExtra < 15) {
                        StandardVideoViewJC.this.V0.setBackgroundResource(R.drawable.jc_battery_level_10);
                    } else if (intExtra >= 15 && intExtra < 40) {
                        StandardVideoViewJC.this.V0.setBackgroundResource(R.drawable.jc_battery_level_30);
                    } else if (intExtra >= 40 && intExtra < 60) {
                        StandardVideoViewJC.this.V0.setBackgroundResource(R.drawable.jc_battery_level_50);
                    } else if (intExtra >= 60 && intExtra < 80) {
                        StandardVideoViewJC.this.V0.setBackgroundResource(R.drawable.jc_battery_level_70);
                    } else if (intExtra >= 80 && intExtra < 95) {
                        StandardVideoViewJC.this.V0.setBackgroundResource(R.drawable.jc_battery_level_90);
                    } else if (intExtra >= 95 && intExtra <= 100) {
                        StandardVideoViewJC.this.V0.setBackgroundResource(R.drawable.jc_battery_level_100);
                    }
                    StandardVideoViewJC.this.getContext().unregisterReceiver(StandardVideoViewJC.this.f17677o1);
                    StandardVideoViewJC.this.f17676n1 = false;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StandardVideoViewJC.this.f65560h.performClick();
            StandardVideoViewJC.this.f17680r1.setVisibility(4);
        }
    }

    /* loaded from: classes2.dex */
    class c extends Handler {
        c() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            StandardVideoViewJC.this.j0();
        }
    }

    /* loaded from: classes2.dex */
    class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17692a;

        d(int i2) {
            this.f17692a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f17692a == -1) {
                if (StandardVideoViewJC.this.getContext() instanceof Activity) {
                    StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
                    if (standardVideoViewJC.f17686x1) {
                        ((Activity) standardVideoViewJC.getContext()).finish();
                    }
                }
            } else {
                StandardVideoViewJC.this.S();
            }
            StandardVideoViewJC.this.A1.dismiss();
        }
    }

    /* loaded from: classes2.dex */
    class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17694a;

        e(int i2) {
            this.f17694a = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f17694a == 0 && (StandardVideoViewJC.this.getContext() instanceof Activity)) {
                StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
                if (standardVideoViewJC.f17686x1) {
                    ((Activity) standardVideoViewJC.getContext()).finish();
                }
            }
            StandardVideoViewJC.this.A1.dismiss();
        }
    }

    /* loaded from: classes2.dex */
    public class f extends TimerTask {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                StandardVideoViewJC.this.f65567o.setVisibility(4);
                StandardVideoViewJC.this.f65566n.setVisibility(4);
                StandardVideoViewJC.this.f65560h.setVisibility(4);
                PopupWindow popupWindow = StandardVideoViewJC.this.Z0;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
                if (standardVideoViewJC.f65555c != 3) {
                    standardVideoViewJC.P0.setVisibility(0);
                }
                StandardVideoViewJC.this.q0(4);
            }
        }

        public f() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
            int i2 = standardVideoViewJC.f65554b;
            if (i2 == 0 || i2 == 7 || i2 == 6 || standardVideoViewJC.getContext() == null || !(StandardVideoViewJC.this.getContext() instanceof Activity)) {
                return;
            }
            ((Activity) StandardVideoViewJC.this.getContext()).runOnUiThread(new a());
        }
    }

    public StandardVideoViewJC(Context context) {
        super(context);
        this.f17676n1 = false;
        this.f17677o1 = new a();
        this.f17686x1 = false;
        this.f17687y1 = false;
        this.f17688z1 = new c();
        this.B1 = 13;
        this.C1 = "";
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void A() {
        super.A();
        j0();
        r0();
        if (this.f17687y1) {
            u0.e("JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3");
            setMute(true);
            this.f17687y1 = false;
            return;
        }
        u0.e("JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3, mute=" + E1);
        setMute(E1);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void B() {
        super.B();
        l0();
        r0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void C(int i2, int i4) {
        super.C(i2, i4);
        this.Q0.setVisibility(0);
        this.f65560h.setVisibility(4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void D() {
        super.D();
        setAllControlsVisible(0, 4, 4, 4, 4, 4, 0);
        r0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void J() {
        super.J();
        this.P0.setProgress(0);
        this.P0.setSecondaryProgress(0);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void K(int i2) {
        super.K(i2);
        if (this.f17673k1 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_brightness, (ViewGroup) null);
            this.f17675m1 = (TextView) inflate.findViewById(R.id.tv_brightness);
            this.f17674l1 = (ProgressBar) inflate.findViewById(R.id.brightness_progressbar);
            this.f17673k1 = m0(inflate);
        }
        if (!this.f17673k1.isShowing()) {
            this.f17673k1.show();
        }
        if (i2 > 100) {
            i2 = 100;
        } else if (i2 < 0) {
            i2 = 0;
        }
        TextView textView = this.f17675m1;
        textView.setText(i2 + "%");
        this.f17674l1.setProgress(i2);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void L(float f4, String str, int i2, String str2, int i4) {
        super.L(f4, str, i2, str2, i4);
        if (this.f17664b1 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_progress, (ViewGroup) null);
            this.f17665c1 = (ProgressBar) inflate.findViewById(R.id.duration_progressbar);
            this.f17666d1 = (TextView) inflate.findViewById(R.id.tv_current);
            this.f17667e1 = (TextView) inflate.findViewById(R.id.tv_duration);
            this.f17668f1 = (ImageView) inflate.findViewById(R.id.duration_image_tip);
            this.f17664b1 = m0(inflate);
        }
        if (!this.f17664b1.isShowing()) {
            this.f17664b1.show();
        }
        this.f17666d1.setText(str);
        TextView textView = this.f17667e1;
        textView.setText(" / " + str2);
        this.f17665c1.setProgress(i4 <= 0 ? 0 : (i2 * 100) / i4);
        if (f4 > 0.0f) {
            this.f17668f1.setBackgroundResource(R.drawable.jc_forward_icon);
        } else {
            this.f17668f1.setBackgroundResource(R.drawable.jc_backward_icon);
        }
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void N(float f4, int i2) {
        super.N(f4, i2);
        if (this.f17669g1 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_volume, (ViewGroup) null);
            this.f17672j1 = (ImageView) inflate.findViewById(R.id.volume_image_tip);
            this.f17671i1 = (TextView) inflate.findViewById(R.id.tv_volume);
            this.f17670h1 = (ProgressBar) inflate.findViewById(R.id.volume_progressbar);
            this.f17669g1 = m0(inflate);
        }
        if (!this.f17669g1.isShowing()) {
            this.f17669g1.show();
        }
        if (i2 <= 0) {
            this.f17672j1.setBackgroundResource(R.drawable.jc_close_volume);
        } else {
            this.f17672j1.setBackgroundResource(R.drawable.jc_add_volume);
        }
        if (i2 > 100) {
            i2 = 100;
        } else if (i2 < 0) {
            i2 = 0;
        }
        TextView textView = this.f17671i1;
        textView.setText(i2 + "%");
        this.f17670h1.setProgress(i2);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void O(int i2) {
        String string;
        String str;
        t tVar;
        if (this.f65554b == 3) {
            s(3);
            fm.jiecao.jcvideoplayer_lib.b.b().f65620a.pause();
            y();
        }
        if (this.A1 == null) {
            t tVar2 = new t(getContext(), R.style.MyDialog);
            this.A1 = tVar2;
            tVar2.setContentView(R.layout.bind_dialog);
        }
        Button button = (Button) this.A1.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.A1.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.A1.findViewById(R.id.tip_title);
        View findViewById = this.A1.findViewById(R.id.divider);
        TextView textView2 = (TextView) this.A1.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.A1.findViewById(R.id.dialog_desci);
        getResources().getString(R.string.tips_not_wifi_confirm);
        getResources().getString(R.string.tips_not_wifi_cancel);
        getResources().getString(R.string.tips_not_wifi);
        int b4 = e1.b(getContext());
        if (b4 == 0) {
            findViewById.setVisibility(0);
            button.setVisibility(0);
        } else if (b4 != 1) {
            findViewById.setVisibility(8);
            button.setVisibility(8);
            string = getResources().getString(R.string.network_conn_failed);
            str = "关闭";
            textView.setText("网络提示");
            textView2.setText(string);
            textView3.setVisibility(8);
            button2.setText(str);
            button.setText("取消");
            button2.setOnClickListener(new d(b4));
            button.setOnClickListener(new e(b4));
            tVar = this.A1;
            if (tVar != null || tVar.isShowing()) {
            }
            this.A1.show();
            return;
        }
        str = "继续观看";
        string = "您已切换到数据网络，是否继续观看视频？";
        textView.setText("网络提示");
        textView2.setText(string);
        textView3.setVisibility(8);
        button2.setText(str);
        button.setText("取消");
        button2.setOnClickListener(new d(b4));
        button.setOnClickListener(new e(b4));
        tVar = this.A1;
        if (tVar != null) {
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void T() {
        super.T();
        if (this.f65567o.getVisibility() == 0) {
            i0();
        }
    }

    public boolean X() {
        int e4 = h.n(getContext()).e();
        return e4 != 1 ? e4 != 2 : l.i(getContext());
    }

    public void Y() {
        Timer timer = D1;
        if (timer != null) {
            timer.cancel();
        }
        f fVar = this.f17663a1;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    public void Z(int i2) {
        ViewGroup.LayoutParams layoutParams = this.f65560h.getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i2;
        ViewGroup.LayoutParams layoutParams2 = this.Q0.getLayoutParams();
        layoutParams2.height = i2;
        layoutParams2.width = i2;
    }

    public void a0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            s0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            s0();
        }
    }

    public void b0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            s0();
        } else if (i2 == 2) {
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            s0();
        }
        this.f17679q1.setVisibility(4);
    }

    public void c0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            s0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            s0();
        }
    }

    public void d0() {
        r0();
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            s0();
        } else if (i2 == 2) {
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            s0();
        }
        this.f17680r1.setVisibility(4);
        this.f17679q1.setVisibility(4);
    }

    public void e0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
        }
    }

    public void f0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
        }
    }

    public void g0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            s0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            s0();
        }
    }

    public String getCurrentUrl() {
        try {
            return this.C1;
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public int getLayoutId() {
        return R.layout.standard_video_view;
    }

    public void h0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 4, 0, 4, 4, 4);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 0, 4, 0, 4, 4, 4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void i() {
        super.i();
        Dialog dialog = this.f17673k1;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void i0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 0);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 0);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void j() {
        super.j();
        Dialog dialog = this.f17664b1;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void j0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
            this.f17679q1.setVisibility(0);
            this.S0.setVisibility(8);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 4, 4, 4, 4, 4, 4);
            s0();
            this.f17679q1.setVisibility(4);
            this.f65560h.setVisibility(4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void k() {
        super.k();
        Dialog dialog = this.f17669g1;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void k0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        }
    }

    public void l0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        } else if (i2 == 2) {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        }
        this.f17680r1.setVisibility(4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void m(Context context) {
        super.m(context);
        JCVideoPlayer.f65540n0 = 6;
        this.U0 = (LinearLayout) findViewById(R.id.battery_time_layout);
        this.P0 = (ProgressBar) findViewById(R.id.bottom_progress);
        this.R0 = (TextView) findViewById(R.id.title);
        this.O0 = (ImageView) findViewById(R.id.back);
        this.S0 = (SimpleDraweeView) findViewById(R.id.thumb);
        this.Q0 = (ProgressBar) findViewById(R.id.loading);
        this.T0 = (ImageView) findViewById(R.id.back_tiny);
        this.V0 = (ImageView) findViewById(R.id.battery_level);
        this.W0 = (TextView) findViewById(R.id.video_current_time);
        this.X0 = (TextView) findViewById(R.id.retry_text);
        this.Y0 = (TextView) findViewById(R.id.clarity);
        this.f17678p1 = (SimpleDraweeView) findViewById(R.id.loadingM);
        this.f17681s1 = (TextView) findViewById(R.id.progressTextShow);
        JCVideoPlayer.f65543q0 = true;
        ((EqualizerView) findViewById(R.id.equalizer_view)).a();
        this.f17679q1 = findViewById(R.id.layout_bottom2);
        View findViewById = findViewById(R.id.playFinishCover);
        this.f17680r1 = findViewById;
        findViewById.setOnClickListener(new b());
        MyImageLoader.m(this.f17678p1, Uri.parse("res:///2131234008"));
        SimpleDraweeView simpleDraweeView = this.S0;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(this);
        }
        ImageView imageView = this.O0;
        if (imageView != null) {
            imageView.setOnClickListener(this);
        }
        ImageView imageView2 = this.T0;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
        }
        TextView textView = this.Y0;
        if (textView != null) {
            textView.setOnClickListener(this);
        }
        n0();
    }

    public Dialog m0(View view) {
        Dialog dialog = new Dialog(getContext(), R.style.jc_style_dialog_progress);
        dialog.setContentView(view);
        Window window = dialog.getWindow();
        window.addFlags(8);
        window.addFlags(32);
        window.addFlags(16);
        window.setLayout(-2, -2);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        window.setAttributes(attributes);
        return dialog;
    }

    void n0() {
        this.f17684v1 = (ImageView) findViewById(R.id.mute);
        this.f17685w1 = (ImageView) findViewById(R.id.autoPlay);
        this.f17684v1.setOnClickListener(this);
        this.f17685w1.setOnClickListener(this);
        setMuteView(E1);
        this.f17685w1.setSelected(h.n(getContext()).a());
    }

    public void o0() {
        int i2 = this.f65554b;
        if (i2 == 1) {
            if (this.f65567o.getVisibility() == 0) {
                k0();
            }
        } else if (i2 == 3) {
            if (this.f65567o.getVisibility() == 0) {
                i0();
            }
        } else if (i2 == 5) {
            if (this.f65567o.getVisibility() == 0) {
                e0();
            }
        } else if (i2 == 6) {
            if (this.f65567o.getVisibility() == 0) {
                a0();
            }
        } else if (i2 == 4 && this.f65567o.getVisibility() == 0) {
            g0();
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.fullscreen) {
            if (Build.VERSION.SDK_INT <= 19) {
                return;
            }
            int i2 = this.f65555c;
            int i4 = i2 == 2 ? 8 : 10;
            fm.jiecao.jcvideoplayer_lib.c cVar = JCVideoPlayer.J0;
            if (cVar != null) {
                cVar.a(i4, this.C1, i2, this.f65558f);
            }
        } else if (id == R.id.autoPlay) {
            boolean z3 = !this.f17685w1.isSelected();
            this.f17685w1.setSelected(z3);
            h.n(getContext()).P(z3);
            i2.a(getContext()).b(z3 ? "已开启WiFi下自动播放" : "已关闭WiFi下自动播放");
        }
        super.onClick(view);
        if (id == R.id.thumb) {
            if (TextUtils.isEmpty(getCurrentUrl())) {
                Toast.makeText(getContext(), getResources().getString(R.string.no_url), 0).show();
                return;
            }
            int i5 = this.f65554b;
            if (i5 == 0) {
                s(101);
                S();
            } else if (i5 == 6) {
                p0();
            } else if (i5 == 1) {
                this.S0.setVisibility(4);
                this.f65562j.performClick();
            }
        } else if (id == R.id.surface_container) {
            r0();
        } else if (id == R.id.back) {
            int i6 = this.f65555c;
            int i7 = i6 != 2 ? 10 : 8;
            fm.jiecao.jcvideoplayer_lib.c cVar2 = JCVideoPlayer.J0;
            if (cVar2 != null) {
                cVar2.a(i7, this.C1, i6, this.f65558f);
            }
            JCVideoPlayer.d();
        } else if (id == R.id.back_tiny) {
            fm.jiecao.jcvideoplayer_lib.c cVar3 = JCVideoPlayer.J0;
            if (cVar3 != null) {
                cVar3.a(10, this.C1, this.f65555c, this.f65558f);
            }
            JCVideoPlayer.d();
        } else if (id != R.id.clarity && id == R.id.mute) {
            u0.e("JieCaoVideoPlayer,onClick-mute--> mute=" + E1);
            setMute(E1 ^ true);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        Y();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        r0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id = view.getId();
        if (id == R.id.surface_container) {
            if (motionEvent.getAction() == 1) {
                r0();
                if (this.f65577y) {
                    int duration = getDuration();
                    this.P0.setProgress((this.D * 100) / (duration != 0 ? duration : 1));
                }
                if (!this.f65577y && !this.f65576x) {
                    s(102);
                    p0();
                }
            }
        } else if (id == R.id.bottom_seek_progress) {
            int action = motionEvent.getAction();
            if (action == 0) {
                Y();
            } else if (action == 1) {
                r0();
            }
        }
        return super.onTouch(view, motionEvent);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void p() {
        super.p();
        Y();
    }

    public void p0() {
        this.f65567o.getVisibility();
        int i2 = this.f65554b;
        if (i2 == 1) {
            if (this.f65567o.getVisibility() == 0) {
                k0();
                return;
            }
            l0();
            setSystemTimeAndBattery();
        } else if (i2 != 3) {
            if (i2 == 5) {
                if (this.f65567o.getVisibility() == 0) {
                    e0();
                } else {
                    f0();
                }
            } else if (i2 == 4) {
                if (this.f65567o.getVisibility() == 0) {
                    g0();
                } else {
                    h0();
                }
            }
        } else if (this.f65567o.getVisibility() == 0) {
            i0();
        } else {
            int i4 = this.f65555c;
            if (i4 == 0 || i4 == 1) {
                this.f65562j.performClick();
            } else if (i4 != 2) {
            } else {
                setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
                s0();
                this.f17679q1.setVisibility(4);
            }
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void q() {
        super.q();
        Y();
        PopupWindow popupWindow = this.Z0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public void q0(int i2) {
        if (JCVideoPlayer.J0 == null || !o()) {
            return;
        }
        JCVideoPlayer.J0.a(13, this.C1, this.f65555c, Integer.valueOf(i2));
    }

    public void r0() {
        Y();
        D1 = new Timer();
        f fVar = new f();
        this.f17663a1 = fVar;
        D1.schedule(fVar, 2500L);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void s(int i2) {
        super.s(i2);
        if (i2 != 4) {
            if (i2 != 10) {
                if (i2 == 7) {
                    u0.e("JieCaoVideoPlayer,onEvent-ON_ENTER_FULLSCREEN--> mute=" + E1);
                    F1 = E1;
                    setMute(false);
                    return;
                } else if (i2 != 8) {
                    return;
                }
            }
            u0.e("JieCaoVideoPlayer,onEvent-ON_QUIT_FULLSCREEN--> mute=" + E1);
            setMute(F1);
            if (this.f65554b == 3) {
                this.S0.setVisibility(8);
            }
        } else if (this.f17687y1) {
            u0.e("JieCaoVideoPlayer,onEvent-ON_CLICK_RESUME--> mute=" + E1);
            setMute(true);
            this.f17687y1 = false;
        }
    }

    public void s0() {
        int i2 = this.f65554b;
        if (i2 != 3 && i2 != 7 && i2 == 6) {
            this.f65560h.setVisibility(4);
            this.f17680r1.setVisibility(0);
        }
        ImageView imageView = this.f65560h;
        int i4 = this.f65554b;
        if (i4 == 3) {
            imageView.setImageResource(R.drawable.video_pause_normal_video);
        } else if (i4 == 7) {
            imageView.setImageResource(R.drawable.video_click_error_selector);
        } else {
            imageView.setImageResource(R.drawable.video_play_normal_video);
        }
        int i5 = this.f65555c;
        if (i5 == 0 || i5 == 1) {
            this.f65560h.setVisibility(4);
        } else if (i5 != 2) {
        } else {
            this.f65560h.setVisibility(0);
        }
    }

    public void setAllControlsVisible(int i2, int i4, int i5, int i6, int i7, int i8, int i9) {
        int i10;
        if (!this.f65553a && (i10 = this.f65555c) != 2 && i10 != 3) {
            i7 = 0;
        }
        this.f65566n.setVisibility(i2);
        this.f65567o.setVisibility(i4);
        this.f65560h.setVisibility(i5);
        this.Q0.setVisibility(4);
        this.f17678p1.setVisibility(i6);
        this.S0.setVisibility(i7);
        if (this.f65555c == 2) {
            this.f65567o.setVisibility(i4);
        } else {
            this.f65567o.setVisibility(4);
        }
        q0(i4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setBufferProgress(int i2) {
        super.setBufferProgress(i2);
        if (i2 != 0) {
            this.P0.setSecondaryProgress(i2);
        }
    }

    public void setMute(boolean z3) {
        u0.e("JieCaoVideoPlayer,setMute--> mute=" + z3);
        setMuteOnly(z3);
        StandardVideoView.D = z3;
        E1 = z3;
    }

    public void setMuteOnly(boolean z3) {
        u0.e("JieCaoVideoPlayer,setMuteOnly--> mute=" + z3);
        try {
            fm.jiecao.jcvideoplayer_lib.b.b().f65620a.setAudioStreamType(3);
            if (z3) {
                fm.jiecao.jcvideoplayer_lib.b.b().f65620a.setVolume(0.0f, 0.0f);
            } else {
                fm.jiecao.jcvideoplayer_lib.b.b().f65620a.setVolume(1.0f, 1.0f);
            }
            setMuteView(z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void setMuteView(boolean z3) {
        if (z3) {
            this.f17684v1.setImageResource(R.drawable.mute_off);
        } else {
            this.f17684v1.setImageResource(R.drawable.mute_on);
        }
    }

    public void setMuteWhenPlay(boolean z3) {
        this.f17687y1 = z3;
    }

    public void setNoneNetFinishActivity(boolean z3) {
        this.f17686x1 = z3;
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setProgressAndText(int i2, int i4, int i5) {
        super.setProgressAndText(i2, i4, i5);
        if (i2 != 0) {
            this.P0.setProgress(i2);
        }
        this.f17682t1 = i4;
        if (i4 > 0) {
            this.f17683u1 = i5 - i4;
            this.f17681s1.setText(com.papa.gsyvideoplayer.utils.b.r(i5 - i4));
        }
    }

    public void setSystemTimeAndBattery() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        Date date = new Date();
        TextView textView = this.W0;
        if (textView != null) {
            textView.setText(simpleDateFormat.format(date));
        }
        if (this.f17676n1) {
            return;
        }
        getContext().registerReceiver(this.f17677o1, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(String str, int i2, Object... objArr) {
        this.C1 = str;
        super.setUp(str, i2, objArr);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void v() {
        super.v();
        a0();
        Y();
        this.P0.setProgress(100);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void w() {
        super.w();
        c0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void x() {
        super.x();
        d0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void y() {
        super.y();
        f0();
        Y();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void z() {
        super.z();
        h0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(LinkedHashMap linkedHashMap, int i2, int i4, Object... objArr) {
        super.setUp(linkedHashMap, i2, i4, objArr);
        if (objArr.length == 0) {
            return;
        }
        this.R0.setText(objArr[0].toString());
        int i5 = this.f65555c;
        if (i5 == 2) {
            this.f65562j.setImageResource(R.drawable.mediacontroller_fullscreen_out);
            this.O0.setVisibility(0);
            this.T0.setVisibility(4);
            LinearLayout linearLayout = this.U0;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            if (this.Y0 != null) {
                if (linkedHashMap.size() == 1) {
                    this.Y0.setVisibility(8);
                } else {
                    this.Y0.setText(getCurrentUrl());
                    this.Y0.setVisibility(0);
                }
            }
            Z((int) getResources().getDimension(R.dimen.jc_start_button_w_h_fullscreen));
        } else if (i5 == 0 || i5 == 1) {
            this.f65562j.setImageResource(R.drawable.mediacontroller_fullscreen_in);
            this.O0.setVisibility(8);
            this.T0.setVisibility(4);
            Z((int) getResources().getDimension(R.dimen.jc_start_button_w_h_normal));
            LinearLayout linearLayout2 = this.U0;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            TextView textView = this.Y0;
            if (textView != null) {
                textView.setVisibility(8);
            }
        } else if (i5 == 3) {
            this.T0.setVisibility(0);
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
            LinearLayout linearLayout3 = this.U0;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            TextView textView2 = this.Y0;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        setSystemTimeAndBattery();
    }

    public StandardVideoViewJC(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17676n1 = false;
        this.f17677o1 = new a();
        this.f17686x1 = false;
        this.f17687y1 = false;
        this.f17688z1 = new c();
        this.B1 = 13;
        this.C1 = "";
    }
}
