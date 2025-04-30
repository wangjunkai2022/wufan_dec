package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ChildHelper {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f6776d = false;

    /* renamed from: e  reason: collision with root package name */
    private static final String f6777e = "ChildrenHelper";

    /* renamed from: a  reason: collision with root package name */
    final Callback f6778a;

    /* renamed from: b  reason: collision with root package name */
    final Bucket f6779b = new Bucket();

    /* renamed from: c  reason: collision with root package name */
    final List<View> f6780c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Bucket {

        /* renamed from: c  reason: collision with root package name */
        static final int f6781c = 64;

        /* renamed from: d  reason: collision with root package name */
        static final long f6782d = Long.MIN_VALUE;

        /* renamed from: a  reason: collision with root package name */
        long f6783a = 0;

        /* renamed from: b  reason: collision with root package name */
        Bucket f6784b;

        Bucket() {
        }

        private void c() {
            if (this.f6784b == null) {
                this.f6784b = new Bucket();
            }
        }

        void a(int i2) {
            if (i2 >= 64) {
                Bucket bucket = this.f6784b;
                if (bucket != null) {
                    bucket.a(i2 - 64);
                    return;
                }
                return;
            }
            this.f6783a &= (1 << i2) ^ (-1);
        }

        int b(int i2) {
            Bucket bucket = this.f6784b;
            if (bucket == null) {
                if (i2 >= 64) {
                    return Long.bitCount(this.f6783a);
                }
                return Long.bitCount(this.f6783a & ((1 << i2) - 1));
            } else if (i2 < 64) {
                return Long.bitCount(this.f6783a & ((1 << i2) - 1));
            } else {
                return bucket.b(i2 - 64) + Long.bitCount(this.f6783a);
            }
        }

        boolean d(int i2) {
            if (i2 < 64) {
                return (this.f6783a & (1 << i2)) != 0;
            }
            c();
            return this.f6784b.d(i2 - 64);
        }

        boolean e(int i2) {
            if (i2 >= 64) {
                c();
                return this.f6784b.e(i2 - 64);
            }
            long j4 = 1 << i2;
            long j5 = this.f6783a;
            boolean z3 = (j5 & j4) != 0;
            long j6 = j5 & (j4 ^ (-1));
            this.f6783a = j6;
            long j7 = j4 - 1;
            this.f6783a = (j6 & j7) | Long.rotateRight((j7 ^ (-1)) & j6, 1);
            Bucket bucket = this.f6784b;
            if (bucket != null) {
                if (bucket.d(0)) {
                    g(63);
                }
                this.f6784b.e(0);
            }
            return z3;
        }

        void f() {
            this.f6783a = 0L;
            Bucket bucket = this.f6784b;
            if (bucket != null) {
                bucket.f();
            }
        }

        void g(int i2) {
            if (i2 >= 64) {
                c();
                this.f6784b.g(i2 - 64);
                return;
            }
            this.f6783a |= 1 << i2;
        }

        void insert(int i2, boolean z3) {
            if (i2 >= 64) {
                c();
                this.f6784b.insert(i2 - 64, z3);
                return;
            }
            long j4 = this.f6783a;
            boolean z4 = (Long.MIN_VALUE & j4) != 0;
            long j5 = (1 << i2) - 1;
            this.f6783a = ((j4 & (j5 ^ (-1))) << 1) | (j4 & j5);
            if (z3) {
                g(i2);
            } else {
                a(i2);
            }
            if (z4 || this.f6784b != null) {
                c();
                this.f6784b.insert(0, z4);
            }
        }

        public String toString() {
            if (this.f6784b == null) {
                return Long.toBinaryString(this.f6783a);
            }
            return this.f6784b.toString() + "xx" + Long.toBinaryString(this.f6783a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Callback {
        void addView(View view, int i2);

        void attachViewToParent(View view, int i2, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i2);

        View getChildAt(int i2);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChildHelper(Callback callback) {
        this.f6778a = callback;
    }

    private int h(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int childCount = this.f6778a.getChildCount();
        int i4 = i2;
        while (i4 < childCount) {
            int b4 = i2 - (i4 - this.f6779b.b(i4));
            if (b4 == 0) {
                while (this.f6779b.d(i4)) {
                    i4++;
                }
                return i4;
            }
            i4 += b4;
        }
        return -1;
    }

    private void l(View view) {
        this.f6780c.add(view);
        this.f6778a.onEnteredHiddenState(view);
    }

    private boolean t(View view) {
        if (this.f6780c.remove(view)) {
            this.f6778a.onLeftHiddenState(view);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i2, boolean z3) {
        int h4;
        if (i2 < 0) {
            h4 = this.f6778a.getChildCount();
        } else {
            h4 = h(i2);
        }
        this.f6779b.insert(h4, z3);
        if (z3) {
            l(view);
        }
        this.f6778a.addView(view, h4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(View view, boolean z3) {
        a(view, -1, z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z3) {
        int h4;
        if (i2 < 0) {
            h4 = this.f6778a.getChildCount();
        } else {
            h4 = h(i2);
        }
        this.f6779b.insert(h4, z3);
        if (z3) {
            l(view);
        }
        this.f6778a.attachViewToParent(view, h4, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i2) {
        int h4 = h(i2);
        this.f6779b.e(h4);
        this.f6778a.detachViewFromParent(h4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View e(int i2) {
        int size = this.f6780c.size();
        for (int i4 = 0; i4 < size; i4++) {
            View view = this.f6780c.get(i4);
            RecyclerView.ViewHolder childViewHolder = this.f6778a.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == i2 && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View f(int i2) {
        return this.f6778a.getChildAt(h(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f6778a.getChildCount() - this.f6780c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View i(int i2) {
        return this.f6778a.getChildAt(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f6778a.getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(View view) {
        int indexOfChild = this.f6778a.indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f6779b.g(indexOfChild);
            l(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m(View view) {
        int indexOfChild = this.f6778a.indexOfChild(view);
        if (indexOfChild == -1 || this.f6779b.d(indexOfChild)) {
            return -1;
        }
        return indexOfChild - this.f6779b.b(indexOfChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n(View view) {
        return this.f6780c.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        this.f6779b.f();
        for (int size = this.f6780c.size() - 1; size >= 0; size--) {
            this.f6778a.onLeftHiddenState(this.f6780c.get(size));
            this.f6780c.remove(size);
        }
        this.f6778a.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(View view) {
        int indexOfChild = this.f6778a.indexOfChild(view);
        if (indexOfChild < 0) {
            return;
        }
        if (this.f6779b.e(indexOfChild)) {
            t(view);
        }
        this.f6778a.removeViewAt(indexOfChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(int i2) {
        int h4 = h(i2);
        View childAt = this.f6778a.getChildAt(h4);
        if (childAt == null) {
            return;
        }
        if (this.f6779b.e(h4)) {
            t(childAt);
        }
        this.f6778a.removeViewAt(h4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r(View view) {
        int indexOfChild = this.f6778a.indexOfChild(view);
        if (indexOfChild == -1) {
            t(view);
            return true;
        } else if (this.f6779b.d(indexOfChild)) {
            this.f6779b.e(indexOfChild);
            t(view);
            this.f6778a.removeViewAt(indexOfChild);
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(View view) {
        int indexOfChild = this.f6778a.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (this.f6779b.d(indexOfChild)) {
                this.f6779b.a(indexOfChild);
                t(view);
                return;
            }
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    public String toString() {
        return this.f6779b.toString() + ", hidden list:" + this.f6780c.size();
    }
}
