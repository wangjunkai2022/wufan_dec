package com.join.mgps.activity;

import android.animation.ValueAnimator;
import android.bluetooth.BluetoothAdapter;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.BaseActivity;
import com.join.mgps.joystick.EaseBreathInterpolator;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import com.papa.controller.core.PadStateEvent;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class HandShankBaseActivity extends BaseActivity implements com.papa.controller.core.c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f32185a;

    /* renamed from: b  reason: collision with root package name */
    com.papa.controller.core.d f32186b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ControllerManager.d {
        a() {
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void a(ControllerManager.c cVar) {
            HandShankBaseActivity handShankBaseActivity = HandShankBaseActivity.this;
            handShankBaseActivity.K0(1, handShankBaseActivity.f32186b.q());
        }

        @Override // com.papa.controller.core.ControllerManager.d
        public void b(ControllerManager.c cVar) {
            HandShankBaseActivity handShankBaseActivity = HandShankBaseActivity.this;
            handShankBaseActivity.K0(0, handShankBaseActivity.f32186b.q());
        }
    }

    /* loaded from: classes3.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Integer num = (Integer) valueAnimator.getAnimatedValue();
            HandShankBaseActivity.this.Q0(num.intValue(), num.intValue());
        }
    }

    KeyEvent E0(float f4, int i2) {
        return new KeyEvent(i2, f4 < 0.0f ? 21 : f4 > 0.0f ? 22 : 0);
    }

    @Override // com.papa.controller.core.c
    public void F(float f4, float f5, PadMotionEvent padMotionEvent) {
        M0(padMotionEvent);
    }

    KeyEvent F0(float f4, int i2) {
        return new KeyEvent(i2, f4 < 0.0f ? 19 : f4 > 0.0f ? 20 : 0);
    }

    @Override // com.papa.controller.core.c
    public void G(float f4, float f5, PadMotionEvent padMotionEvent) {
        M0(padMotionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<ControllerManager.c> G0(List<ControllerManager.c> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (!I0(list.get(i2).d())) {
                    arrayList.add(list.get(i2));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int H0(List<ControllerManager.c> list) {
        return G0(G0(list)).size();
    }

    protected boolean I0(String str) {
        return com.join.mgps.joystick.map.a.b().f(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean J0() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return defaultAdapter != null && defaultAdapter.isEnabled();
    }

    public void K0(int i2, List<ControllerManager.c> list) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean L0(int i2, PadKeyEvent padKeyEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean M0(PadMotionEvent padMotionEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyEvent N0(PadKeyEvent padKeyEvent) {
        int e4 = padKeyEvent.e();
        int d4 = padKeyEvent.d();
        padKeyEvent.f();
        padKeyEvent.a();
        padKeyEvent.b();
        return new KeyEvent(d4, e4);
    }

    void O0() {
        com.papa.controller.core.d dVar = this.f32186b;
        if (dVar != null) {
            dVar.v(new a());
        }
    }

    public void P0(boolean z3) {
        this.f32185a = z3;
    }

    public void Q0(int i2, int i4) {
        com.papa.controller.core.d dVar = this.f32186b;
        if (dVar != null) {
            dVar.y(i2, i4);
        }
    }

    @Override // com.papa.controller.core.c
    public void R(int i2, PadKeyEvent padKeyEvent) {
        L0(i2, padKeyEvent);
    }

    void R0() {
        try {
            if (this.f32186b == null) {
                this.f32186b = new com.papa.controller.core.d(this);
            }
            com.papa.controller.core.d dVar = this.f32186b;
            if (dVar != null) {
                dVar.w(this, new Handler());
                O0();
                this.f32186b.x(this.f32185a);
                this.f32186b.B();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void S0() {
        EaseBreathInterpolator easeBreathInterpolator = new EaseBreathInterpolator();
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        ofInt.setDuration(1200L);
        ofInt.setInterpolator(easeBreathInterpolator);
        ofInt.addUpdateListener(new b());
        ofInt.start();
    }

    void T0() {
        com.papa.controller.core.d dVar = this.f32186b;
        if (dVar != null) {
            dVar.F();
        }
    }

    @Override // com.papa.controller.core.c
    public void c0(PadStateEvent padStateEvent) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        com.papa.controller.core.d dVar = this.f32186b;
        return super.dispatchGenericMotionEvent(motionEvent) | (dVar != null ? false | dVar.n(motionEvent) : false);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        com.papa.controller.core.d dVar = this.f32186b;
        return super.dispatchKeyEvent(keyEvent) | (dVar != null ? false | dVar.o(keyEvent) : false);
    }

    @Override // com.papa.controller.core.c
    public void h(int i2, PadKeyEvent padKeyEvent) {
        L0(i2, padKeyEvent);
    }

    @Override // com.papa.controller.core.c
    public void k0(int i2, float f4, PadKeyEvent padKeyEvent) {
        L0(i2, padKeyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        R0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        T0();
    }
}
