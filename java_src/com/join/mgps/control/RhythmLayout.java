package com.join.mgps.control;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class RhythmLayout extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    private Context f44800a;

    /* renamed from: b  reason: collision with root package name */
    private com.join.mgps.control.b f44801b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f44802c;

    /* renamed from: d  reason: collision with root package name */
    private b f44803d;

    /* renamed from: e  reason: collision with root package name */
    private com.join.mgps.control.a f44804e;

    /* renamed from: f  reason: collision with root package name */
    private LinearLayout f44805f;

    /* renamed from: g  reason: collision with root package name */
    private float f44806g;

    /* renamed from: h  reason: collision with root package name */
    private int f44807h;

    /* renamed from: i  reason: collision with root package name */
    private int f44808i;

    /* renamed from: j  reason: collision with root package name */
    private int f44809j;

    /* renamed from: k  reason: collision with root package name */
    private int f44810k;

    /* renamed from: l  reason: collision with root package name */
    private int f44811l;

    /* renamed from: m  reason: collision with root package name */
    private long f44812m;

    /* renamed from: n  reason: collision with root package name */
    private int f44813n;

    /* renamed from: o  reason: collision with root package name */
    private int f44814o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f44815a;

        a(List list) {
            this.f44815a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i2 = 0; i2 < this.f44815a.size(); i2++) {
                RhythmLayout.this.v((View) this.f44815a.get(i2), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends Timer {

        /* renamed from: a  reason: collision with root package name */
        private TimerTask f44817a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f44818b = false;

        /* renamed from: c  reason: collision with root package name */
        private float f44819c;

        /* renamed from: d  reason: collision with root package name */
        private float f44820d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends TimerTask {

            /* renamed from: com.join.mgps.control.RhythmLayout$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0190a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ List f44823a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ int f44824b;

                RunnableC0190a(List list, int i2) {
                    this.f44823a = list;
                    this.f44824b = i2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    RhythmLayout rhythmLayout = RhythmLayout.this;
                    rhythmLayout.r(rhythmLayout.f44809j, this.f44823a);
                    RhythmLayout.this.s(this.f44824b, 500, 0, true);
                    RhythmLayout.this.A(10L);
                }
            }

            a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                int i2;
                long currentTimeMillis = System.currentTimeMillis() - RhythmLayout.this.f44812m;
                if (!b.this.f44818b || currentTimeMillis <= 1000) {
                    return;
                }
                int firstVisibleItemPosition = RhythmLayout.this.getFirstVisibleItemPosition();
                boolean z3 = true;
                boolean z4 = false;
                if (b.this.f44819c > RhythmLayout.this.f44810k || b.this.f44819c < 0.0f) {
                    if (b.this.f44819c > RhythmLayout.this.f44811l - RhythmLayout.this.f44810k && RhythmLayout.this.getSize() >= firstVisibleItemPosition + 7 + 1) {
                        RhythmLayout.this.f44809j = 7;
                        i2 = firstVisibleItemPosition + 1;
                        z3 = false;
                        z4 = true;
                    }
                    i2 = 0;
                    z3 = false;
                } else {
                    i2 = firstVisibleItemPosition - 1;
                    if (i2 >= 0) {
                        RhythmLayout.this.f44809j = 0;
                    }
                    i2 = 0;
                    z3 = false;
                }
                if (z3 || z4) {
                    RhythmLayout.this.f44802c.post(new RunnableC0190a(RhythmLayout.this.o(z3, z4), i2));
                }
            }
        }

        b() {
        }

        void c(float f4, float f5) {
            this.f44819c = f4;
            this.f44820d = f5;
            if (f4 >= 0.0f && ((f4 <= RhythmLayout.this.f44810k || f4 >= RhythmLayout.this.f44811l - RhythmLayout.this.f44810k) && f5 >= 0.0f)) {
                this.f44818b = true;
                return;
            }
            RhythmLayout.this.f44812m = System.currentTimeMillis();
            this.f44818b = false;
        }

        void d() {
            if (this.f44817a == null) {
                this.f44817a = new a();
            }
            schedule(this.f44817a, 300L, 250L);
        }
    }

    public RhythmLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(long j4) {
    }

    private List<View> getVisibleViews() {
        ArrayList arrayList = new ArrayList();
        if (this.f44805f == null) {
            return arrayList;
        }
        int firstVisibleItemPosition = getFirstVisibleItemPosition();
        int i2 = firstVisibleItemPosition + 7;
        if (this.f44805f.getChildCount() < 7) {
            i2 = this.f44805f.getChildCount();
        }
        while (firstVisibleItemPosition < i2) {
            arrayList.add(this.f44805f.getChildAt(firstVisibleItemPosition));
            firstVisibleItemPosition++;
        }
        return arrayList;
    }

    private void k() {
        this.f44803d.c(-1.0f, -1.0f);
        if (this.f44809j < 0) {
            return;
        }
        int firstVisibleItemPosition = getFirstVisibleItemPosition();
        int i2 = this.f44809j + firstVisibleItemPosition;
        List<View> visibleViews = getVisibleViews();
        int size = visibleViews.size();
        int i4 = this.f44809j;
        if (size > i4) {
            visibleViews.remove(i4);
        }
        int i5 = firstVisibleItemPosition - 1;
        if (i5 >= 0) {
            visibleViews.add(this.f44805f.getChildAt(i5));
        }
        int i6 = i2 + 1;
        if (i6 <= this.f44805f.getChildCount()) {
            visibleViews.add(this.f44805f.getChildAt(i6));
        }
        this.f44802c.postDelayed(new a(visibleViews), 200L);
        com.join.mgps.control.a aVar = this.f44804e;
        if (aVar != null) {
            aVar.onSelected(i2);
        }
        this.f44809j = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<View> o(boolean z3, boolean z4) {
        ArrayList arrayList = new ArrayList();
        if (this.f44805f == null) {
            return arrayList;
        }
        int firstVisibleItemPosition = getFirstVisibleItemPosition();
        int i2 = firstVisibleItemPosition + 7;
        if (this.f44805f.getChildCount() < 7) {
            i2 = this.f44805f.getChildCount();
        }
        if (z3 && firstVisibleItemPosition > 0) {
            firstVisibleItemPosition--;
        }
        if (z4 && i2 < this.f44805f.getChildCount()) {
            i2++;
        }
        while (firstVisibleItemPosition < i2) {
            arrayList.add(this.f44805f.getChildAt(firstVisibleItemPosition));
            firstVisibleItemPosition++;
        }
        return arrayList;
    }

    private void p() {
        int dimensionPixelSize = h.e(this.f44800a).widthPixels - getResources().getDimensionPixelSize(R.dimen.topic_margin);
        this.f44811l = dimensionPixelSize;
        float f4 = dimensionPixelSize / 7;
        this.f44806g = f4;
        int i2 = (int) f4;
        this.f44807h = i2;
        this.f44808i = i2 / 6;
        this.f44810k = getResources().getDimensionPixelSize(R.dimen.rhythm_edge_size_for_shift);
        this.f44809j = -1;
        this.f44814o = -1;
        this.f44813n = 0;
        this.f44812m = 0L;
        this.f44802c = new Handler();
        b bVar = new b();
        this.f44803d = bVar;
        bVar.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(int i2, List<View> list) {
        if (i2 >= list.size()) {
            return;
        }
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            z(list.get(i4), Math.min(Math.max(Math.abs(i2 - i4) * this.f44808i, 10), this.f44807h));
        }
    }

    private Animator x(int i2, int i4, int i5, boolean z3) {
        return com.join.mgps.Util.c.i(this, i2, i4, i5, z3);
    }

    private void y(float f4) {
        List<View> visibleViews = getVisibleViews();
        int i2 = (int) (f4 / this.f44806g);
        if (i2 == this.f44809j || i2 >= this.f44805f.getChildCount()) {
            return;
        }
        this.f44809j = i2;
        r(i2, visibleViews);
    }

    private void z(View view, int i2) {
        if (view != null) {
            com.join.mgps.Util.c.l(view, i2, 100, true, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f44803d.c(motionEvent.getX(), motionEvent.getY());
            this.f44812m = System.currentTimeMillis();
            y(motionEvent.getX() - 40.0f);
            com.join.mgps.control.a aVar = this.f44804e;
            if (aVar != null) {
                aVar.a();
            }
        } else if (action == 1) {
            k();
        } else if (action == 2) {
            this.f44803d.c(motionEvent.getX(), motionEvent.getY());
            y(motionEvent.getX());
        }
        return true;
    }

    public int getFirstVisibleItemPosition() {
        LinearLayout linearLayout = this.f44805f;
        if (linearLayout == null) {
            return 0;
        }
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getScrollX() < this.f44805f.getChildAt(i2).getX() + (this.f44806g / 2.0f)) {
                return i2;
            }
        }
        return 0;
    }

    public float getRhythmItemWidth() {
        return this.f44806g;
    }

    public int getSize() {
        LinearLayout linearLayout = this.f44805f;
        if (linearLayout == null) {
            return 0;
        }
        return linearLayout.getChildCount();
    }

    public Animator l(int i2, boolean z3) {
        if (i2 >= 0) {
            return m(n(i2), z3);
        }
        return null;
    }

    public Animator m(View view, boolean z3) {
        if (view != null) {
            return com.join.mgps.Util.c.l(view, 10, 350, z3, true);
        }
        return null;
    }

    public View n(int i2) {
        return this.f44805f.getChildAt(i2);
    }

    public void q() {
        int childCount = this.f44805f.getChildCount();
        if (childCount < this.f44801b.getCount()) {
            while (childCount < this.f44801b.getCount()) {
                this.f44805f.addView(this.f44801b.getView(childCount, null, null));
                childCount++;
            }
        }
    }

    public Animator s(int i2, int i4, int i5, boolean z3) {
        return x((int) n(i2).getX(), i4, i5, z3);
    }

    public void setAdapter(com.join.mgps.control.b bVar) {
        this.f44801b = bVar;
        if (this.f44805f == null) {
            this.f44805f = (LinearLayout) getChildAt(0);
        }
        this.f44801b.d(this.f44806g);
        for (int i2 = 0; i2 < this.f44801b.getCount(); i2++) {
            this.f44805f.addView(this.f44801b.getView(i2, null, null));
        }
    }

    public void setRhythmListener(com.join.mgps.control.a aVar) {
        this.f44804e = aVar;
    }

    public void setScrollRhythmStartDelayTime(int i2) {
        this.f44813n = i2;
    }

    public Animator t(int i2, int i4, boolean z3) {
        int x3 = (int) n(i2).getX();
        if (x3 == 0) {
            x3 = (int) (this.f44806g * i2);
        }
        return x(x3, 300, i4, z3);
    }

    public Animator u(int i2, boolean z3) {
        if (i2 < 0 || this.f44805f == null || getSize() <= i2) {
            return null;
        }
        return v(n(i2), z3);
    }

    public Animator v(View view, boolean z3) {
        if (view != null) {
            return com.join.mgps.Util.c.l(view, this.f44807h, 350, z3, true);
        }
        return null;
    }

    public void w(int i2) {
        Animator t3;
        StringBuilder sb = new StringBuilder();
        sb.append("showRhythmAtPosition: ");
        sb.append(i2);
        int i4 = this.f44814o;
        if (i4 == i2) {
            return;
        }
        if (i4 >= 0 && this.f44801b.getCount() > 7 && i2 > 3) {
            if (this.f44801b.getCount() - i2 <= 3) {
                t3 = t(this.f44801b.getCount() - 7, this.f44813n, false);
            } else {
                t3 = t(i2 - 3, this.f44813n, false);
            }
        } else {
            t3 = t(0, this.f44813n, false);
        }
        Animator l4 = l(i2, false);
        Animator u3 = u(this.f44814o, false);
        AnimatorSet animatorSet = new AnimatorSet();
        if (l4 != null) {
            animatorSet.playTogether(l4);
        }
        if (u3 != null) {
            animatorSet.playTogether(u3);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playSequentially(t3, animatorSet);
        animatorSet2.start();
        this.f44814o = i2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("showRhythmAtPosition: ");
        sb2.append(i2);
    }

    public RhythmLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44800a = context;
        p();
    }
}
