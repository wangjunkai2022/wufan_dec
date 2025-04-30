package com.join.android.app.component.xrecyclerview;

import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2.dex */
public abstract class AppBarStateChangeListener implements AppBarLayout.OnOffsetChangedListener {

    /* renamed from: a  reason: collision with root package name */
    private State f17760a = State.IDLE;

    /* loaded from: classes2.dex */
    public enum State {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    public abstract void a(AppBarLayout appBarLayout, State state);

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public final void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
        if (i2 == 0) {
            State state = this.f17760a;
            State state2 = State.EXPANDED;
            if (state != state2) {
                a(appBarLayout, state2);
            }
            this.f17760a = state2;
        } else if (Math.abs(i2) >= appBarLayout.getTotalScrollRange()) {
            State state3 = this.f17760a;
            State state4 = State.COLLAPSED;
            if (state3 != state4) {
                a(appBarLayout, state4);
            }
            this.f17760a = state4;
        } else {
            State state5 = this.f17760a;
            State state6 = State.IDLE;
            if (state5 != state6) {
                a(appBarLayout, state6);
            }
            this.f17760a = state6;
        }
    }
}
