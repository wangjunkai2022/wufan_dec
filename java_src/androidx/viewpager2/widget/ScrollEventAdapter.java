package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {

    /* renamed from: n  reason: collision with root package name */
    private static final int f8129n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f8130o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f8131p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f8132q = 3;

    /* renamed from: r  reason: collision with root package name */
    private static final int f8133r = 4;

    /* renamed from: s  reason: collision with root package name */
    private static final int f8134s = -1;

    /* renamed from: a  reason: collision with root package name */
    private ViewPager2.OnPageChangeCallback f8135a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final ViewPager2 f8136b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final RecyclerView f8137c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final LinearLayoutManager f8138d;

    /* renamed from: e  reason: collision with root package name */
    private int f8139e;

    /* renamed from: f  reason: collision with root package name */
    private int f8140f;

    /* renamed from: g  reason: collision with root package name */
    private ScrollEventValues f8141g;

    /* renamed from: h  reason: collision with root package name */
    private int f8142h;

    /* renamed from: i  reason: collision with root package name */
    private int f8143i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f8144j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f8145k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f8146l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f8147m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class ScrollEventValues {

        /* renamed from: a  reason: collision with root package name */
        int f8148a;

        /* renamed from: b  reason: collision with root package name */
        float f8149b;

        /* renamed from: c  reason: collision with root package name */
        int f8150c;

        ScrollEventValues() {
        }

        void a() {
            this.f8148a = -1;
            this.f8149b = 0.0f;
            this.f8150c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.f8136b = viewPager2;
        RecyclerView recyclerView = viewPager2.f8161j;
        this.f8137c = recyclerView;
        this.f8138d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f8141g = new ScrollEventValues();
        p();
    }

    private void b(int i2, float f4, int i4) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f8135a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i2, f4, i4);
        }
    }

    private void c(int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f8135a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i2);
        }
    }

    private void d(int i2) {
        if ((this.f8139e == 3 && this.f8140f == 0) || this.f8140f == i2) {
            return;
        }
        this.f8140f = i2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f8135a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i2);
        }
    }

    private int e() {
        return this.f8138d.findFirstVisibleItemPosition();
    }

    private boolean k() {
        int i2 = this.f8139e;
        return i2 == 1 || i2 == 4;
    }

    private void p() {
        this.f8139e = 0;
        this.f8140f = 0;
        this.f8141g.a();
        this.f8142h = -1;
        this.f8143i = -1;
        this.f8144j = false;
        this.f8145k = false;
        this.f8147m = false;
        this.f8146l = false;
    }

    private void r(boolean z3) {
        this.f8147m = z3;
        this.f8139e = z3 ? 4 : 1;
        int i2 = this.f8143i;
        if (i2 != -1) {
            this.f8142h = i2;
            this.f8143i = -1;
        } else if (this.f8142h == -1) {
            this.f8142h = e();
        }
        d(1);
    }

    private void s() {
        int top;
        ScrollEventValues scrollEventValues = this.f8141g;
        int findFirstVisibleItemPosition = this.f8138d.findFirstVisibleItemPosition();
        scrollEventValues.f8148a = findFirstVisibleItemPosition;
        if (findFirstVisibleItemPosition == -1) {
            scrollEventValues.a();
            return;
        }
        View findViewByPosition = this.f8138d.findViewByPosition(findFirstVisibleItemPosition);
        if (findViewByPosition == null) {
            scrollEventValues.a();
            return;
        }
        int leftDecorationWidth = this.f8138d.getLeftDecorationWidth(findViewByPosition);
        int rightDecorationWidth = this.f8138d.getRightDecorationWidth(findViewByPosition);
        int topDecorationHeight = this.f8138d.getTopDecorationHeight(findViewByPosition);
        int bottomDecorationHeight = this.f8138d.getBottomDecorationHeight(findViewByPosition);
        ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = findViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = findViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.f8138d.getOrientation() == 0) {
            top = (findViewByPosition.getLeft() - leftDecorationWidth) - this.f8137c.getPaddingLeft();
            if (this.f8136b.c()) {
                top = -top;
            }
            height = width;
        } else {
            top = (findViewByPosition.getTop() - topDecorationHeight) - this.f8137c.getPaddingTop();
        }
        int i2 = -top;
        scrollEventValues.f8150c = i2;
        if (i2 < 0) {
            if (new AnimateLayoutChangeDetector(this.f8138d).d()) {
                throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
            }
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.f8150c)));
        }
        scrollEventValues.f8149b = height == 0 ? 0.0f : i2 / height;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double f() {
        s();
        ScrollEventValues scrollEventValues = this.f8141g;
        double d4 = scrollEventValues.f8148a;
        double d5 = scrollEventValues.f8149b;
        Double.isNaN(d4);
        Double.isNaN(d5);
        return d4 + d5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f8140f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.f8140f == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f8147m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.f8140f == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.f8139e = 4;
        r(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        this.f8146l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        if (!h() || this.f8147m) {
            this.f8147m = false;
            s();
            ScrollEventValues scrollEventValues = this.f8141g;
            if (scrollEventValues.f8150c == 0) {
                int i2 = scrollEventValues.f8148a;
                if (i2 != this.f8142h) {
                    c(i2);
                }
                d(0);
                p();
                return;
            }
            d(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(int i2, boolean z3) {
        this.f8139e = z3 ? 2 : 3;
        this.f8147m = false;
        boolean z4 = this.f8143i != i2;
        this.f8143i = i2;
        d(2);
        if (z4) {
            c(i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
        boolean z3 = true;
        if ((this.f8139e != 1 || this.f8140f != 1) && i2 == 1) {
            r(false);
        } else if (k() && i2 == 2) {
            if (this.f8145k) {
                d(2);
                this.f8144j = true;
            }
        } else {
            if (k() && i2 == 0) {
                s();
                if (!this.f8145k) {
                    int i4 = this.f8141g.f8148a;
                    if (i4 != -1) {
                        b(i4, 0.0f, 0);
                    }
                } else {
                    ScrollEventValues scrollEventValues = this.f8141g;
                    if (scrollEventValues.f8150c == 0) {
                        int i5 = this.f8142h;
                        int i6 = scrollEventValues.f8148a;
                        if (i5 != i6) {
                            c(i6);
                        }
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    d(0);
                    p();
                }
            }
            if (this.f8139e == 2 && i2 == 0 && this.f8146l) {
                s();
                ScrollEventValues scrollEventValues2 = this.f8141g;
                if (scrollEventValues2.f8150c == 0) {
                    int i7 = this.f8143i;
                    int i8 = scrollEventValues2.f8148a;
                    if (i7 != i8) {
                        if (i8 == -1) {
                            i8 = 0;
                        }
                        c(i8);
                    }
                    d(0);
                    p();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
        if ((r5 < 0) == r3.f8136b.c()) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
        /*
            r3 = this;
            r4 = 1
            r3.f8145k = r4
            r3.s()
            boolean r0 = r3.f8144j
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L3d
            r3.f8144j = r2
            if (r6 > 0) goto L22
            if (r6 != 0) goto L20
            if (r5 >= 0) goto L16
            r5 = 1
            goto L17
        L16:
            r5 = 0
        L17:
            androidx.viewpager2.widget.ViewPager2 r6 = r3.f8136b
            boolean r6 = r6.c()
            if (r5 != r6) goto L20
            goto L22
        L20:
            r5 = 0
            goto L23
        L22:
            r5 = 1
        L23:
            if (r5 == 0) goto L2f
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f8141g
            int r6 = r5.f8150c
            if (r6 == 0) goto L2f
            int r5 = r5.f8148a
            int r5 = r5 + r4
            goto L33
        L2f:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f8141g
            int r5 = r5.f8148a
        L33:
            r3.f8143i = r5
            int r6 = r3.f8142h
            if (r6 == r5) goto L4b
            r3.c(r5)
            goto L4b
        L3d:
            int r5 = r3.f8139e
            if (r5 != 0) goto L4b
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f8141g
            int r5 = r5.f8148a
            if (r5 != r1) goto L48
            r5 = 0
        L48:
            r3.c(r5)
        L4b:
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f8141g
            int r6 = r5.f8148a
            if (r6 != r1) goto L52
            r6 = 0
        L52:
            float r0 = r5.f8149b
            int r5 = r5.f8150c
            r3.b(r6, r0, r5)
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r5 = r3.f8141g
            int r6 = r5.f8148a
            int r0 = r3.f8143i
            if (r6 == r0) goto L63
            if (r0 != r1) goto L71
        L63:
            int r5 = r5.f8150c
            if (r5 != 0) goto L71
            int r5 = r3.f8140f
            if (r5 == r4) goto L71
            r3.d(r2)
            r3.p()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f8135a = onPageChangeCallback;
    }
}
