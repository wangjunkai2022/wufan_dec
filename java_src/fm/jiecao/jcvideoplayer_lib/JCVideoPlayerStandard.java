package fm.jiecao.jcvideoplayer_lib;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class JCVideoPlayerStandard extends JCVideoPlayer {

    /* renamed from: p1  reason: collision with root package name */
    protected static Timer f65581p1;
    public ImageView O0;
    public ProgressBar P0;
    public ProgressBar Q0;
    public TextView R0;
    public ImageView S0;
    public ImageView T0;
    public LinearLayout U0;
    public ImageView V0;
    public TextView W0;
    public TextView X0;
    public TextView Y0;
    public PopupWindow Z0;

    /* renamed from: a1  reason: collision with root package name */
    protected f f65582a1;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f65583b1;

    /* renamed from: c1  reason: collision with root package name */
    private BroadcastReceiver f65584c1;

    /* renamed from: d1  reason: collision with root package name */
    protected Dialog f65585d1;

    /* renamed from: e1  reason: collision with root package name */
    protected ProgressBar f65586e1;

    /* renamed from: f1  reason: collision with root package name */
    protected TextView f65587f1;

    /* renamed from: g1  reason: collision with root package name */
    protected TextView f65588g1;

    /* renamed from: h1  reason: collision with root package name */
    protected ImageView f65589h1;

    /* renamed from: i1  reason: collision with root package name */
    protected Dialog f65590i1;

    /* renamed from: j1  reason: collision with root package name */
    protected ProgressBar f65591j1;

    /* renamed from: k1  reason: collision with root package name */
    protected TextView f65592k1;

    /* renamed from: l1  reason: collision with root package name */
    protected ImageView f65593l1;

    /* renamed from: m1  reason: collision with root package name */
    protected Dialog f65594m1;

    /* renamed from: n1  reason: collision with root package name */
    protected ProgressBar f65595n1;

    /* renamed from: o1  reason: collision with root package name */
    protected TextView f65596o1;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LinearLayout f65597a;

        a(LinearLayout linearLayout) {
            this.f65597a = linearLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            JCVideoPlayerStandard jCVideoPlayerStandard = JCVideoPlayerStandard.this;
            jCVideoPlayerStandard.C(intValue, jCVideoPlayerStandard.getCurrentPositionWhenPlaying());
            JCVideoPlayerStandard jCVideoPlayerStandard2 = JCVideoPlayerStandard.this;
            jCVideoPlayerStandard2.Y0.setText(fm.jiecao.jcvideoplayer_lib.e.e(jCVideoPlayerStandard2.E, jCVideoPlayerStandard2.F));
            for (int i2 = 0; i2 < this.f65597a.getChildCount(); i2++) {
                if (i2 == JCVideoPlayerStandard.this.F) {
                    ((TextView) this.f65597a.getChildAt(i2)).setTextColor(Color.parseColor("#fff85959"));
                } else {
                    ((TextView) this.f65597a.getChildAt(i2)).setTextColor(Color.parseColor("#ffffff"));
                }
            }
            PopupWindow popupWindow = JCVideoPlayerStandard.this.Z0;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            JCVideoPlayerStandard.this.s(101);
            JCVideoPlayerStandard.this.S();
            JCVideoPlayer.f65543q0 = true;
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
            if (JCVideoPlayerStandard.this.f65555c == 2) {
                dialogInterface.dismiss();
                JCVideoPlayerStandard.this.g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements DialogInterface.OnCancelListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            dialogInterface.dismiss();
            if (JCVideoPlayerStandard.this.f65555c == 2) {
                dialogInterface.dismiss();
                JCVideoPlayerStandard.this.g();
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends BroadcastReceiver {
        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                int intExtra = (intent.getIntExtra(SimulatorExitPlayActivity_.E, 0) * 100) / intent.getIntExtra("scale", 100);
                if (intExtra < 15) {
                    JCVideoPlayerStandard.this.V0.setBackgroundResource(R.drawable.jc_battery_level_10);
                } else if (intExtra >= 15 && intExtra < 40) {
                    JCVideoPlayerStandard.this.V0.setBackgroundResource(R.drawable.jc_battery_level_30);
                } else if (intExtra >= 40 && intExtra < 60) {
                    JCVideoPlayerStandard.this.V0.setBackgroundResource(R.drawable.jc_battery_level_50);
                } else if (intExtra >= 60 && intExtra < 80) {
                    JCVideoPlayerStandard.this.V0.setBackgroundResource(R.drawable.jc_battery_level_70);
                } else if (intExtra >= 80 && intExtra < 95) {
                    JCVideoPlayerStandard.this.V0.setBackgroundResource(R.drawable.jc_battery_level_90);
                } else if (intExtra >= 95 && intExtra <= 100) {
                    JCVideoPlayerStandard.this.V0.setBackgroundResource(R.drawable.jc_battery_level_100);
                }
                JCVideoPlayerStandard.this.getContext().unregisterReceiver(JCVideoPlayerStandard.this.f65584c1);
                JCVideoPlayerStandard.this.f65583b1 = false;
            }
        }
    }

    /* loaded from: classes3.dex */
    public class f extends TimerTask {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                JCVideoPlayerStandard.this.f65567o.setVisibility(4);
                JCVideoPlayerStandard.this.f65566n.setVisibility(4);
                JCVideoPlayerStandard.this.f65560h.setVisibility(4);
                PopupWindow popupWindow = JCVideoPlayerStandard.this.Z0;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                JCVideoPlayerStandard jCVideoPlayerStandard = JCVideoPlayerStandard.this;
                if (jCVideoPlayerStandard.f65555c != 3) {
                    jCVideoPlayerStandard.P0.setVisibility(0);
                }
            }
        }

        public f() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JCVideoPlayerStandard jCVideoPlayerStandard = JCVideoPlayerStandard.this;
            int i2 = jCVideoPlayerStandard.f65554b;
            if (i2 == 0 || i2 == 7 || i2 == 6 || jCVideoPlayerStandard.getContext() == null || !(JCVideoPlayerStandard.this.getContext() instanceof Activity)) {
                return;
            }
            ((Activity) JCVideoPlayerStandard.this.getContext()).runOnUiThread(new a());
        }
    }

    public JCVideoPlayerStandard(Context context) {
        super(context);
        this.f65583b1 = false;
        this.f65584c1 = new e();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void A() {
        super.A();
        i0();
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void B() {
        super.B();
        k0();
        o0();
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
        o0();
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
        if (this.f65594m1 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_brightness, (ViewGroup) null);
            this.f65596o1 = (TextView) inflate.findViewById(R.id.tv_brightness);
            this.f65595n1 = (ProgressBar) inflate.findViewById(R.id.brightness_progressbar);
            this.f65594m1 = l0(inflate);
        }
        if (!this.f65594m1.isShowing()) {
            this.f65594m1.show();
        }
        if (i2 > 100) {
            i2 = 100;
        } else if (i2 < 0) {
            i2 = 0;
        }
        TextView textView = this.f65596o1;
        textView.setText(i2 + "%");
        this.f65595n1.setProgress(i2);
        m0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void L(float f4, String str, int i2, String str2, int i4) {
        super.L(f4, str, i2, str2, i4);
        if (this.f65585d1 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_progress, (ViewGroup) null);
            this.f65586e1 = (ProgressBar) inflate.findViewById(R.id.duration_progressbar);
            this.f65587f1 = (TextView) inflate.findViewById(R.id.tv_current);
            this.f65588g1 = (TextView) inflate.findViewById(R.id.tv_duration);
            this.f65589h1 = (ImageView) inflate.findViewById(R.id.duration_image_tip);
            this.f65585d1 = l0(inflate);
        }
        if (!this.f65585d1.isShowing()) {
            this.f65585d1.show();
        }
        this.f65587f1.setText(str);
        TextView textView = this.f65588g1;
        textView.setText(" / " + str2);
        this.f65586e1.setProgress(i4 <= 0 ? 0 : (i2 * 100) / i4);
        if (f4 > 0.0f) {
            this.f65589h1.setBackgroundResource(R.drawable.jc_forward_icon);
        } else {
            this.f65589h1.setBackgroundResource(R.drawable.jc_backward_icon);
        }
        m0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void N(float f4, int i2) {
        super.N(f4, i2);
        if (this.f65590i1 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_volume, (ViewGroup) null);
            this.f65593l1 = (ImageView) inflate.findViewById(R.id.volume_image_tip);
            this.f65592k1 = (TextView) inflate.findViewById(R.id.tv_volume);
            this.f65591j1 = (ProgressBar) inflate.findViewById(R.id.volume_progressbar);
            this.f65590i1 = l0(inflate);
        }
        if (!this.f65590i1.isShowing()) {
            this.f65590i1.show();
        }
        if (i2 <= 0) {
            this.f65593l1.setBackgroundResource(R.drawable.jc_close_volume);
        } else {
            this.f65593l1.setBackgroundResource(R.drawable.jc_add_volume);
        }
        if (i2 > 100) {
            i2 = 100;
        } else if (i2 < 0) {
            i2 = 0;
        }
        TextView textView = this.f65592k1;
        textView.setText(i2 + "%");
        this.f65591j1.setProgress(i2);
        m0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void O(int i2) {
        super.O(i2);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(getResources().getString(R.string.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(R.string.tips_not_wifi_confirm), new b());
        builder.setNegativeButton(getResources().getString(R.string.tips_not_wifi_cancel), new c());
        builder.setOnCancelListener(new d());
        builder.create().show();
    }

    public void X() {
        Timer timer = f65581p1;
        if (timer != null) {
            timer.cancel();
        }
        f fVar = this.f65582a1;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    public void Y(int i2) {
        ViewGroup.LayoutParams layoutParams = this.f65560h.getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i2;
        ViewGroup.LayoutParams layoutParams2 = this.Q0.getLayoutParams();
        layoutParams2.height = i2;
        layoutParams2.width = i2;
    }

    public void Z() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            p0();
        }
    }

    public void a0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            p0();
        }
    }

    public void b0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            p0();
        }
    }

    public void c0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            p0();
        }
    }

    public void d0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
        }
    }

    public void e0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        }
    }

    public void f0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            p0();
        }
    }

    public void g0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 4, 0, 4, 4, 4);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 0, 4, 0, 4, 4, 4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public int getLayoutId() {
        return R.layout.jc_layout_standard;
    }

    public void h0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 0);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 0);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void i() {
        super.i();
        Dialog dialog = this.f65594m1;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void i0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void j() {
        super.j();
        Dialog dialog = this.f65585d1;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void j0() {
        int i2 = this.f65555c;
        if (i2 == 0 || i2 == 1) {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        } else if (i2 != 2) {
        } else {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void k() {
        super.k();
        Dialog dialog = this.f65590i1;
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

    public Dialog l0(View view) {
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

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void m(Context context) {
        super.m(context);
        this.U0 = (LinearLayout) findViewById(R.id.battery_time_layout);
        this.P0 = (ProgressBar) findViewById(R.id.bottom_progress);
        this.R0 = (TextView) findViewById(R.id.title);
        this.O0 = (ImageView) findViewById(R.id.back);
        this.S0 = (ImageView) findViewById(R.id.thumb);
        this.Q0 = (ProgressBar) findViewById(R.id.loading);
        this.T0 = (ImageView) findViewById(R.id.back_tiny);
        this.V0 = (ImageView) findViewById(R.id.battery_level);
        this.W0 = (TextView) findViewById(R.id.video_current_time);
        this.X0 = (TextView) findViewById(R.id.retry_text);
        this.Y0 = (TextView) findViewById(R.id.clarity);
        this.S0.setOnClickListener(this);
        this.O0.setOnClickListener(this);
        this.T0.setOnClickListener(this);
        this.Y0.setOnClickListener(this);
    }

    public void m0() {
        int i2 = this.f65554b;
        if (i2 == 1) {
            if (this.f65567o.getVisibility() == 0) {
                j0();
            }
        } else if (i2 == 3) {
            if (this.f65567o.getVisibility() == 0) {
                h0();
            }
        } else if (i2 == 5) {
            if (this.f65567o.getVisibility() == 0) {
                d0();
            }
        } else if (i2 == 6) {
            if (this.f65567o.getVisibility() == 0) {
                Z();
            }
        } else if (i2 == 4 && this.f65567o.getVisibility() == 0) {
            f0();
        }
    }

    public void n0() {
        if (this.f65567o.getVisibility() != 0) {
            setSystemTimeAndBattery();
            this.Y0.setText(fm.jiecao.jcvideoplayer_lib.e.e(this.E, this.F));
        }
        int i2 = this.f65554b;
        if (i2 == 1) {
            if (this.f65567o.getVisibility() == 0) {
                j0();
                return;
            }
            k0();
            setSystemTimeAndBattery();
        } else if (i2 == 3) {
            if (this.f65567o.getVisibility() == 0) {
                h0();
            } else {
                i0();
            }
        } else if (i2 == 5) {
            if (this.f65567o.getVisibility() == 0) {
                d0();
            } else {
                e0();
            }
        } else if (i2 == 4) {
            if (this.f65567o.getVisibility() == 0) {
                f0();
            } else {
                g0();
            }
        }
    }

    public void o0() {
        X();
        f65581p1 = new Timer();
        f fVar = new f();
        this.f65582a1 = fVar;
        f65581p1.schedule(fVar, 2500L);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == R.id.thumb) {
            if (TextUtils.isEmpty(fm.jiecao.jcvideoplayer_lib.e.d(this.E, this.F))) {
                Toast.makeText(getContext(), getResources().getString(R.string.no_url), 0).show();
                return;
            }
            int i2 = this.f65554b;
            if (i2 != 0) {
                if (i2 == 6) {
                    n0();
                }
            } else if (!fm.jiecao.jcvideoplayer_lib.e.d(this.E, this.F).startsWith(com.facebook.common.util.f.f11767c) && !fm.jiecao.jcvideoplayer_lib.e.d(this.E, this.F).startsWith(net.lingala.zip4j.util.e.F0) && !fm.jiecao.jcvideoplayer_lib.e.h(getContext()) && !JCVideoPlayer.f65543q0) {
                O(101);
            } else {
                s(101);
                S();
            }
        } else if (id == R.id.surface_container) {
            o0();
        } else if (id == R.id.back) {
            JCVideoPlayer.d();
        } else if (id == R.id.back_tiny) {
            JCVideoPlayer.d();
        } else if (id == R.id.clarity) {
            LinearLayout linearLayout = (LinearLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.jc_layout_clarity, (ViewGroup) null);
            a aVar = new a(linearLayout);
            for (int i4 = 0; i4 < this.E.size(); i4++) {
                String e4 = fm.jiecao.jcvideoplayer_lib.e.e(this.E, i4);
                TextView textView = (TextView) View.inflate(getContext(), R.layout.jc_layout_clarity_item, null);
                textView.setText(e4);
                textView.setTag(Integer.valueOf(i4));
                linearLayout.addView(textView, i4);
                textView.setOnClickListener(aVar);
                if (i4 == this.F) {
                    textView.setTextColor(Color.parseColor("#fff85959"));
                }
            }
            PopupWindow popupWindow = new PopupWindow((View) linearLayout, -2, -2, true);
            this.Z0 = popupWindow;
            popupWindow.setContentView(linearLayout);
            this.Z0.showAsDropDown(this.Y0);
            linearLayout.measure(0, 0);
            this.Z0.update(this.Y0, -40, 46, Math.round(linearLayout.getMeasuredWidth() * 2), linearLayout.getMeasuredHeight());
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        X();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id = view.getId();
        if (id == R.id.surface_container) {
            if (motionEvent.getAction() == 1) {
                o0();
                if (this.f65577y) {
                    int duration = getDuration();
                    this.P0.setProgress((this.D * 100) / (duration != 0 ? duration : 1));
                }
                if (!this.f65577y && !this.f65576x) {
                    s(102);
                    n0();
                }
            }
        } else if (id == R.id.bottom_seek_progress) {
            int action = motionEvent.getAction();
            if (action == 0) {
                X();
            } else if (action == 1) {
                o0();
            }
        }
        return super.onTouch(view, motionEvent);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void p() {
        super.p();
        X();
    }

    public void p0() {
        int i2 = this.f65554b;
        if (i2 == 3) {
            this.f65560h.setImageResource(R.drawable.jc_click_pause_selector);
            this.X0.setVisibility(4);
        } else if (i2 == 7) {
            this.f65560h.setImageResource(R.drawable.jc_click_error_selector);
            this.X0.setVisibility(4);
        } else if (i2 == 6) {
            this.f65560h.setImageResource(R.drawable.jc_click_replay_selector);
            this.X0.setVisibility(0);
        } else {
            this.f65560h.setImageResource(R.drawable.jc_click_play_selector);
            this.X0.setVisibility(4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void q() {
        super.q();
        X();
        PopupWindow popupWindow = this.Z0;
        if (popupWindow != null) {
            popupWindow.dismiss();
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
        this.Q0.setVisibility(i6);
        this.S0.setVisibility(i7);
        this.P0.setVisibility(i9);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setBufferProgress(int i2) {
        super.setBufferProgress(i2);
        if (i2 != 0) {
            this.P0.setSecondaryProgress(i2);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setProgressAndText(int i2, int i4, int i5) {
        super.setProgressAndText(i2, i4, i5);
        if (i2 != 0) {
            this.P0.setProgress(i2);
        }
    }

    public void setSystemTimeAndBattery() {
        this.W0.setText(new SimpleDateFormat("HH:mm").format(new Date()));
        if (this.f65583b1) {
            return;
        }
        getContext().registerReceiver(this.f65584c1, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
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
            this.f65562j.setImageResource(R.drawable.jc_shrink);
            this.O0.setVisibility(0);
            this.T0.setVisibility(4);
            this.U0.setVisibility(0);
            if (linkedHashMap.size() == 1) {
                this.Y0.setVisibility(8);
            } else {
                this.Y0.setText(fm.jiecao.jcvideoplayer_lib.e.e(linkedHashMap, this.F));
                this.Y0.setVisibility(0);
            }
            Y((int) getResources().getDimension(R.dimen.jc_start_button_w_h_fullscreen));
        } else if (i5 == 0 || i5 == 1) {
            this.f65562j.setImageResource(R.drawable.jc_enlarge);
            this.O0.setVisibility(8);
            this.T0.setVisibility(4);
            Y((int) getResources().getDimension(R.dimen.jc_start_button_w_h_normal));
            this.U0.setVisibility(8);
            this.Y0.setVisibility(8);
        } else if (i5 == 3) {
            this.T0.setVisibility(0);
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
            this.U0.setVisibility(8);
            this.Y0.setVisibility(8);
        }
        setSystemTimeAndBattery();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void v() {
        super.v();
        Z();
        X();
        this.P0.setProgress(100);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void w() {
        super.w();
        b0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void x() {
        super.x();
        c0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void y() {
        super.y();
        e0();
        X();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void z() {
        super.z();
        g0();
    }

    public JCVideoPlayerStandard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65583b1 = false;
        this.f65584c1 = new e();
    }
}
