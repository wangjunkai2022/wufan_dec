package com.join.mgps.activity;

import android.content.Intent;
import android.graphics.drawable.TransitionDrawable;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.handshank_check_key)
/* loaded from: classes3.dex */
public class HandShankCheckKeyActivity extends HandShankBaseActivity {

    /* renamed from: c  reason: collision with root package name */
    private boolean f32189c;

    /* renamed from: d  reason: collision with root package name */
    private SoundPool f32190d;

    /* renamed from: e  reason: collision with root package name */
    private TransitionDrawable f32191e;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    String f32194h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f32195i;

    /* renamed from: f  reason: collision with root package name */
    private HashMap<Integer, c> f32192f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, Integer> f32193g = new HashMap<>();

    /* renamed from: j  reason: collision with root package name */
    Handler f32196j = new Handler();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f32197a;

        a(c cVar) {
            this.f32197a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f32197a != null) {
                HandShankCheckKeyActivity.this.i1();
                ImageView imageView = (ImageView) HandShankCheckKeyActivity.this.findViewById(this.f32197a.f32201a);
                imageView.setImageResource(this.f32197a.f32203c);
                imageView.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f32199a;

        b(c cVar) {
            this.f32199a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = this.f32199a;
            if (cVar != null) {
                ImageView imageView = (ImageView) HandShankCheckKeyActivity.this.findViewById(cVar.f32201a);
                imageView.setImageResource(this.f32199a.f32202b);
                imageView.invalidate();
                HandShankCheckKeyActivity.this.f32189c = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public int f32201a;

        /* renamed from: b  reason: collision with root package name */
        public int f32202b;

        /* renamed from: c  reason: collision with root package name */
        public int f32203c;

        public c(int i2, int i4, int i5) {
            this.f32201a = i2;
            this.f32202b = i4;
            this.f32203c = i5;
        }
    }

    private void W0(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (keyCode == 24) {
            audioManager.adjustStreamVolume(3, 1, 5);
        } else if (keyCode != 25) {
        } else {
            audioManager.adjustStreamVolume(3, -1, 5);
        }
    }

    private void b1() {
        this.f32193g.clear();
        Map c4 = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : c4.keySet()) {
            this.f32193g.put(str, Integer.valueOf(Integer.parseInt((String) c4.get(str))));
        }
        if (this.f32193g.size() == 0) {
            this.f32193g.put(com.join.mgps.joystick.map.b.f50914d, 108);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50911c, 109);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50917e, 99);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50923g, 96);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50920f, 100);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50926h, 97);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50929i, 102);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50932j, 104);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50935k, 103);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50938l, 105);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50941m, 21);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50944n, 19);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50950p, 22);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50947o, 20);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50956r, 107);
            this.f32193g.put(com.join.mgps.joystick.map.b.f50953q, 106);
        }
        c1(this.f32193g);
    }

    private void c1(Map<String, Integer> map) {
        this.f32192f.clear();
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50920f), new c(R.id.f17878y, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50923g), new c(R.id.f17848a, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50917e), new c(R.id.f17877x, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50926h), new c(R.id.f17850b, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50929i), new c(R.id.handshank_check_lb, R.drawable.handshank_check_lb_normal, R.drawable.handshank_check_lb_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50932j), new c(R.id.handshank_check_ls, R.drawable.handshank_check_ls_normal, R.drawable.handshank_check_ls_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50935k), new c(R.id.handshank_check_rb, R.drawable.handshank_check_rb_normal, R.drawable.handshank_check_rb_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50938l), new c(R.id.handshank_check_rs, R.drawable.handshank_check_rs_normal, R.drawable.handshank_check_rs_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50953q), new c(R.id.handshank_check_stick_l, R.drawable.handshank_check_stick_normal, R.drawable.handshank_check_stick_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50956r), new c(R.id.handshank_check_stick_r, R.drawable.handshank_check_stick_normal, R.drawable.handshank_check_stick_pressed));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50941m), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_left));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50944n), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_top));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50950p), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_right));
        this.f32192f.put(map.get(com.join.mgps.joystick.map.b.f50947o), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_down));
    }

    private void d1() {
        findViewById(R.id.handshank_check_layout).requestFocus();
        this.f32195i.setText("校验手柄按键");
    }

    private void e1() {
        SoundPool soundPool = new SoundPool(21, 3, 10);
        this.f32190d = soundPool;
        soundPool.load(this, R.raw.jiejitoubi, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1() {
        this.f32190d.play(1, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity
    public boolean L0(int i2, PadKeyEvent padKeyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(padKeyEvent.c())) {
            return false;
        }
        if (padKeyEvent.d() == 0) {
            g1(i2, N0(padKeyEvent));
        } else {
            h1(i2, N0(padKeyEvent));
        }
        return super.L0(i2, padKeyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity
    public boolean M0(PadMotionEvent padMotionEvent) {
        return super.M0(padMotionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        if (TextUtils.isEmpty(this.f32194h)) {
            finish();
        } else if (this.f32194h.equals("first")) {
            Intent intent = new Intent(this, HandShankYesActivity_.class);
            intent.setFlags(603979776);
            startActivity(intent);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Y0() {
        Intent intent = new Intent(this, HandShankSetKeyActivity_.class);
        if (!TextUtils.isEmpty(this.f32194h)) {
            intent.putExtra("from", this.f32194h);
            startActivity(intent);
            finish();
            return;
        }
        startActivity(intent);
    }

    void Z0(c cVar) {
        this.f32196j.post(new a(cVar));
    }

    void a1(c cVar) {
        this.f32196j.post(new b(cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        e1();
        d1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void f1() {
        Intent intent = new Intent(this, HandShankYesActivity_.class);
        intent.setFlags(603979776);
        startActivity(intent);
        finish();
    }

    public boolean g1(int i2, KeyEvent keyEvent) {
        try {
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        W0(keyEvent);
        if (i2 != 4) {
            if (!this.f32189c) {
                this.f32189c = true;
                Z0(this.f32192f.get(Integer.valueOf(i2)));
            }
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean h1(int i2, KeyEvent keyEvent) {
        if (com.join.mgps.joystick.map.a.b().f(keyEvent.getDevice().getName())) {
            return false;
        }
        if (i2 != 4) {
            a1(this.f32192f.get(Integer.valueOf(i2)));
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        b1();
    }
}
