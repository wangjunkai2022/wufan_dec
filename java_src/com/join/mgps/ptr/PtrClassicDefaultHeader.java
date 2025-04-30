package com.join.mgps.ptr;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes4.dex */
public class PtrClassicDefaultHeader extends FrameLayout implements c {

    /* renamed from: k  reason: collision with root package name */
    private static final String f51110k = "cube_ptr_classic_last_update";

    /* renamed from: l  reason: collision with root package name */
    private static SimpleDateFormat f51111l = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* renamed from: a  reason: collision with root package name */
    private int f51112a;

    /* renamed from: b  reason: collision with root package name */
    private RotateAnimation f51113b;

    /* renamed from: c  reason: collision with root package name */
    private RotateAnimation f51114c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f51115d;

    /* renamed from: e  reason: collision with root package name */
    private View f51116e;

    /* renamed from: f  reason: collision with root package name */
    private long f51117f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f51118g;

    /* renamed from: h  reason: collision with root package name */
    private String f51119h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f51120i;

    /* renamed from: j  reason: collision with root package name */
    private b f51121j;

    /* loaded from: classes4.dex */
    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private boolean f51122a;

        private b() {
            this.f51122a = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            if (TextUtils.isEmpty(PtrClassicDefaultHeader.this.f51119h)) {
                return;
            }
            this.f51122a = true;
            run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.f51122a = false;
            PtrClassicDefaultHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicDefaultHeader.this.n();
            if (this.f51122a) {
                PtrClassicDefaultHeader.this.postDelayed(this, 1000L);
            }
        }
    }

    public PtrClassicDefaultHeader(Context context) {
        super(context);
        this.f51112a = 150;
        this.f51117f = -1L;
        this.f51121j = new b();
        l(null);
    }

    private String getLastUpdateTime() {
        if (this.f51117f == -1 && !TextUtils.isEmpty(this.f51119h)) {
            this.f51117f = getContext().getSharedPreferences(f51110k, 0).getLong(this.f51119h, -1L);
        }
        if (this.f51117f == -1) {
            return null;
        }
        long time = new Date().getTime() - this.f51117f;
        int i2 = (int) (time / 1000);
        if (time >= 0 && i2 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(getContext().getString(R.string.cube_ptr_last_update));
            if (i2 < 60) {
                sb.append(i2 + getContext().getString(R.string.cube_ptr_seconds_ago));
            } else {
                int i4 = i2 / 60;
                if (i4 > 60) {
                    int i5 = i4 / 60;
                    if (i5 > 24) {
                        sb.append(f51111l.format(new Date(this.f51117f)));
                    } else {
                        sb.append(i5 + getContext().getString(R.string.cube_ptr_hours_ago));
                    }
                } else {
                    sb.append(i4 + getContext().getString(R.string.cube_ptr_minutes_ago));
                }
            }
            return sb.toString();
        }
        return null;
    }

    private void h() {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f51113b = rotateAnimation;
        rotateAnimation.setInterpolator(new LinearInterpolator());
        this.f51113b.setDuration(this.f51112a);
        this.f51113b.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f51114c = rotateAnimation2;
        rotateAnimation2.setInterpolator(new LinearInterpolator());
        this.f51114c.setDuration(this.f51112a);
        this.f51114c.setFillAfter(true);
    }

    private void i(PtrFrameLayout ptrFrameLayout) {
        this.f51115d.setVisibility(0);
        if (ptrFrameLayout.p()) {
            this.f51115d.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        } else {
            this.f51115d.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        }
    }

    private void j(PtrFrameLayout ptrFrameLayout) {
        if (ptrFrameLayout.p()) {
            return;
        }
        this.f51115d.setVisibility(0);
        this.f51115d.setText(R.string.xlistview_header_hint_ready);
    }

    private void k() {
    }

    private void m() {
        k();
        this.f51116e.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (!TextUtils.isEmpty(this.f51119h) && this.f51120i) {
            String lastUpdateTime = getLastUpdateTime();
            if (TextUtils.isEmpty(lastUpdateTime)) {
                this.f51118g.setVisibility(8);
                return;
            }
            this.f51118g.setVisibility(0);
            this.f51118g.setText(lastUpdateTime);
            return;
        }
        this.f51118g.setVisibility(8);
    }

    @Override // com.join.mgps.ptr.c
    public void a(PtrFrameLayout ptrFrameLayout) {
        k();
        this.f51116e.setVisibility(4);
        this.f51115d.setVisibility(0);
        this.f51115d.setText(getResources().getString(R.string.xlistview_header_hint_loading));
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(f51110k, 0);
        if (TextUtils.isEmpty(this.f51119h)) {
            return;
        }
        this.f51117f = new Date().getTime();
        sharedPreferences.edit().putLong(this.f51119h, this.f51117f).commit();
    }

    @Override // com.join.mgps.ptr.c
    public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
        int offsetToRefresh = ptrFrameLayout.getOffsetToRefresh();
        int d4 = aVar.d();
        int g4 = aVar.g();
        if (d4 < offsetToRefresh && g4 >= offsetToRefresh) {
            if (z3 && b4 == 2) {
                i(ptrFrameLayout);
            }
        } else if (d4 <= offsetToRefresh || g4 > offsetToRefresh || !z3 || b4 != 2) {
        } else {
            j(ptrFrameLayout);
        }
    }

    @Override // com.join.mgps.ptr.c
    public void c(PtrFrameLayout ptrFrameLayout) {
        m();
        this.f51120i = true;
        n();
    }

    @Override // com.join.mgps.ptr.c
    public void d(PtrFrameLayout ptrFrameLayout) {
        this.f51120i = true;
        n();
        this.f51121j.c();
        this.f51116e.setVisibility(4);
        this.f51115d.setVisibility(0);
        if (ptrFrameLayout.p()) {
            this.f51115d.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        } else {
            this.f51115d.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        }
    }

    @Override // com.join.mgps.ptr.c
    public void e(PtrFrameLayout ptrFrameLayout) {
        this.f51120i = false;
        k();
        this.f51116e.setVisibility(0);
        this.f51115d.setVisibility(0);
        this.f51115d.setText(R.string.xlistview_header_hint_loading);
        n();
        this.f51121j.d();
    }

    protected void l(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.PtrClassicHeader, 0, 0);
        if (obtainStyledAttributes != null) {
            this.f51112a = obtainStyledAttributes.getInt(0, this.f51112a);
        }
        h();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.cube_ptr_classic_default_header, this);
        this.f51115d = (TextView) inflate.findViewById(R.id.ptr_classic_header_rotate_view_header_title);
        this.f51118g = (TextView) inflate.findViewById(R.id.ptr_classic_header_rotate_view_header_last_update);
        this.f51116e = inflate.findViewById(R.id.ptr_classic_header_rotate_view_progressbar);
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f51121j;
        if (bVar != null) {
            bVar.d();
        }
    }

    public void setLastUpdateTimeKey(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f51119h = str;
    }

    public void setLastUpdateTimeRelateObject(Object obj) {
        setLastUpdateTimeKey(obj.getClass().getName());
    }

    public void setRotateAniTime(int i2) {
        if (i2 == this.f51112a || i2 == 0) {
            return;
        }
        this.f51112a = i2;
        h();
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51112a = 150;
        this.f51117f = -1L;
        this.f51121j = new b();
        l(attributeSet);
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51112a = 150;
        this.f51117f = -1L;
        this.f51121j = new b();
        l(attributeSet);
    }
}
