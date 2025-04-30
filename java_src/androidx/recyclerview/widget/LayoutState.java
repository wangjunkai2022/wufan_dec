package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class LayoutState {

    /* renamed from: j  reason: collision with root package name */
    static final int f6987j = -1;

    /* renamed from: k  reason: collision with root package name */
    static final int f6988k = 1;

    /* renamed from: l  reason: collision with root package name */
    static final int f6989l = Integer.MIN_VALUE;

    /* renamed from: m  reason: collision with root package name */
    static final int f6990m = -1;

    /* renamed from: n  reason: collision with root package name */
    static final int f6991n = 1;

    /* renamed from: b  reason: collision with root package name */
    int f6993b;

    /* renamed from: c  reason: collision with root package name */
    int f6994c;

    /* renamed from: d  reason: collision with root package name */
    int f6995d;

    /* renamed from: e  reason: collision with root package name */
    int f6996e;

    /* renamed from: h  reason: collision with root package name */
    boolean f6999h;

    /* renamed from: i  reason: collision with root package name */
    boolean f7000i;

    /* renamed from: a  reason: collision with root package name */
    boolean f6992a = true;

    /* renamed from: f  reason: collision with root package name */
    int f6997f = 0;

    /* renamed from: g  reason: collision with root package name */
    int f6998g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(RecyclerView.State state) {
        int i2 = this.f6994c;
        return i2 >= 0 && i2 < state.getItemCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View b(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.f6994c);
        this.f6994c += this.f6995d;
        return viewForPosition;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f6993b + ", mCurrentPosition=" + this.f6994c + ", mItemDirection=" + this.f6995d + ", mLayoutDirection=" + this.f6996e + ", mStartLine=" + this.f6997f + ", mEndLine=" + this.f6998g + '}';
    }
}
