package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import androidx.core.view.MotionEventCompat;
import com.join.mgps.enums.ScrollState;
/* loaded from: classes3.dex */
public class ObservableListView extends ListView {

    /* renamed from: t  reason: collision with root package name */
    private static final String f45870t = ObservableListView.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private l1.j f45871a;

    /* renamed from: b  reason: collision with root package name */
    private int f45872b;

    /* renamed from: c  reason: collision with root package name */
    private int f45873c;

    /* renamed from: d  reason: collision with root package name */
    private int f45874d;

    /* renamed from: e  reason: collision with root package name */
    private SparseIntArray f45875e;

    /* renamed from: f  reason: collision with root package name */
    private int f45876f;

    /* renamed from: g  reason: collision with root package name */
    private int f45877g;

    /* renamed from: h  reason: collision with root package name */
    private ScrollState f45878h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45879i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f45880j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f45881k;

    /* renamed from: l  reason: collision with root package name */
    private AbsListView.OnScrollListener f45882l;

    /* renamed from: m  reason: collision with root package name */
    private AbsListView.OnScrollListener f45883m;

    /* renamed from: n  reason: collision with root package name */
    private float f45884n;

    /* renamed from: o  reason: collision with root package name */
    private float f45885o;

    /* renamed from: p  reason: collision with root package name */
    float f45886p;

    /* renamed from: q  reason: collision with root package name */
    float f45887q;

    /* renamed from: r  reason: collision with root package name */
    boolean f45888r;

    /* renamed from: s  reason: collision with root package name */
    private int f45889s;

    /* loaded from: classes3.dex */
    class a implements AbsListView.OnScrollListener {
        a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
            if (ObservableListView.this.f45882l != null) {
                ObservableListView.this.f45882l.onScroll(absListView, i2, i4, i5);
            }
            ObservableListView.this.d();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
            if (ObservableListView.this.f45882l != null) {
                ObservableListView.this.f45882l.onScrollStateChanged(absListView, i2);
            }
        }
    }

    public ObservableListView(Context context) {
        super(context);
        this.f45873c = -1;
        this.f45881k = false;
        this.f45883m = new a();
        this.f45884n = 0.0f;
        this.f45885o = 0.0f;
        this.f45888r = false;
        this.f45889s = 0;
        c();
    }

    private void c() {
        this.f45875e = new SparseIntArray();
        super.setOnScrollListener(this.f45883m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int i2;
        int height;
        int i4;
        int height2;
        if (this.f45871a == null || getChildCount() <= 0) {
            return;
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int firstVisiblePosition2 = getFirstVisiblePosition();
        int i5 = 0;
        while (firstVisiblePosition2 <= getLastVisiblePosition()) {
            if (this.f45875e.indexOfKey(firstVisiblePosition2) < 0 || getChildAt(i5).getHeight() != this.f45875e.get(firstVisiblePosition2)) {
                this.f45875e.put(firstVisiblePosition2, getChildAt(i5).getHeight());
            }
            firstVisiblePosition2++;
            i5++;
        }
        View childAt = getChildAt(0);
        if (childAt != null) {
            int i6 = this.f45872b;
            if (i6 < firstVisiblePosition) {
                if (firstVisiblePosition - i6 != 1) {
                    i4 = 0;
                    for (int i7 = firstVisiblePosition - 1; i7 > this.f45872b; i7--) {
                        if (this.f45875e.indexOfKey(i7) > 0) {
                            height2 = this.f45875e.get(i7);
                        } else {
                            height2 = childAt.getHeight();
                        }
                        i4 += height2;
                    }
                } else {
                    i4 = 0;
                }
                this.f45874d += this.f45873c + i4;
                this.f45873c = childAt.getHeight();
            } else if (firstVisiblePosition < i6) {
                if (i6 - firstVisiblePosition != 1) {
                    i2 = 0;
                    for (int i8 = i6 - 1; i8 > firstVisiblePosition; i8--) {
                        if (this.f45875e.indexOfKey(i8) > 0) {
                            height = this.f45875e.get(i8);
                        } else {
                            height = childAt.getHeight();
                        }
                        i2 += height;
                    }
                } else {
                    i2 = 0;
                }
                this.f45874d -= childAt.getHeight() + i2;
                this.f45873c = childAt.getHeight();
            } else if (firstVisiblePosition == 0) {
                this.f45873c = childAt.getHeight();
            }
            if (this.f45873c < 0) {
                this.f45873c = 0;
            }
            this.f45877g = this.f45874d - childAt.getTop();
            this.f45872b = firstVisiblePosition;
            if (childAt.getTop() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            this.f45871a.a(this.f45877g, this.f45879i, this.f45880j);
            if (this.f45879i) {
                this.f45879i = false;
            }
            int i9 = this.f45876f;
            int i10 = this.f45877g;
            if (i9 < i10) {
                this.f45878h = ScrollState.UP;
            } else if (i10 < i9) {
                this.f45878h = ScrollState.DOWN;
            } else {
                this.f45878h = ScrollState.STOP;
            }
            this.f45876f = i10;
        }
    }

    public int getCurrentScrollY() {
        return this.f45877g;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        if (MotionEventCompat.getActionMasked(motionEvent) == 0) {
            this.f45880j = false;
            this.f45884n = x3;
            this.f45885o = y3;
        }
        if (this.f45881k) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f45871a != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f45888r = false;
                this.f45880j = true;
                this.f45879i = true;
                this.f45886p = motionEvent.getX();
                this.f45887q = motionEvent.getY();
                getParent().requestDisallowInterceptTouchEvent(true);
            } else if (actionMasked == 1) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else if (actionMasked == 2) {
                if (!this.f45888r) {
                    if (Math.abs(motionEvent.getX() - this.f45886p) > Math.abs(motionEvent.getY() - this.f45887q)) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    } else {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    this.f45888r = true;
                }
                if (this.f45877g == 0) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            } else if (actionMasked == 3) {
                this.f45880j = false;
                this.f45871a.b(this.f45878h);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f45882l = onScrollListener;
    }

    public void setScrollViewCallbacks(l1.j jVar) {
        this.f45871a = jVar;
    }

    public ObservableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45873c = -1;
        this.f45881k = false;
        this.f45883m = new a();
        this.f45884n = 0.0f;
        this.f45885o = 0.0f;
        this.f45888r = false;
        this.f45889s = 0;
        c();
    }

    public ObservableListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45873c = -1;
        this.f45881k = false;
        this.f45883m = new a();
        this.f45884n = 0.0f;
        this.f45885o = 0.0f;
        this.f45888r = false;
        this.f45889s = 0;
        c();
    }
}
