package com.papa.gsyvideoplayer.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.OrientationEventListener;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
/* compiled from: OrientationUtils.java */
/* loaded from: classes4.dex */
public class o {

    /* renamed from: n  reason: collision with root package name */
    private static final int f55297n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f55298o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f55299p = 2;

    /* renamed from: a  reason: collision with root package name */
    private Activity f55300a;

    /* renamed from: b  reason: collision with root package name */
    private GSYBaseVideoPlayer f55301b;

    /* renamed from: c  reason: collision with root package name */
    private OrientationEventListener f55302c;

    /* renamed from: d  reason: collision with root package name */
    private n f55303d;

    /* renamed from: e  reason: collision with root package name */
    private int f55304e;

    /* renamed from: f  reason: collision with root package name */
    private int f55305f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55306g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f55307h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f55308i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55309j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55310k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55311l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f55312m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OrientationUtils.java */
    /* loaded from: classes4.dex */
    public class a extends OrientationEventListener {
        a(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        @SuppressLint({"SourceLockedOrientationActivity"})
        public void onOrientationChanged(int i2) {
            if ((Settings.System.getInt(o.this.f55300a.getContentResolver(), "accelerometer_rotation", 0) == 1) || !o.this.f55310k || (o.this.f55312m && o.this.r() != 0)) {
                if ((o.this.f55301b == null || !o.this.f55301b.isVerticalFullByVideoSize()) && !o.this.f55311l) {
                    if ((i2 < 0 || i2 > o.this.f55303d.d()) && i2 < o.this.f55303d.c()) {
                        if (i2 < o.this.f55303d.b() || i2 > o.this.f55303d.a()) {
                            if (i2 <= o.this.f55303d.f() || i2 >= o.this.f55303d.e()) {
                                return;
                            }
                            if (o.this.f55306g) {
                                if (o.this.f55305f == 2 || o.this.f55308i) {
                                    o.this.f55307h = true;
                                    o.this.f55306g = false;
                                    o.this.f55305f = 2;
                                }
                            } else if (o.this.f55305f != 2) {
                                o.this.f55304e = 0;
                                o.this.N(8);
                                if (o.this.f55301b.getFullscreenButton() != null) {
                                    o.this.f55301b.getFullscreenButton().setImageResource(o.this.f55301b.getShrinkImageRes());
                                }
                                o.this.f55305f = 2;
                                o.this.f55306g = false;
                            }
                        } else if (o.this.f55306g) {
                            if (o.this.f55305f == 1 || o.this.f55308i) {
                                o.this.f55307h = true;
                                o.this.f55306g = false;
                                o.this.f55305f = 1;
                            }
                        } else if (o.this.f55305f != 1) {
                            o.this.f55304e = 0;
                            o.this.N(0);
                            if (o.this.f55301b.getFullscreenButton() != null) {
                                o.this.f55301b.getFullscreenButton().setImageResource(o.this.f55301b.getShrinkImageRes());
                            }
                            o.this.f55305f = 1;
                            o.this.f55306g = false;
                        }
                    } else if (o.this.f55306g) {
                        if (o.this.f55305f <= 0 || o.this.f55307h) {
                            o.this.f55308i = true;
                            o.this.f55306g = false;
                            o.this.f55305f = 0;
                        }
                    } else if (o.this.f55305f > 0) {
                        if (!o.this.f55312m) {
                            o.this.f55304e = 1;
                            o.this.N(1);
                            if (o.this.f55301b.getFullscreenButton() != null) {
                                if (o.this.f55301b.isIfCurrentIsFullscreen()) {
                                    o.this.f55301b.getFullscreenButton().setImageResource(o.this.f55301b.getShrinkImageRes());
                                } else {
                                    o.this.f55301b.getFullscreenButton().setImageResource(o.this.f55301b.getEnlargeImageRes());
                                }
                            }
                            o.this.f55305f = 0;
                        }
                        o.this.f55306g = false;
                    }
                }
            }
        }
    }

    public o(Activity activity, GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        this(activity, gSYBaseVideoPlayer, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int i2) {
        try {
            this.f55300a.setRequestedOrientation(i2);
        } catch (IllegalStateException e4) {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 != 26 && i4 != 27) {
                e4.printStackTrace();
            } else {
                c.f("OrientationUtils", e4);
            }
        }
    }

    private void v(Activity activity) {
        if (this.f55305f == 0) {
            int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
            if (rotation == 0) {
                this.f55305f = 0;
                this.f55304e = 1;
            } else if (rotation == 3) {
                this.f55305f = 2;
                this.f55304e = 8;
            } else {
                this.f55305f = 1;
                this.f55304e = 0;
            }
        }
    }

    public boolean A() {
        return this.f55312m;
    }

    public boolean B() {
        return this.f55311l;
    }

    public boolean C() {
        return this.f55310k;
    }

    public void D() {
        OrientationEventListener orientationEventListener = this.f55302c;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public void E() {
        GSYBaseVideoPlayer gSYBaseVideoPlayer;
        if (this.f55305f == 0 && (gSYBaseVideoPlayer = this.f55301b) != null && gSYBaseVideoPlayer.isVerticalFullByVideoSize()) {
            return;
        }
        this.f55306g = true;
        if (this.f55305f == 0) {
            if (this.f55300a.getRequestedOrientation() == 8) {
                this.f55304e = 8;
            } else {
                this.f55304e = 0;
            }
            N(this.f55304e);
            if (this.f55301b.getFullscreenButton() != null) {
                this.f55301b.getFullscreenButton().setImageResource(this.f55301b.getShrinkImageRes());
            }
            this.f55305f = 1;
            this.f55307h = false;
            return;
        }
        this.f55304e = 1;
        N(1);
        if (this.f55301b.getFullscreenButton() != null) {
            if (this.f55301b.isIfCurrentIsFullscreen()) {
                this.f55301b.getFullscreenButton().setImageResource(this.f55301b.getShrinkImageRes());
            } else {
                this.f55301b.getFullscreenButton().setImageResource(this.f55301b.getEnlargeImageRes());
            }
        }
        this.f55305f = 0;
        this.f55308i = false;
    }

    public void F(boolean z3) {
        this.f55306g = z3;
    }

    public void G(boolean z3) {
        this.f55307h = z3;
    }

    public void H(boolean z3) {
        this.f55308i = z3;
    }

    public void I(boolean z3) {
        this.f55309j = z3;
        if (z3) {
            this.f55302c.enable();
        } else {
            this.f55302c.disable();
        }
    }

    public void J(int i2) {
        this.f55305f = i2;
    }

    public void K(boolean z3) {
        this.f55311l = z3;
    }

    public void L(boolean z3) {
        this.f55312m = z3;
    }

    public void M(n nVar) {
        this.f55303d = nVar;
    }

    public void O(boolean z3) {
        this.f55310k = z3;
    }

    public void P(int i2) {
        this.f55304e = i2;
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public int q() {
        if (this.f55305f > 0) {
            this.f55306g = true;
            N(1);
            GSYBaseVideoPlayer gSYBaseVideoPlayer = this.f55301b;
            if (gSYBaseVideoPlayer != null && gSYBaseVideoPlayer.getFullscreenButton() != null) {
                this.f55301b.getFullscreenButton().setImageResource(this.f55301b.getEnlargeImageRes());
            }
            this.f55305f = 0;
            this.f55308i = false;
            return 500;
        }
        return 0;
    }

    public int r() {
        return this.f55305f;
    }

    public n s() {
        return this.f55303d;
    }

    public int t() {
        return this.f55304e;
    }

    protected void u() {
        a aVar = new a(this.f55300a.getApplicationContext());
        this.f55302c = aVar;
        aVar.enable();
    }

    public boolean w() {
        return this.f55306g;
    }

    public boolean x() {
        return this.f55307h;
    }

    public boolean y() {
        return this.f55308i;
    }

    public boolean z() {
        return this.f55309j;
    }

    public o(Activity activity, GSYBaseVideoPlayer gSYBaseVideoPlayer, n nVar) {
        this.f55304e = 1;
        this.f55305f = 0;
        this.f55306g = false;
        this.f55307h = false;
        this.f55309j = true;
        this.f55310k = true;
        this.f55311l = false;
        this.f55312m = false;
        this.f55300a = activity;
        this.f55301b = gSYBaseVideoPlayer;
        if (nVar == null) {
            this.f55303d = new n();
        } else {
            this.f55303d = nVar;
        }
        v(activity);
        u();
    }
}
