package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
/* loaded from: classes3.dex */
public class MyRadioGroup extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f45821a;

    /* renamed from: b  reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f45822b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45823c;

    /* renamed from: d  reason: collision with root package name */
    private d f45824d;

    /* renamed from: e  reason: collision with root package name */
    private e f45825e;

    /* loaded from: classes3.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.view.ViewGroup.LayoutParams
        protected void setBaseAttributes(TypedArray typedArray, int i2, int i4) {
            if (typedArray.hasValue(i2)) {
                ((LinearLayout.LayoutParams) this).width = typedArray.getLayoutDimension(i2, "layout_width");
            } else {
                ((LinearLayout.LayoutParams) this).width = -2;
            }
            if (typedArray.hasValue(i4)) {
                ((LinearLayout.LayoutParams) this).height = typedArray.getLayoutDimension(i4, "layout_height");
            } else {
                ((LinearLayout.LayoutParams) this).height = -2;
            }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f45826a;

        a(View view) {
            this.f45826a = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ((RadioButton) this.f45826a).setChecked(true);
            MyRadioGroup.this.j((RadioButton) this.f45826a);
            if (MyRadioGroup.this.f45824d != null) {
                MyRadioGroup.this.f45824d.a(MyRadioGroup.this, this.f45826a.getId());
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RadioButton f45828a;

        b(RadioButton radioButton) {
            this.f45828a = radioButton;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            this.f45828a.setChecked(true);
            MyRadioGroup.this.j(this.f45828a);
            if (MyRadioGroup.this.f45824d != null) {
                MyRadioGroup.this.f45824d.a(MyRadioGroup.this, this.f45828a.getId());
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c implements CompoundButton.OnCheckedChangeListener {
        private c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
            if (MyRadioGroup.this.f45823c) {
                return;
            }
            MyRadioGroup.this.f45823c = true;
            if (MyRadioGroup.this.f45821a != -1) {
                MyRadioGroup myRadioGroup = MyRadioGroup.this;
                myRadioGroup.n(myRadioGroup.f45821a, false);
            }
            MyRadioGroup.this.f45823c = false;
            MyRadioGroup.this.setCheckedId(compoundButton.getId());
        }

        /* synthetic */ c(MyRadioGroup myRadioGroup, a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(MyRadioGroup myRadioGroup, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f45831a;

        private e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == MyRadioGroup.this && (view2 instanceof RadioButton)) {
                if (view2.getId() == -1) {
                    view2.setId(view2.hashCode());
                }
                ((RadioButton) view2).setOnCheckedChangeListener(MyRadioGroup.this.f45822b);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f45831a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == MyRadioGroup.this && (view2 instanceof RadioButton)) {
                ((RadioButton) view2).setOnCheckedChangeListener(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f45831a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }

        /* synthetic */ e(MyRadioGroup myRadioGroup, a aVar) {
            this();
        }
    }

    public MyRadioGroup(Context context) {
        super(context);
        this.f45821a = -1;
        this.f45823c = false;
        setOrientation(1);
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(RadioButton radioButton) {
        RadioButton radioButton2;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof RadioButton) {
                if (childAt != radioButton) {
                    ((RadioButton) childAt).setChecked(false);
                }
            } else if (childAt instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) childAt;
                int childCount2 = linearLayout.getChildCount();
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = linearLayout.getChildAt(i4);
                    if ((childAt2 instanceof RadioButton) && (radioButton2 = (RadioButton) childAt2) != radioButton) {
                        radioButton2.setChecked(false);
                    }
                }
            }
        }
    }

    private void m() {
        this.f45822b = new c(this, null);
        e eVar = new e(this, null);
        this.f45825e = eVar;
        super.setOnHierarchyChangeListener(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i2, boolean z3) {
        View findViewById = findViewById(i2);
        if (findViewById == null || !(findViewById instanceof RadioButton)) {
            return;
        }
        ((RadioButton) findViewById).setChecked(z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i2) {
        this.f45821a = i2;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof RadioButton) {
            view.setOnTouchListener(new a(view));
        } else if (view instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) view;
            int childCount = linearLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = linearLayout.getChildAt(i4);
                if (childAt instanceof RadioButton) {
                    RadioButton radioButton = (RadioButton) childAt;
                    radioButton.setOnTouchListener(new b(radioButton));
                }
            }
        }
        super.addView(view, i2, layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public int getCheckedRadioButtonId() {
        return this.f45821a;
    }

    public void i(int i2) {
        if (i2 == -1 || i2 != this.f45821a) {
            int i4 = this.f45821a;
            if (i4 != -1) {
                n(i4, false);
            }
            if (i2 != -1) {
                n(i2, true);
            }
            setCheckedId(i2);
        }
    }

    public void k() {
        i(-1);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: l */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f45821a;
        if (i2 != -1) {
            this.f45823c = true;
            n(i2, true);
            this.f45823c = false;
            setCheckedId(this.f45821a);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(MyRadioGroup.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(MyRadioGroup.class.getName());
    }

    public void setOnCheckedChangeListener(d dVar) {
        this.f45824d = dVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f45825e.f45831a = onHierarchyChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public MyRadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45821a = -1;
        this.f45823c = false;
        this.f45821a = -1;
        setOrientation(1);
        m();
    }
}
