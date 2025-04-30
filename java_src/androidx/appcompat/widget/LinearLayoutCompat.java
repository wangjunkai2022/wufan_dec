package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;
/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f1189p = 4;

    /* renamed from: q  reason: collision with root package name */
    private static final int f1190q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f1191r = 1;

    /* renamed from: s  reason: collision with root package name */
    private static final int f1192s = 2;

    /* renamed from: t  reason: collision with root package name */
    private static final int f1193t = 3;

    /* renamed from: u  reason: collision with root package name */
    private static final String f1194u = "androidx.appcompat.widget.LinearLayoutCompat";

    /* renamed from: a  reason: collision with root package name */
    private boolean f1195a;

    /* renamed from: b  reason: collision with root package name */
    private int f1196b;

    /* renamed from: c  reason: collision with root package name */
    private int f1197c;

    /* renamed from: d  reason: collision with root package name */
    private int f1198d;

    /* renamed from: e  reason: collision with root package name */
    private int f1199e;

    /* renamed from: f  reason: collision with root package name */
    private int f1200f;

    /* renamed from: g  reason: collision with root package name */
    private float f1201g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1202h;

    /* renamed from: i  reason: collision with root package name */
    private int[] f1203i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f1204j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f1205k;

    /* renamed from: l  reason: collision with root package name */
    private int f1206l;

    /* renamed from: m  reason: collision with root package name */
    private int f1207m;

    /* renamed from: n  reason: collision with root package name */
    private int f1208n;

    /* renamed from: o  reason: collision with root package name */
    private int f1209o;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface DividerMode {
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<LinearLayoutCompat> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1210a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1211b;

        /* renamed from: c  reason: collision with root package name */
        private int f1212c;

        /* renamed from: d  reason: collision with root package name */
        private int f1213d;

        /* renamed from: e  reason: collision with root package name */
        private int f1214e;

        /* renamed from: f  reason: collision with root package name */
        private int f1215f;

        /* renamed from: g  reason: collision with root package name */
        private int f1216g;

        /* renamed from: h  reason: collision with root package name */
        private int f1217h;

        /* renamed from: i  reason: collision with root package name */
        private int f1218i;

        /* renamed from: j  reason: collision with root package name */
        private int f1219j;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1211b = propertyMapper.mapBoolean("baselineAligned", 16843046);
            this.f1212c = propertyMapper.mapInt("baselineAlignedChildIndex", 16843047);
            this.f1213d = propertyMapper.mapGravity("gravity", 16842927);
            this.f1214e = propertyMapper.mapIntEnum("orientation", 16842948, new IntFunction<String>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                public String apply(int i2) {
                    return i2 != 0 ? i2 != 1 ? String.valueOf(i2) : "vertical" : "horizontal";
                }
            });
            this.f1215f = propertyMapper.mapFloat("weightSum", 16843048);
            this.f1216g = propertyMapper.mapObject("divider", R.attr.divider);
            this.f1217h = propertyMapper.mapInt("dividerPadding", R.attr.dividerPadding);
            this.f1218i = propertyMapper.mapBoolean("measureWithLargestChild", R.attr.measureWithLargestChild);
            this.f1219j = propertyMapper.mapIntFlag("showDividers", R.attr.showDividers, new IntFunction<Set<String>>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.2
                @Override // java.util.function.IntFunction
                public Set<String> apply(int i2) {
                    HashSet hashSet = new HashSet();
                    if (i2 == 0) {
                        hashSet.add("none");
                    }
                    if (i2 == 1) {
                        hashSet.add("beginning");
                    }
                    if (i2 == 2) {
                        hashSet.add("middle");
                    }
                    if (i2 == 4) {
                        hashSet.add("end");
                    }
                    return hashSet;
                }
            });
            this.f1210a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull PropertyReader propertyReader) {
            if (this.f1210a) {
                propertyReader.readBoolean(this.f1211b, linearLayoutCompat.isBaselineAligned());
                propertyReader.readInt(this.f1212c, linearLayoutCompat.getBaselineAlignedChildIndex());
                propertyReader.readGravity(this.f1213d, linearLayoutCompat.getGravity());
                propertyReader.readIntEnum(this.f1214e, linearLayoutCompat.getOrientation());
                propertyReader.readFloat(this.f1215f, linearLayoutCompat.getWeightSum());
                propertyReader.readObject(this.f1216g, linearLayoutCompat.getDividerDrawable());
                propertyReader.readInt(this.f1217h, linearLayoutCompat.getDividerPadding());
                propertyReader.readBoolean(this.f1218i, linearLayoutCompat.isMeasureWithLargestChildEnabled());
                propertyReader.readIntFlag(this.f1219j, linearLayoutCompat.getShowDividers());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
        }

        public LayoutParams(int i2, int i4, float f4) {
            super(i2, i4, f4);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }

    private void e(int i2, int i4) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i5 = 0; i5 < i2; i5++) {
            View l4 = l(i5);
            if (l4.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) l4.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i6 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = l4.getMeasuredWidth();
                    measureChildWithMargins(l4, i4, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i6;
                }
            }
        }
    }

    private void f(int i2, int i4) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i5 = 0; i5 < i2; i5++) {
            View l4 = l(i5);
            if (l4.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) l4.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i6 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = l4.getMeasuredHeight();
                    measureChildWithMargins(l4, makeMeasureSpec, 0, i4, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i6;
                }
            }
        }
    }

    private void t(View view, int i2, int i4, int i5, int i6) {
        view.layout(i2, i4, i5 + i2, i6 + i4);
    }

    void a(Canvas canvas) {
        int right;
        int left;
        int i2;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View l4 = l(i4);
            if (l4 != null && l4.getVisibility() != 8 && m(i4)) {
                LayoutParams layoutParams = (LayoutParams) l4.getLayoutParams();
                if (isLayoutRtl) {
                    left2 = l4.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                } else {
                    left2 = (l4.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.f1206l;
                }
                d(canvas, left2);
            }
        }
        if (m(virtualChildCount)) {
            View l5 = l(virtualChildCount - 1);
            if (l5 != null) {
                LayoutParams layoutParams2 = (LayoutParams) l5.getLayoutParams();
                if (isLayoutRtl) {
                    left = l5.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i2 = this.f1206l;
                    right = left - i2;
                } else {
                    right = l5.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i2 = this.f1206l;
                right = left - i2;
            }
            d(canvas, right);
        }
    }

    void b(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View l4 = l(i2);
            if (l4 != null && l4.getVisibility() != 8 && m(i2)) {
                c(canvas, (l4.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) l4.getLayoutParams())).topMargin) - this.f1207m);
            }
        }
        if (m(virtualChildCount)) {
            View l5 = l(virtualChildCount - 1);
            if (l5 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.f1207m;
            } else {
                bottom = l5.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) l5.getLayoutParams())).bottomMargin;
            }
            c(canvas, bottom);
        }
    }

    void c(Canvas canvas, int i2) {
        this.f1205k.setBounds(getPaddingLeft() + this.f1209o, i2, (getWidth() - getPaddingRight()) - this.f1209o, this.f1207m + i2);
        this.f1205k.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void d(Canvas canvas, int i2) {
        this.f1205k.setBounds(i2, getPaddingTop() + this.f1209o, this.f1206l + i2, (getHeight() - getPaddingBottom()) - this.f1209o);
        this.f1205k.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: g */
    public LayoutParams generateDefaultLayoutParams() {
        int i2 = this.f1198d;
        if (i2 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i2 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i2;
        if (this.f1196b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i4 = this.f1196b;
        if (childCount > i4) {
            View childAt = getChildAt(i4);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.f1196b == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i5 = this.f1197c;
            if (this.f1198d == 1 && (i2 = this.f1199e & 112) != 48) {
                if (i2 == 16) {
                    i5 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1200f) / 2;
                } else if (i2 == 80) {
                    i5 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1200f;
                }
            }
            return i5 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1196b;
    }

    public Drawable getDividerDrawable() {
        return this.f1205k;
    }

    public int getDividerPadding() {
        return this.f1209o;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.f1206l;
    }

    @GravityInt
    public int getGravity() {
        return this.f1199e;
    }

    public int getOrientation() {
        return this.f1198d;
    }

    public int getShowDividers() {
        return this.f1208n;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1201g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* renamed from: h */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    int i(View view, int i2) {
        return 0;
    }

    public boolean isBaselineAligned() {
        return this.f1195a;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.f1202h;
    }

    int j(View view) {
        return 0;
    }

    int k(View view) {
        return 0;
    }

    View l(int i2) {
        return getChildAt(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean m(int i2) {
        if (i2 == 0) {
            return (this.f1208n & 1) != 0;
        } else if (i2 == getChildCount()) {
            return (this.f1208n & 4) != 0;
        } else if ((this.f1208n & 2) != 0) {
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                if (getChildAt(i4).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        } else {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void n(int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.n(int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void o(int r18, int r19, int r20, int r21) {
        /*
            r17 = this;
            r6 = r17
            int r7 = r17.getPaddingLeft()
            int r0 = r20 - r18
            int r1 = r17.getPaddingRight()
            int r8 = r0 - r1
            int r0 = r0 - r7
            int r1 = r17.getPaddingRight()
            int r9 = r0 - r1
            int r10 = r17.getVirtualChildCount()
            int r0 = r6.f1199e
            r1 = r0 & 112(0x70, float:1.57E-43)
            r2 = 8388615(0x800007, float:1.1754953E-38)
            r11 = r0 & r2
            r0 = 16
            if (r1 == r0) goto L3b
            r0 = 80
            if (r1 == r0) goto L2f
            int r0 = r17.getPaddingTop()
            goto L47
        L2f:
            int r0 = r17.getPaddingTop()
            int r0 = r0 + r21
            int r0 = r0 - r19
            int r1 = r6.f1200f
            int r0 = r0 - r1
            goto L47
        L3b:
            int r0 = r17.getPaddingTop()
            int r1 = r21 - r19
            int r2 = r6.f1200f
            int r1 = r1 - r2
            int r1 = r1 / 2
            int r0 = r0 + r1
        L47:
            r1 = 0
            r12 = 0
        L49:
            if (r12 >= r10) goto Lc8
            android.view.View r13 = r6.l(r12)
            r14 = 1
            if (r13 != 0) goto L59
            int r1 = r6.r(r12)
            int r0 = r0 + r1
            goto Lc5
        L59:
            int r1 = r13.getVisibility()
            r2 = 8
            if (r1 == r2) goto Lc5
            int r4 = r13.getMeasuredWidth()
            int r15 = r13.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r1 = r13.getLayoutParams()
            r5 = r1
            androidx.appcompat.widget.LinearLayoutCompat$LayoutParams r5 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) r5
            int r1 = r5.gravity
            if (r1 >= 0) goto L75
            r1 = r11
        L75:
            int r2 = androidx.core.view.ViewCompat.getLayoutDirection(r17)
            int r1 = androidx.core.view.GravityCompat.getAbsoluteGravity(r1, r2)
            r1 = r1 & 7
            if (r1 == r14) goto L8d
            r2 = 5
            if (r1 == r2) goto L88
            int r1 = r5.leftMargin
            int r1 = r1 + r7
            goto L98
        L88:
            int r1 = r8 - r4
            int r2 = r5.rightMargin
            goto L97
        L8d:
            int r1 = r9 - r4
            int r1 = r1 / 2
            int r1 = r1 + r7
            int r2 = r5.leftMargin
            int r1 = r1 + r2
            int r2 = r5.rightMargin
        L97:
            int r1 = r1 - r2
        L98:
            r2 = r1
            boolean r1 = r6.m(r12)
            if (r1 == 0) goto La2
            int r1 = r6.f1207m
            int r0 = r0 + r1
        La2:
            int r1 = r5.topMargin
            int r16 = r0 + r1
            int r0 = r6.j(r13)
            int r3 = r16 + r0
            r0 = r17
            r1 = r13
            r14 = r5
            r5 = r15
            r0.t(r1, r2, r3, r4, r5)
            int r0 = r14.bottomMargin
            int r15 = r15 + r0
            int r0 = r6.k(r13)
            int r15 = r15 + r0
            int r16 = r16 + r15
            int r0 = r6.i(r13, r12)
            int r12 = r12 + r0
            r0 = r16
        Lc5:
            r1 = 1
            int r12 = r12 + r1
            goto L49
        Lc8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.o(int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f1205k == null) {
            return;
        }
        if (this.f1198d == 1) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f1194u);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f1194u);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        if (this.f1198d == 1) {
            o(i2, i4, i5, i6);
        } else {
            n(i2, i4, i5, i6);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i2, int i4) {
        if (this.f1198d == 1) {
            s(i2, i4);
        } else {
            q(i2, i4);
        }
    }

    void p(View view, int i2, int i4, int i5, int i6, int i7) {
        measureChildWithMargins(view, i4, i5, i6, i7);
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void q(int r38, int r39) {
        /*
            Method dump skipped, instructions count: 1288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.q(int, int):void");
    }

    int r(int i2) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0323  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void s(int r34, int r35) {
        /*
            Method dump skipped, instructions count: 911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.s(int, int):void");
    }

    public void setBaselineAligned(boolean z3) {
        this.f1195a = z3;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 >= 0 && i2 < getChildCount()) {
            this.f1196b = i2;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f1205k) {
            return;
        }
        this.f1205k = drawable;
        if (drawable != null) {
            this.f1206l = drawable.getIntrinsicWidth();
            this.f1207m = drawable.getIntrinsicHeight();
        } else {
            this.f1206l = 0;
            this.f1207m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i2) {
        this.f1209o = i2;
    }

    public void setGravity(@GravityInt int i2) {
        if (this.f1199e != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= GravityCompat.START;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f1199e = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i4 = i2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i5 = this.f1199e;
        if ((8388615 & i5) != i4) {
            this.f1199e = i4 | ((-8388616) & i5);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z3) {
        this.f1202h = z3;
    }

    public void setOrientation(int i2) {
        if (this.f1198d != i2) {
            this.f1198d = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.f1208n) {
            requestLayout();
        }
        this.f1208n = i2;
    }

    public void setVerticalGravity(int i2) {
        int i4 = i2 & 112;
        int i5 = this.f1199e;
        if ((i5 & 112) != i4) {
            this.f1199e = i4 | (i5 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f4) {
        this.f1201g = Math.max(0.0f, f4);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1195a = true;
        this.f1196b = -1;
        this.f1197c = 0;
        this.f1199e = 8388659;
        int[] iArr = R.styleable.LinearLayoutCompat;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        int i4 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i4 >= 0) {
            setOrientation(i4);
        }
        int i5 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i5 >= 0) {
            setGravity(i5);
        }
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z3) {
            setBaselineAligned(z3);
        }
        this.f1201g = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1196b = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1202h = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.f1208n = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f1209o = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
