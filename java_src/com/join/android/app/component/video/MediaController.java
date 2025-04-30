package com.join.android.app.component.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.u0;
import com.ss.android.download.api.constant.BaseConstants;
/* loaded from: classes2.dex */
public class MediaController extends android.widget.MediaController {
    private static final int A = 1;
    private static final int B = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final int f17543z = 3000;

    /* renamed from: a  reason: collision with root package name */
    private e f17544a;

    /* renamed from: b  reason: collision with root package name */
    private Context f17545b;

    /* renamed from: c  reason: collision with root package name */
    private PopupWindow f17546c;

    /* renamed from: d  reason: collision with root package name */
    private int f17547d;

    /* renamed from: e  reason: collision with root package name */
    private View f17548e;

    /* renamed from: f  reason: collision with root package name */
    private View f17549f;

    /* renamed from: g  reason: collision with root package name */
    private SeekBar f17550g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f17551h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f17552i;

    /* renamed from: j  reason: collision with root package name */
    private ImageButton f17553j;

    /* renamed from: k  reason: collision with root package name */
    private OutlineTextView f17554k;

    /* renamed from: l  reason: collision with root package name */
    private long f17555l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f17556m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f17557n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f17558o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f17559p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f17560q;

    /* renamed from: r  reason: collision with root package name */
    private ImageButton f17561r;

    /* renamed from: s  reason: collision with root package name */
    private AudioManager f17562s;

    /* renamed from: t  reason: collision with root package name */
    private g f17563t;

    /* renamed from: u  reason: collision with root package name */
    private f f17564u;
    @SuppressLint({"HandlerLeak"})

    /* renamed from: v  reason: collision with root package name */
    private Handler f17565v;

    /* renamed from: w  reason: collision with root package name */
    private View.OnClickListener f17566w;

    /* renamed from: x  reason: collision with root package name */
    private View.OnClickListener f17567x;

    /* renamed from: y  reason: collision with root package name */
    private SeekBar.OnSeekBarChangeListener f17568y;

    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                MediaController.this.hide();
            } else if (i2 != 2) {
            } else {
                long w3 = MediaController.this.w();
                if (MediaController.this.f17557n || !MediaController.this.f17556m) {
                    return;
                }
                sendMessageDelayed(obtainMessage(2), 1000 - (w3 % 1000));
                MediaController.this.y();
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaController.this.p();
            MediaController.this.show(3000);
        }
    }

    /* loaded from: classes2.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaController.this.o();
        }
    }

    /* loaded from: classes2.dex */
    class d implements SeekBar.OnSeekBarChangeListener {
        d() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i2, boolean z3) {
            if (z3) {
                long j4 = (MediaController.this.f17555l * i2) / 1000;
                String e4 = com.join.android.app.common.utils.c.e(j4);
                if (MediaController.this.f17559p) {
                    MediaController.this.f17544a.seekTo((int) j4);
                }
                if (MediaController.this.f17554k != null) {
                    MediaController.this.f17554k.setText(e4);
                }
                if (MediaController.this.f17552i != null) {
                    MediaController.this.f17552i.setText(e4);
                }
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            MediaController.this.f17557n = true;
            MediaController.this.show(BaseConstants.Time.HOUR);
            MediaController.this.f17565v.removeMessages(2);
            if (MediaController.this.f17559p) {
                MediaController.this.f17562s.setStreamMute(3, true);
            }
            if (MediaController.this.f17554k != null) {
                MediaController.this.f17554k.setText("");
                MediaController.this.f17554k.setVisibility(0);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            if (!MediaController.this.f17559p) {
                MediaController.this.f17544a.seekTo((int) ((MediaController.this.f17555l * seekBar.getProgress()) / 1000));
            }
            if (MediaController.this.f17554k != null) {
                MediaController.this.f17554k.setText("");
                MediaController.this.f17554k.setVisibility(8);
            }
            MediaController.this.show(3000);
            MediaController.this.f17565v.removeMessages(2);
            MediaController.this.f17562s.setStreamMute(3, false);
            MediaController.this.f17557n = false;
            MediaController.this.f17565v.sendEmptyMessageDelayed(2, 1000L);
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(boolean z3);

        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        int getAudioSessionId();

        int getBufferPercentage();

        int getCurrentPosition();

        int getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(int i2);

        void start();
    }

    /* loaded from: classes2.dex */
    public interface f {
        void onHidden();
    }

    /* loaded from: classes2.dex */
    public interface g {
        void onShown();
    }

    public MediaController(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17559p = false;
        this.f17560q = false;
        this.f17565v = new a();
        this.f17566w = new b();
        this.f17567x = new c();
        this.f17568y = new d();
        this.f17549f = this;
        this.f17560q = true;
        r(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f17544a != null) {
            synchronized (Boolean.valueOf(this.f17558o)) {
                this.f17544a.a(this.f17558o);
            }
        }
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f17544a.isPlaying()) {
            this.f17544a.pause();
        } else {
            this.f17544a.start();
        }
        y();
    }

    private boolean r(Context context) {
        this.f17545b = context;
        this.f17562s = (AudioManager) context.getSystemService("audio");
        return true;
    }

    private void s(View view) {
        ImageButton imageButton = (ImageButton) view.findViewById(getResources().getIdentifier("mediacontroller_play_pause", "id", this.f17545b.getPackageName()));
        this.f17561r = imageButton;
        if (imageButton != null) {
            imageButton.requestFocus();
            this.f17561r.setOnClickListener(this.f17566w);
        }
        SeekBar seekBar = (SeekBar) view.findViewById(getResources().getIdentifier("mediacontroller_seekbar", "id", this.f17545b.getPackageName()));
        this.f17550g = seekBar;
        if (seekBar != null) {
            if (seekBar instanceof SeekBar) {
                seekBar.setOnSeekBarChangeListener(this.f17568y);
            }
            this.f17550g.setMax(1000);
        }
        this.f17551h = (TextView) view.findViewById(getResources().getIdentifier("mediacontroller_time_total", "id", this.f17545b.getPackageName()));
        this.f17552i = (TextView) view.findViewById(getResources().getIdentifier("mediacontroller_time_current", "id", this.f17545b.getPackageName()));
        ImageButton imageButton2 = (ImageButton) view.findViewById(getResources().getIdentifier("mediacontroller_full_screen", "id", this.f17545b.getPackageName()));
        this.f17553j = imageButton2;
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(this.f17567x);
        }
    }

    private void t() {
        PopupWindow popupWindow = new PopupWindow(this.f17545b);
        this.f17546c = popupWindow;
        popupWindow.setFocusable(false);
        this.f17546c.setBackgroundDrawable(null);
        this.f17546c.setOutsideTouchable(true);
        this.f17547d = 16973824;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long w() {
        e eVar = this.f17544a;
        if (eVar == null || this.f17557n) {
            return 0L;
        }
        long currentPosition = eVar.getCurrentPosition();
        long duration = this.f17544a.getDuration();
        SeekBar seekBar = this.f17550g;
        if (seekBar != null) {
            if (duration > 0) {
                seekBar.setProgress((int) ((1000 * currentPosition) / duration));
            }
            this.f17550g.setSecondaryProgress(this.f17544a.getBufferPercentage() * 10);
        }
        this.f17555l = duration;
        TextView textView = this.f17551h;
        if (textView != null) {
            textView.setText(com.join.android.app.common.utils.c.e(duration));
        }
        TextView textView2 = this.f17552i;
        if (textView2 != null) {
            textView2.setText(com.join.android.app.common.utils.c.e(currentPosition));
        }
        return currentPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (this.f17549f == null || this.f17561r == null) {
            return;
        }
        if (this.f17544a.isPlaying()) {
            this.f17561r.setImageResource(getResources().getIdentifier("mediacontroller_pause", "drawable", this.f17545b.getPackageName()));
        } else {
            this.f17561r.setImageResource(getResources().getIdentifier("mediacontroller_play", "drawable", this.f17545b.getPackageName()));
        }
    }

    @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getRepeatCount() == 0 && (keyCode == 79 || keyCode == 85 || keyCode == 62)) {
            p();
            show(3000);
            ImageButton imageButton = this.f17561r;
            if (imageButton != null) {
                imageButton.requestFocus();
            }
            return true;
        } else if (keyCode == 86) {
            if (this.f17544a.isPlaying()) {
                this.f17544a.pause();
                y();
            }
            return true;
        } else if (keyCode != 4 && keyCode != 82) {
            show(3000);
            return super.dispatchKeyEvent(keyEvent);
        } else {
            hide();
            return true;
        }
    }

    @Override // android.widget.MediaController
    public void hide() {
        if (this.f17548e != null && this.f17556m) {
            try {
                this.f17565v.removeMessages(2);
                if (this.f17560q) {
                    setVisibility(8);
                } else {
                    this.f17546c.dismiss();
                }
            } catch (IllegalArgumentException unused) {
                u0.a("MediaController already removed", new Object[0]);
            }
            this.f17556m = false;
            f fVar = this.f17564u;
            if (fVar != null) {
                fVar.onHidden();
            }
        }
    }

    @Override // android.widget.MediaController
    public boolean isShowing() {
        return this.f17556m;
    }

    @Override // android.widget.MediaController, android.view.View
    public void onFinishInflate() {
        View view = this.f17549f;
        if (view != null) {
            s(view);
        }
        super.onFinishInflate();
    }

    @Override // android.widget.MediaController, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        show(3000);
        return true;
    }

    @Override // android.widget.MediaController, android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        show(3000);
        return false;
    }

    public void q() {
        this.f17560q = true;
    }

    @Override // android.widget.MediaController
    public void setAnchorView(View view) {
        this.f17548e = view;
        u0.e("setAnchorView", "mFromXml=" + this.f17560q);
        if (!this.f17560q) {
            removeAllViews();
            View v3 = v();
            this.f17549f = v3;
            this.f17546c.setContentView(v3);
            this.f17546c.setWidth(-1);
            this.f17546c.setHeight(-2);
        }
        if (this.f17549f == null) {
            this.f17549f = v();
        }
        if (this.f17560q) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
            View view2 = this.f17548e;
            if (view2 instanceof RelativeLayout) {
                ((RelativeLayout) view2).addView(this);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = -1;
                    layoutParams.height = getResources().getDimensionPixelSize(R.dimen.mediacontroller_height);
                    layoutParams.addRule(12, -1);
                }
            } else if (view2 instanceof LinearLayout) {
                ((LinearLayout) view2).addView(this);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.width = -1;
                    layoutParams2.height = getResources().getDimensionPixelSize(R.dimen.mediacontroller_height);
                    layoutParams2.gravity = 80;
                }
            } else if (view2 instanceof FrameLayout) {
                ((FrameLayout) view2).addView(this);
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) getLayoutParams();
                if (layoutParams3 != null) {
                    layoutParams3.width = -1;
                    layoutParams3.height = getResources().getDimensionPixelSize(R.dimen.mediacontroller_height);
                    layoutParams3.gravity = 80;
                }
            }
        }
        s(this.f17549f);
        postInvalidate();
    }

    public void setAnimationStyle(int i2) {
        this.f17547d = i2;
    }

    @Override // android.widget.MediaController, android.view.View
    public void setEnabled(boolean z3) {
        ImageButton imageButton = this.f17561r;
        if (imageButton != null) {
            imageButton.setEnabled(z3);
        }
        SeekBar seekBar = this.f17550g;
        if (seekBar != null) {
            seekBar.setEnabled(z3);
        }
        super.setEnabled(z3);
    }

    public void setFullScreen(boolean z3) {
        this.f17558o = z3;
        x();
    }

    public void setInfoView(OutlineTextView outlineTextView) {
        this.f17554k = outlineTextView;
    }

    public void setInstantSeeking(boolean z3) {
        this.f17559p = z3;
    }

    public void setMediaPlayer(e eVar) {
        this.f17544a = eVar;
        y();
        x();
    }

    public void setOnHiddenListener(f fVar) {
        this.f17564u = fVar;
    }

    public void setOnShownListener(g gVar) {
        this.f17563t = gVar;
    }

    @TargetApi(16)
    public void setWindowLayoutType() {
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                this.f17548e.setSystemUiVisibility(512);
                PopupWindow.class.getMethod("setWindowLayoutType", Integer.TYPE).invoke(this.f17546c, 1003);
            } catch (Exception e4) {
                u0.b("setWindowLayoutType", e4);
            }
        }
    }

    @Override // android.widget.MediaController
    public void show() {
        show(3000);
    }

    public boolean u() {
        return this.f17558o;
    }

    protected View v() {
        return ((LayoutInflater) this.f17545b.getSystemService("layout_inflater")).inflate(getResources().getIdentifier("mediacontroller", "layout", this.f17545b.getPackageName()), this);
    }

    void x() {
        ImageButton imageButton;
        if (this.f17549f == null || (imageButton = this.f17553j) == null) {
            return;
        }
        if (this.f17558o) {
            imageButton.setImageResource(getResources().getIdentifier("mediacontroller_fullscreen_out", "drawable", this.f17545b.getPackageName()));
        } else {
            imageButton.setImageResource(getResources().getIdentifier("mediacontroller_fullscreen_in", "drawable", this.f17545b.getPackageName()));
        }
    }

    @Override // android.widget.MediaController
    public void show(int i2) {
        View view;
        if (!this.f17556m && (view = this.f17548e) != null && view.getWindowToken() != null) {
            ImageButton imageButton = this.f17561r;
            if (imageButton != null) {
                imageButton.requestFocus();
            }
            if (this.f17560q) {
                setVisibility(0);
            } else {
                int[] iArr = new int[2];
                this.f17548e.getLocationOnScreen(iArr);
                Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + this.f17548e.getWidth(), iArr[1] + this.f17548e.getHeight());
                this.f17546c.setAnimationStyle(this.f17547d);
                setWindowLayoutType();
                this.f17546c.showAtLocation(this.f17548e, 0, rect.left, rect.bottom);
            }
            this.f17556m = true;
            g gVar = this.f17563t;
            if (gVar != null) {
                gVar.onShown();
            }
        }
        y();
        x();
        this.f17565v.sendEmptyMessage(2);
        if (i2 != 0) {
            this.f17565v.removeMessages(1);
            Handler handler = this.f17565v;
            handler.sendMessageDelayed(handler.obtainMessage(1), i2);
        }
    }

    public MediaController(Context context) {
        super(context);
        this.f17559p = false;
        this.f17560q = false;
        this.f17565v = new a();
        this.f17566w = new b();
        this.f17567x = new c();
        this.f17568y = new d();
        if (this.f17560q || !r(context)) {
            return;
        }
        t();
    }
}
