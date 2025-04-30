package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.annotation.ArrayRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.R;
import com.google.android.material.internal.o;
/* loaded from: classes2.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: i  reason: collision with root package name */
    private static final int f15971i = 15;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ListPopupWindow f15972e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final AccessibilityManager f15973f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Rect f15974g;
    @LayoutRes

    /* renamed from: h  reason: collision with root package name */
    private final int f15975h;

    /* loaded from: classes2.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            MaterialAutoCompleteTextView.this.f(i2 < 0 ? materialAutoCompleteTextView.f15972e.getSelectedItem() : materialAutoCompleteTextView.getAdapter().getItem(i2));
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i2 < 0) {
                    view = MaterialAutoCompleteTextView.this.f15972e.getSelectedView();
                    i2 = MaterialAutoCompleteTextView.this.f15972e.getSelectedItemPosition();
                    j4 = MaterialAutoCompleteTextView.this.f15972e.getSelectedItemId();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.f15972e.getListView(), view, i2, j4);
            }
            MaterialAutoCompleteTextView.this.f15972e.dismiss();
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private TextInputLayout d() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private int e() {
        ListAdapter adapter = getAdapter();
        TextInputLayout d4 = d();
        int i2 = 0;
        if (adapter == null || d4 == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int min = Math.min(adapter.getCount(), Math.max(0, this.f15972e.getSelectedItemPosition()) + 15);
        View view = null;
        int i4 = 0;
        for (int max = Math.max(0, min - 15); max < min; max++) {
            int itemViewType = adapter.getItemViewType(max);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = adapter.getView(max, view, d4);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i4 = Math.max(i4, view.getMeasuredWidth());
        }
        Drawable background = this.f15972e.getBackground();
        if (background != null) {
            background.getPadding(this.f15974g);
            Rect rect = this.f15974g;
            i4 += rect.left + rect.right;
        }
        return i4 + d4.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends ListAdapter & Filterable> void f(Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            setText(convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = getAdapter();
        setAdapter(null);
        setText(convertSelectionToString(obj));
        setAdapter(adapter);
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout d4 = d();
        if (d4 != null && d4.Z()) {
            return d4.getHint();
        }
        return super.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout d4 = d();
        if (d4 != null && d4.Z() && super.getHint() == null && com.google.android.material.internal.f.c()) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), e()), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t3) {
        super.setAdapter(t3);
        this.f15972e.setAdapter(getAdapter());
    }

    public void setSimpleItems(@ArrayRes int i2) {
        setSimpleItems(getResources().getStringArray(i2));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f15973f;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            this.f15972e.show();
        } else {
            super.showDropDown();
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new ArrayAdapter(getContext(), this.f15975h, strArr));
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.overlay.a.c(context, attributeSet, i2, 0), attributeSet, i2);
        this.f15974g = new Rect();
        Context context2 = getContext();
        TypedArray j4 = o.j(context2, attributeSet, R.styleable.MaterialAutoCompleteTextView, i2, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        int i4 = R.styleable.MaterialAutoCompleteTextView_android_inputType;
        if (j4.hasValue(i4) && j4.getInt(i4, 0) == 0) {
            setKeyListener(null);
        }
        this.f15975h = j4.getResourceId(R.styleable.MaterialAutoCompleteTextView_simpleItemLayout, R.layout.mtrl_auto_complete_simple_item);
        this.f15973f = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f15972e = listPopupWindow;
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(this);
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setAdapter(getAdapter());
        listPopupWindow.setOnItemClickListener(new a());
        int i5 = R.styleable.MaterialAutoCompleteTextView_simpleItems;
        if (j4.hasValue(i5)) {
            setSimpleItems(j4.getResourceId(i5, 0));
        }
        j4.recycle();
    }
}
