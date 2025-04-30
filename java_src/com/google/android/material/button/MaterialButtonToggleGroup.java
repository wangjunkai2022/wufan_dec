package com.google.android.material.button;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.w;
import com.google.android.material.shape.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: k  reason: collision with root package name */
    private static final String f14302k = MaterialButtonToggleGroup.class.getSimpleName();

    /* renamed from: l  reason: collision with root package name */
    private static final int f14303l = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f14304a;

    /* renamed from: b  reason: collision with root package name */
    private final e f14305b;

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashSet<d> f14306c;

    /* renamed from: d  reason: collision with root package name */
    private final Comparator<MaterialButton> f14307d;

    /* renamed from: e  reason: collision with root package name */
    private Integer[] f14308e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14309f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14310g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f14311h;
    @IdRes

    /* renamed from: i  reason: collision with root package name */
    private final int f14312i;

    /* renamed from: j  reason: collision with root package name */
    private Set<Integer> f14313j;

    /* loaded from: classes2.dex */
    class a implements Comparator<MaterialButton> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    /* loaded from: classes2.dex */
    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.k(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: e  reason: collision with root package name */
        private static final com.google.android.material.shape.c f14316e = new com.google.android.material.shape.a(0.0f);

        /* renamed from: a  reason: collision with root package name */
        com.google.android.material.shape.c f14317a;

        /* renamed from: b  reason: collision with root package name */
        com.google.android.material.shape.c f14318b;

        /* renamed from: c  reason: collision with root package name */
        com.google.android.material.shape.c f14319c;

        /* renamed from: d  reason: collision with root package name */
        com.google.android.material.shape.c f14320d;

        c(com.google.android.material.shape.c cVar, com.google.android.material.shape.c cVar2, com.google.android.material.shape.c cVar3, com.google.android.material.shape.c cVar4) {
            this.f14317a = cVar;
            this.f14318b = cVar3;
            this.f14319c = cVar4;
            this.f14320d = cVar2;
        }

        public static c a(c cVar) {
            com.google.android.material.shape.c cVar2 = f14316e;
            return new c(cVar2, cVar.f14320d, cVar2, cVar.f14319c);
        }

        public static c b(c cVar, View view) {
            return w.k(view) ? c(cVar) : d(cVar);
        }

        public static c c(c cVar) {
            com.google.android.material.shape.c cVar2 = cVar.f14317a;
            com.google.android.material.shape.c cVar3 = cVar.f14320d;
            com.google.android.material.shape.c cVar4 = f14316e;
            return new c(cVar2, cVar3, cVar4, cVar4);
        }

        public static c d(c cVar) {
            com.google.android.material.shape.c cVar2 = f14316e;
            return new c(cVar2, cVar2, cVar.f14318b, cVar.f14319c);
        }

        public static c e(c cVar, View view) {
            return w.k(view) ? d(cVar) : c(cVar);
        }

        public static c f(c cVar) {
            com.google.android.material.shape.c cVar2 = cVar.f14317a;
            com.google.android.material.shape.c cVar3 = f14316e;
            return new c(cVar2, cVar3, cVar.f14318b, cVar3);
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i2, boolean z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e implements MaterialButton.b {
        private e() {
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public void a(@NonNull MaterialButton materialButton, boolean z3) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ e(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    private void c() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i2 = firstVisibleChildIndex + 1; i2 < getChildCount(); i2++) {
            MaterialButton j4 = j(i2);
            int min = Math.min(j4.getStrokeWidth(), j(i2 - 1).getStrokeWidth());
            LinearLayout.LayoutParams d4 = d(j4);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(d4, 0);
                MarginLayoutParamsCompat.setMarginStart(d4, -min);
                d4.topMargin = 0;
            } else {
                d4.bottomMargin = 0;
                d4.topMargin = -min;
                MarginLayoutParamsCompat.setMarginStart(d4, 0);
            }
            j4.setLayoutParams(d4);
        }
        r(firstVisibleChildIndex);
    }

    @NonNull
    private LinearLayout.LayoutParams d(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return (LinearLayout.LayoutParams) layoutParams;
        }
        return new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void f(@IdRes int i2, boolean z3) {
        if (i2 == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("Button ID is not valid: ");
            sb.append(i2);
            return;
        }
        HashSet hashSet = new HashSet(this.f14313j);
        if (z3 && !hashSet.contains(Integer.valueOf(i2))) {
            if (this.f14310g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i2));
        } else if (z3 || !hashSet.contains(Integer.valueOf(i2))) {
            return;
        } else {
            if (!this.f14311h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i2));
            }
        }
        v(hashSet);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (m(i2)) {
                return i2;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i2 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if ((getChildAt(i4) instanceof MaterialButton) && m(i4)) {
                i2++;
            }
        }
        return i2;
    }

    private void i(@IdRes int i2, boolean z3) {
        Iterator<d> it2 = this.f14306c.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, i2, z3);
        }
    }

    private MaterialButton j(int i2) {
        return (MaterialButton) getChildAt(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int k(@Nullable View view) {
        if (view instanceof MaterialButton) {
            int i2 = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                if (getChildAt(i4) == view) {
                    return i2;
                }
                if ((getChildAt(i4) instanceof MaterialButton) && m(i4)) {
                    i2++;
                }
            }
            return -1;
        }
        return -1;
    }

    @Nullable
    private c l(int i2, int i4, int i5) {
        c cVar = this.f14304a.get(i2);
        if (i4 == i5) {
            return cVar;
        }
        boolean z3 = getOrientation() == 0;
        if (i2 == i4) {
            return z3 ? c.e(cVar, this) : c.f(cVar);
        } else if (i2 == i5) {
            return z3 ? c.b(cVar, this) : c.a(cVar);
        } else {
            return null;
        }
    }

    private boolean m(int i2) {
        return getChildAt(i2).getVisibility() != 8;
    }

    private void r(int i2) {
        if (getChildCount() == 0 || i2 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) j(i2).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            return;
        }
        MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
        MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
    }

    private void s(@IdRes int i2, boolean z3) {
        View findViewById = findViewById(i2);
        if (findViewById instanceof MaterialButton) {
            this.f14309f = true;
            ((MaterialButton) findViewById).setChecked(z3);
            this.f14309f = false;
        }
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f14305b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    private static void u(m.b bVar, @Nullable c cVar) {
        if (cVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.L(cVar.f14317a).y(cVar.f14320d).Q(cVar.f14318b).D(cVar.f14319c);
        }
    }

    private void v(Set<Integer> set) {
        Set<Integer> set2 = this.f14313j;
        this.f14313j = new HashSet(set);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int id = j(i2).getId();
            s(id, set.contains(Integer.valueOf(id)));
            if (set2.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                i(id, set.contains(Integer.valueOf(id)));
            }
        }
        invalidate();
    }

    private void w() {
        TreeMap treeMap = new TreeMap(this.f14307d);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            treeMap.put(j(i2), Integer.valueOf(i2));
        }
        this.f14308e = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i2, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            f(materialButton.getId(), materialButton.isChecked());
            m shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.f14304a.add(new c(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
            ViewCompat.setAccessibilityDelegate(materialButton, new b());
        }
    }

    public void b(@NonNull d dVar) {
        this.f14306c.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        w();
        super.dispatchDraw(canvas);
    }

    public void e(@IdRes int i2) {
        f(i2, true);
    }

    public void g() {
        v(new HashSet());
    }

    @IdRes
    public int getCheckedButtonId() {
        if (!this.f14310g || this.f14313j.isEmpty()) {
            return -1;
        }
        return this.f14313j.iterator().next().intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int id = j(i2).getId();
            if (this.f14313j.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i4) {
        Integer[] numArr = this.f14308e;
        return (numArr == null || i4 >= numArr.length) ? i4 : numArr[i4].intValue();
    }

    public void h() {
        this.f14306c.clear();
    }

    public boolean n() {
        return this.f14311h;
    }

    public boolean o() {
        return this.f14310g;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f14312i;
        if (i2 != -1) {
            v(Collections.singleton(Integer.valueOf(i2)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, o() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        x();
        c();
        super.onMeasure(i2, i4);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f14304a.remove(indexOfChild);
        }
        x();
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(@NonNull MaterialButton materialButton, boolean z3) {
        if (this.f14309f) {
            return;
        }
        f(materialButton.getId(), z3);
    }

    public void q(@NonNull d dVar) {
        this.f14306c.remove(dVar);
    }

    public void setSelectionRequired(boolean z3) {
        this.f14311h = z3;
    }

    public void setSingleSelection(boolean z3) {
        if (this.f14310g != z3) {
            this.f14310g = z3;
            g();
        }
    }

    public void t(@IdRes int i2) {
        f(i2, false);
    }

    @VisibleForTesting
    void x() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i2 = 0; i2 < childCount; i2++) {
            MaterialButton j4 = j(i2);
            if (j4.getVisibility() != 8) {
                m.b v3 = j4.getShapeAppearanceModel().v();
                u(v3, l(i2, firstVisibleChildIndex, lastVisibleChildIndex));
                j4.setShapeAppearanceModel(v3.m());
            }
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r4 = com.google.android.material.button.MaterialButtonToggleGroup.f14303l
            android.content.Context r7 = com.google.android.material.theme.overlay.a.c(r7, r8, r9, r4)
            r6.<init>(r7, r8, r9)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            r6.f14304a = r7
            com.google.android.material.button.MaterialButtonToggleGroup$e r7 = new com.google.android.material.button.MaterialButtonToggleGroup$e
            r0 = 0
            r7.<init>(r6, r0)
            r6.f14305b = r7
            java.util.LinkedHashSet r7 = new java.util.LinkedHashSet
            r7.<init>()
            r6.f14306c = r7
            com.google.android.material.button.MaterialButtonToggleGroup$a r7 = new com.google.android.material.button.MaterialButtonToggleGroup$a
            r7.<init>()
            r6.f14307d = r7
            r7 = 0
            r6.f14309f = r7
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            r6.f14313j = r0
            android.content.Context r0 = r6.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialButtonToggleGroup
            int[] r5 = new int[r7]
            r1 = r8
            r3 = r9
            android.content.res.TypedArray r8 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_singleSelection
            boolean r9 = r8.getBoolean(r9, r7)
            r6.setSingleSelection(r9)
            int r9 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_checkedButton
            r0 = -1
            int r9 = r8.getResourceId(r9, r0)
            r6.f14312i = r9
            int r9 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_selectionRequired
            boolean r7 = r8.getBoolean(r9, r7)
            r6.f14311h = r7
            r7 = 1
            r6.setChildrenDrawingOrderEnabled(r7)
            r8.recycle()
            androidx.core.view.ViewCompat.setImportantForAccessibility(r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setSingleSelection(@BoolRes int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }
}
