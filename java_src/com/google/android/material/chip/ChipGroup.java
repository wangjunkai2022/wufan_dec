package com.google.android.material.chip;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.a;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class ChipGroup extends FlowLayout {

    /* renamed from: k  reason: collision with root package name */
    private static final int f14415k = R.style.Widget_MaterialComponents_ChipGroup;
    @Dimension

    /* renamed from: e  reason: collision with root package name */
    private int f14416e;
    @Dimension

    /* renamed from: f  reason: collision with root package name */
    private int f14417f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private d f14418g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.material.internal.a<Chip> f14419h;

    /* renamed from: i  reason: collision with root package name */
    private final int f14420i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final e f14421j;

    /* loaded from: classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* loaded from: classes2.dex */
    class a implements a.b {
        a() {
        }

        @Override // com.google.android.material.internal.a.b
        public void a(Set<Integer> set) {
            if (ChipGroup.this.f14418g != null) {
                d dVar = ChipGroup.this.f14418g;
                ChipGroup chipGroup = ChipGroup.this;
                dVar.a(chipGroup, chipGroup.f14419h.j(ChipGroup.this));
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f14423a;

        b(c cVar) {
            this.f14423a = cVar;
        }

        @Override // com.google.android.material.chip.ChipGroup.d
        public void a(@NonNull ChipGroup chipGroup, @NonNull List<Integer> list) {
            if (ChipGroup.this.f14419h.m()) {
                this.f14423a.a(chipGroup, ChipGroup.this.getCheckedChipId());
            }
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface c {
        void a(@NonNull ChipGroup chipGroup, @IdRes int i2);
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(@NonNull ChipGroup chipGroup, @NonNull List<Integer> list);
    }

    /* loaded from: classes2.dex */
    private class e implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f14425a;

        private e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                ChipGroup.this.f14419h.e((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f14425a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                chipGroup.f14419h.o((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f14425a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }

        /* synthetic */ e(ChipGroup chipGroup, a aVar) {
            this();
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    private int getChipCount() {
        int i2 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if (getChildAt(i4) instanceof Chip) {
                i2++;
            }
        }
        return i2;
    }

    @Override // com.google.android.material.internal.FlowLayout
    public boolean c() {
        return super.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void g(@IdRes int i2) {
        this.f14419h.f(i2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @IdRes
    public int getCheckedChipId() {
        return this.f14419h.k();
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        return this.f14419h.j(this);
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.f14416e;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.f14417f;
    }

    public void h() {
        this.f14419h.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i(@Nullable View view) {
        if (view instanceof Chip) {
            int i2 = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                if (getChildAt(i4) instanceof Chip) {
                    if (((Chip) getChildAt(i4)) == view) {
                        return i2;
                    }
                    i2++;
                }
            }
            return -1;
        }
        return -1;
    }

    public boolean j() {
        return this.f14419h.l();
    }

    public boolean k() {
        return this.f14419h.m();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f14420i;
        if (i2 != -1) {
            this.f14419h.f(i2);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), c() ? getChipCount() : -1, false, k() ? 1 : 2));
    }

    public void setChipSpacing(@Dimension int i2) {
        setChipSpacingHorizontal(i2);
        setChipSpacingVertical(i2);
    }

    public void setChipSpacingHorizontal(@Dimension int i2) {
        if (this.f14416e != i2) {
            this.f14416e = i2;
            setItemSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i2) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingResource(@DimenRes int i2) {
        setChipSpacing(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingVertical(@Dimension int i2) {
        if (this.f14417f != i2) {
            this.f14417f = i2;
            setLineSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i2) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i2));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i2) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(@Nullable c cVar) {
        if (cVar == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new b(cVar));
        }
    }

    public void setOnCheckedStateChangeListener(@Nullable d dVar) {
        this.f14418g = dVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f14421j.f14425a = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z3) {
        this.f14419h.q(z3);
    }

    @Deprecated
    public void setShowDividerHorizontal(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z3) {
        super.setSingleLine(z3);
    }

    public void setSingleSelection(boolean z3) {
        this.f14419h.r(z3);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public void setSingleLine(@BoolRes int i2) {
        setSingleLine(getResources().getBoolean(i2));
    }

    public void setSingleSelection(@BoolRes int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChipGroup(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            int r4 = com.google.android.material.chip.ChipGroup.f14415k
            android.content.Context r9 = com.google.android.material.theme.overlay.a.c(r9, r10, r11, r4)
            r8.<init>(r9, r10, r11)
            com.google.android.material.internal.a r9 = new com.google.android.material.internal.a
            r9.<init>()
            r8.f14419h = r9
            com.google.android.material.chip.ChipGroup$e r6 = new com.google.android.material.chip.ChipGroup$e
            r0 = 0
            r6.<init>(r8, r0)
            r8.f14421j = r6
            android.content.Context r0 = r8.getContext()
            int[] r2 = com.google.android.material.R.styleable.ChipGroup
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r10
            r3 = r11
            android.content.res.TypedArray r10 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r11 = com.google.android.material.R.styleable.ChipGroup_chipSpacing
            int r11 = r10.getDimensionPixelOffset(r11, r7)
            int r0 = com.google.android.material.R.styleable.ChipGroup_chipSpacingHorizontal
            int r0 = r10.getDimensionPixelOffset(r0, r11)
            r8.setChipSpacingHorizontal(r0)
            int r0 = com.google.android.material.R.styleable.ChipGroup_chipSpacingVertical
            int r11 = r10.getDimensionPixelOffset(r0, r11)
            r8.setChipSpacingVertical(r11)
            int r11 = com.google.android.material.R.styleable.ChipGroup_singleLine
            boolean r11 = r10.getBoolean(r11, r7)
            r8.setSingleLine(r11)
            int r11 = com.google.android.material.R.styleable.ChipGroup_singleSelection
            boolean r11 = r10.getBoolean(r11, r7)
            r8.setSingleSelection(r11)
            int r11 = com.google.android.material.R.styleable.ChipGroup_selectionRequired
            boolean r11 = r10.getBoolean(r11, r7)
            r8.setSelectionRequired(r11)
            int r11 = com.google.android.material.R.styleable.ChipGroup_checkedChip
            r0 = -1
            int r11 = r10.getResourceId(r11, r0)
            r8.f14420i = r11
            r10.recycle()
            com.google.android.material.chip.ChipGroup$a r10 = new com.google.android.material.chip.ChipGroup$a
            r10.<init>()
            r9.p(r10)
            super.setOnHierarchyChangeListener(r6)
            r9 = 1
            androidx.core.view.ViewCompat.setImportantForAccessibility(r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
