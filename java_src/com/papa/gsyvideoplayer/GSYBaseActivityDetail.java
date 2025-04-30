package com.papa.gsyvideoplayer;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import c2.h;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.utils.o;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import java.util.Objects;
/* loaded from: classes4.dex */
public abstract class GSYBaseActivityDetail<T extends GSYBaseVideoPlayer> extends AppCompatActivity implements h {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f54873a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f54874b;

    /* renamed from: c  reason: collision with root package name */
    protected o f54875c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseActivityDetail.this.M0();
            GSYBaseActivityDetail.this.C0();
        }
    }

    @Override // c2.h
    public void A(String str, Object... objArr) {
    }

    @Override // c2.h
    public void B0(String str, Object... objArr) {
    }

    public abstract void C0();

    public abstract boolean D0();

    @Override // c2.h
    public void E(String str, Object... objArr) {
    }

    public abstract com.papa.gsyvideoplayer.builder.a E0();

    public abstract T F0();

    public n G0() {
        return null;
    }

    public boolean H0() {
        return true;
    }

    public boolean I0() {
        return true;
    }

    public void J(String str, Object... objArr) {
        o oVar = this.f54875c;
        Objects.requireNonNull(oVar, "initVideo() or initVideoBuilderMode() first");
        oVar.I(D0() && !L0());
        this.f54873a = true;
    }

    public void J0() {
        o oVar = new o(this, F0(), G0());
        this.f54875c = oVar;
        oVar.I(false);
        if (F0().getFullscreenButton() != null) {
            F0().getFullscreenButton().setOnClickListener(new a());
        }
    }

    public void K0() {
        J0();
        E0().T(this).b(F0());
    }

    public boolean L0() {
        return false;
    }

    @Override // c2.h
    public void M(String str, Object... objArr) {
    }

    public void M0() {
        if (this.f54875c.r() != 1) {
            this.f54875c.E();
        }
        F0().startWindowFullscreen(this, H0(), I0());
    }

    @Override // c2.h
    public void Q(String str, Object... objArr) {
    }

    @Override // c2.h
    public void S(String str, Object... objArr) {
    }

    @Override // c2.h
    public void T(String str, Object... objArr) {
    }

    @Override // c2.h
    public void V(String str, Object... objArr) {
    }

    @Override // c2.h
    public void Z(String str, Object... objArr) {
    }

    @Override // c2.h
    public void b0(String str, Object... objArr) {
    }

    @Override // c2.h
    public void e0(String str, Object... objArr) {
    }

    @Override // c2.h
    public void h0(String str, Object... objArr) {
    }

    @Override // c2.h
    public void i(String str, Object... objArr) {
    }

    public void j0(String str, Object... objArr) {
    }

    @Override // c2.h
    public void k(String str, Object... objArr) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        o oVar = this.f54875c;
        if (oVar != null) {
            oVar.q();
        }
        if (d.c0(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.f54873a || this.f54874b) {
            return;
        }
        F0().onConfigurationChanged(this, configuration, this.f54875c, H0(), I0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f54873a) {
            F0().getCurrentPlayer().release();
        }
        o oVar = this.f54875c;
        if (oVar != null) {
            oVar.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        F0().getCurrentPlayer().onVideoPause();
        o oVar = this.f54875c;
        if (oVar != null) {
            oVar.K(true);
        }
        this.f54874b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        F0().getCurrentPlayer().onVideoResume();
        o oVar = this.f54875c;
        if (oVar != null) {
            oVar.K(false);
        }
        this.f54874b = false;
    }

    @Override // c2.h
    public void q(String str, Object... objArr) {
    }

    public void t0(String str, Object... objArr) {
    }

    @Override // c2.h
    public void u(String str, Object... objArr) {
    }

    @Override // c2.h
    public void x(String str, Object... objArr) {
    }

    @Override // c2.h
    public void y(String str, Object... objArr) {
        o oVar = this.f54875c;
        if (oVar != null) {
            oVar.q();
        }
    }

    @Override // c2.h
    public void z0(String str, Object... objArr) {
    }
}
