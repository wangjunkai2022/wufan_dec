package com.papa.gsyvideoplayer;

import android.content.res.Configuration;
import android.view.View;
import com.papa.gsyvideoplayer.utils.n;
import com.papa.gsyvideoplayer.utils.o;
import com.papa.gsyvideoplayer.video.GSYADVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
/* loaded from: classes4.dex */
public abstract class GSYBaseADActivityDetail<T extends GSYBaseVideoPlayer, R extends GSYADVideoPlayer> extends GSYBaseActivityDetail<T> {

    /* renamed from: d  reason: collision with root package name */
    protected o f54870d;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GSYBaseADActivityDetail.this.R0();
            GSYBaseADActivityDetail.this.C0();
        }
    }

    /* loaded from: classes4.dex */
    class b extends c2.b {
        b() {
        }

        @Override // c2.b, c2.h
        public void j0(String str, Object... objArr) {
            super.j0(str, objArr);
            GSYBaseADActivityDetail gSYBaseADActivityDetail = GSYBaseADActivityDetail.this;
            gSYBaseADActivityDetail.f54870d.I(gSYBaseADActivityDetail.D0());
        }

        /* JADX WARN: Type inference failed for: r1v18, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        /* JADX WARN: Type inference failed for: r1v23, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        /* JADX WARN: Type inference failed for: r1v9, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        @Override // c2.b, c2.h
        public void q(String str, Object... objArr) {
            GSYBaseADActivityDetail.this.O0().getCurrentPlayer().release();
            GSYBaseADActivityDetail.this.O0().onVideoReset();
            GSYBaseADActivityDetail.this.O0().setVisibility(8);
            GSYBaseADActivityDetail.this.F0().getCurrentPlayer().startAfterPrepared();
            if (GSYBaseADActivityDetail.this.O0().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                GSYBaseADActivityDetail.this.O0().b();
                if (GSYBaseADActivityDetail.this.F0().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    return;
                }
                GSYBaseADActivityDetail.this.M0();
                GSYBaseADActivityDetail.this.F0().setSaveBeforeFullSystemUiVisibility(GSYBaseADActivityDetail.this.O0().getSaveBeforeFullSystemUiVisibility());
            }
        }

        /* JADX WARN: Type inference failed for: r1v4, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        /* JADX WARN: Type inference failed for: r1v8, types: [com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer] */
        @Override // c2.b, c2.h
        public void y(String str, Object... objArr) {
            o oVar = GSYBaseADActivityDetail.this.f54870d;
            if (oVar != null) {
                oVar.q();
            }
            if (GSYBaseADActivityDetail.this.F0().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                GSYBaseADActivityDetail.this.F0().onBackFullscreen();
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void C0() {
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public n G0() {
        return null;
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, c2.h
    public void J(String str, Object... objArr) {
        super.J(str, objArr);
        if (Q0()) {
            S0();
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void J0() {
        super.J0();
        o oVar = new o(this, O0(), G0());
        this.f54870d = oVar;
        oVar.I(false);
        if (O0().getFullscreenButton() != null) {
            O0().getFullscreenButton().setOnClickListener(new a());
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void K0() {
        super.K0();
        N0().T(new b()).a(O0());
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail
    public void M0() {
        if (this.f54875c.r() != 1) {
            this.f54875c.E();
        }
        F0().startWindowFullscreen(this, H0(), I0());
    }

    public abstract com.papa.gsyvideoplayer.builder.a N0();

    public abstract R O0();

    protected boolean P0() {
        return (O0().getCurrentPlayer().getCurrentState() < 0 || O0().getCurrentPlayer().getCurrentState() == 0 || O0().getCurrentPlayer().getCurrentState() == 6) ? false : true;
    }

    public abstract boolean Q0();

    public void R0() {
        if (this.f54870d.r() != 1) {
            this.f54870d.E();
        }
        O0().startWindowFullscreen(this, H0(), I0());
    }

    public void S0() {
        O0().setVisibility(0);
        O0().startPlayLogic();
        if (F0().getCurrentPlayer().isIfCurrentIsFullscreen()) {
            R0();
            O0().setSaveBeforeFullSystemUiVisibility(F0().getSaveBeforeFullSystemUiVisibility());
        }
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, c2.h
    public void j0(String str, Object... objArr) {
        super.j0(str, objArr);
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        o oVar = this.f54870d;
        if (oVar != null) {
            oVar.q();
        }
        if (com.papa.gsyvideoplayer.b.c0(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        boolean z3 = this.f54873a;
        if (!this.f54874b && O0().getVisibility() == 0 && P0()) {
            this.f54873a = false;
            O0().getCurrentPlayer().onConfigurationChanged(this, configuration, this.f54870d, H0(), I0());
        }
        super.onConfigurationChanged(configuration);
        this.f54873a = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.papa.gsyvideoplayer.b.i0();
        o oVar = this.f54870d;
        if (oVar != null) {
            oVar.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.papa.gsyvideoplayer.b.f0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.papa.gsyvideoplayer.b.g0();
    }

    @Override // com.papa.gsyvideoplayer.GSYBaseActivityDetail, c2.h
    public void t0(String str, Object... objArr) {
        super.t0(str, objArr);
        ((GSYVideoPlayer) objArr[1]).getBackButton().setVisibility(8);
    }
}
