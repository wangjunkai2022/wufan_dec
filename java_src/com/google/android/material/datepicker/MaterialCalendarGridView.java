package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import java.util.Calendar;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: a  reason: collision with root package name */
    private final Calendar f14698a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f14699b;

    /* loaded from: classes2.dex */
    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    private void a(int i2, Rect rect) {
        if (i2 == 33) {
            setSelection(getAdapter2().i());
        } else if (i2 == 130) {
            setSelection(getAdapter2().b());
        } else {
            super.onFocusChanged(true, i2, rect);
        }
    }

    private View c(int i2) {
        return getChildAt(i2 - getFirstVisiblePosition());
    }

    private static int d(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean e(@Nullable Long l4, @Nullable Long l5, @Nullable Long l6, @Nullable Long l7) {
        return l4 == null || l5 == null || l6 == null || l7 == null || l6.longValue() > l5.longValue() || l7.longValue() < l4.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* renamed from: b */
    public i getAdapter2() {
        return (i) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(@NonNull Canvas canvas) {
        int a4;
        int d4;
        int a5;
        int d5;
        int i2;
        int i4;
        int left;
        int left2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        i adapter2 = getAdapter2();
        DateSelector<?> dateSelector = adapter2.f14813b;
        b bVar = adapter2.f14815d;
        int max = Math.max(adapter2.b(), getFirstVisiblePosition());
        int min = Math.min(adapter2.i(), getLastVisiblePosition());
        Long item = adapter2.getItem(max);
        Long item2 = adapter2.getItem(min);
        Iterator<Pair<Long, Long>> it2 = dateSelector.Y().iterator();
        while (it2.hasNext()) {
            Pair<Long, Long> next = it2.next();
            Long l4 = next.first;
            if (l4 == null) {
                materialCalendarGridView = this;
            } else if (next.second != null) {
                long longValue = l4.longValue();
                long longValue2 = next.second.longValue();
                if (!e(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                    boolean k4 = w.k(this);
                    if (longValue < item.longValue()) {
                        if (adapter2.f(max)) {
                            left2 = 0;
                        } else if (!k4) {
                            left2 = materialCalendarGridView.c(max - 1).getRight();
                        } else {
                            left2 = materialCalendarGridView.c(max - 1).getLeft();
                        }
                        d4 = left2;
                        a4 = max;
                    } else {
                        materialCalendarGridView.f14698a.setTimeInMillis(longValue);
                        a4 = adapter2.a(materialCalendarGridView.f14698a.get(5));
                        d4 = d(materialCalendarGridView.c(a4));
                    }
                    if (longValue2 > item2.longValue()) {
                        if (adapter2.g(min)) {
                            left = getWidth();
                        } else if (!k4) {
                            left = materialCalendarGridView.c(min).getRight();
                        } else {
                            left = materialCalendarGridView.c(min).getLeft();
                        }
                        d5 = left;
                        a5 = min;
                    } else {
                        materialCalendarGridView.f14698a.setTimeInMillis(longValue2);
                        a5 = adapter2.a(materialCalendarGridView.f14698a.get(5));
                        d5 = d(materialCalendarGridView.c(a5));
                    }
                    int itemId = (int) adapter2.getItemId(a4);
                    int i5 = max;
                    int i6 = min;
                    int itemId2 = (int) adapter2.getItemId(a5);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        i iVar = adapter2;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View c4 = materialCalendarGridView.c(numColumns);
                        int top = c4.getTop() + bVar.f14776a.e();
                        Iterator<Pair<Long, Long>> it3 = it2;
                        int bottom = c4.getBottom() - bVar.f14776a.b();
                        if (!k4) {
                            i2 = numColumns > a4 ? 0 : d4;
                            i4 = a5 > numColumns2 ? getWidth() : d5;
                        } else {
                            int i7 = a5 > numColumns2 ? 0 : d5;
                            int width = numColumns > a4 ? getWidth() : d4;
                            i2 = i7;
                            i4 = width;
                        }
                        canvas.drawRect(i2, top, i4, bottom, bVar.f14783h);
                        itemId++;
                        materialCalendarGridView = this;
                        itemId2 = itemId2;
                        adapter2 = iVar;
                        it2 = it3;
                    }
                    materialCalendarGridView = this;
                    max = i5;
                    min = i6;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z3, int i2, Rect rect) {
        if (z3) {
            a(i2, rect);
        } else {
            super.onFocusChanged(false, i2, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (super.onKeyDown(i2, keyEvent)) {
            if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().b()) {
                return true;
            }
            if (19 == i2) {
                setSelection(getAdapter2().b());
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i2, int i4) {
        if (this.f14699b) {
            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i2, i4);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i2) {
        if (i2 < getAdapter2().b()) {
            super.setSelection(getAdapter2().b());
        } else {
            super.setSelection(i2);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof i) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), i.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f14698a = o.v();
        if (MaterialDatePicker.l0(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.f14699b = MaterialDatePicker.m0(getContext());
        ViewCompat.setAccessibilityDelegate(this, new a());
    }
}
