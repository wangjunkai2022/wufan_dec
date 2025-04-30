package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.color.m;
import com.google.android.material.internal.n;
import com.google.android.material.timepicker.TimePickerView;
import java.lang.reflect.Field;
import java.util.Locale;
/* compiled from: TimePickerTextInputPresenter.java */
/* loaded from: classes2.dex */
class g implements TimePickerView.g, com.google.android.material.timepicker.e {

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f16278a;

    /* renamed from: b  reason: collision with root package name */
    private final TimeModel f16279b;

    /* renamed from: c  reason: collision with root package name */
    private final TextWatcher f16280c = new a();

    /* renamed from: d  reason: collision with root package name */
    private final TextWatcher f16281d = new b();

    /* renamed from: e  reason: collision with root package name */
    private final ChipTextInputComboView f16282e;

    /* renamed from: f  reason: collision with root package name */
    private final ChipTextInputComboView f16283f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.material.timepicker.f f16284g;

    /* renamed from: h  reason: collision with root package name */
    private final EditText f16285h;

    /* renamed from: i  reason: collision with root package name */
    private final EditText f16286i;

    /* renamed from: j  reason: collision with root package name */
    private MaterialButtonToggleGroup f16287j;

    /* compiled from: TimePickerTextInputPresenter.java */
    /* loaded from: classes2.dex */
    class a extends n {
        a() {
        }

        @Override // com.google.android.material.internal.n, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    g.this.f16279b.i(0);
                    return;
                }
                g.this.f16279b.i(Integer.parseInt(editable.toString()));
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* compiled from: TimePickerTextInputPresenter.java */
    /* loaded from: classes2.dex */
    class b extends n {
        b() {
        }

        @Override // com.google.android.material.internal.n, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    g.this.f16279b.g(0);
                    return;
                }
                g.this.f16279b.g(Integer.parseInt(editable.toString()));
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* compiled from: TimePickerTextInputPresenter.java */
    /* loaded from: classes2.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.d(((Integer) view.getTag(R.id.selection_type)).intValue());
        }
    }

    /* compiled from: TimePickerTextInputPresenter.java */
    /* loaded from: classes2.dex */
    class d extends com.google.android.material.timepicker.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TimeModel f16291b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, int i2, TimeModel timeModel) {
            super(context, i2);
            this.f16291b = timeModel;
        }

        @Override // com.google.android.material.timepicker.a, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_hour_suffix, String.valueOf(this.f16291b.c())));
        }
    }

    /* compiled from: TimePickerTextInputPresenter.java */
    /* loaded from: classes2.dex */
    class e extends com.google.android.material.timepicker.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TimeModel f16293b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Context context, int i2, TimeModel timeModel) {
            super(context, i2);
            this.f16293b = timeModel;
        }

        @Override // com.google.android.material.timepicker.a, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(this.f16293b.f16209e)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TimePickerTextInputPresenter.java */
    /* loaded from: classes2.dex */
    public class f implements MaterialButtonToggleGroup.d {
        f() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i2, boolean z3) {
            g.this.f16279b.j(i2 == R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    public g(LinearLayout linearLayout, TimeModel timeModel) {
        this.f16278a = linearLayout;
        this.f16279b = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.f16282e = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.f16283f = chipTextInputComboView2;
        int i2 = R.id.material_label;
        ((TextView) chipTextInputComboView.findViewById(i2)).setText(resources.getString(R.string.material_timepicker_minute));
        ((TextView) chipTextInputComboView2.findViewById(i2)).setText(resources.getString(R.string.material_timepicker_hour));
        int i4 = R.id.selection_type;
        chipTextInputComboView.setTag(i4, 12);
        chipTextInputComboView2.setTag(i4, 10);
        if (timeModel.f16207c == 0) {
            k();
        }
        c cVar = new c();
        chipTextInputComboView2.setOnClickListener(cVar);
        chipTextInputComboView.setOnClickListener(cVar);
        chipTextInputComboView2.c(timeModel.d());
        chipTextInputComboView.c(timeModel.e());
        EditText editText = chipTextInputComboView2.e().getEditText();
        this.f16285h = editText;
        EditText editText2 = chipTextInputComboView.e().getEditText();
        this.f16286i = editText2;
        if (Build.VERSION.SDK_INT < 21) {
            int d4 = m.d(linearLayout, R.attr.colorPrimary);
            i(editText, d4);
            i(editText2, d4);
        }
        this.f16284g = new com.google.android.material.timepicker.f(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.f(new d(linearLayout.getContext(), R.string.material_hour_selection, timeModel));
        chipTextInputComboView.f(new e(linearLayout.getContext(), R.string.material_minute_selection, timeModel));
        e();
    }

    private void c() {
        this.f16285h.addTextChangedListener(this.f16281d);
        this.f16286i.addTextChangedListener(this.f16280c);
    }

    private void g() {
        this.f16285h.removeTextChangedListener(this.f16281d);
        this.f16286i.removeTextChangedListener(this.f16280c);
    }

    private static void i(EditText editText, @ColorInt int i2) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i4 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable drawable = AppCompatResources.getDrawable(context, i4);
            drawable.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Throwable unused) {
        }
    }

    private void j(TimeModel timeModel) {
        g();
        Locale locale = this.f16278a.getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.f16203h, Integer.valueOf(timeModel.f16209e));
        String format2 = String.format(locale, TimeModel.f16203h, Integer.valueOf(timeModel.c()));
        this.f16282e.i(format);
        this.f16283f.i(format2);
        c();
        l();
    }

    private void k() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f16278a.findViewById(R.id.material_clock_period_toggle);
        this.f16287j = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new f());
        this.f16287j.setVisibility(0);
        l();
    }

    private void l() {
        int i2;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f16287j;
        if (materialButtonToggleGroup == null) {
            return;
        }
        if (this.f16279b.f16211g == 0) {
            i2 = R.id.material_clock_period_am_button;
        } else {
            i2 = R.id.material_clock_period_pm_button;
        }
        materialButtonToggleGroup.e(i2);
    }

    @Override // com.google.android.material.timepicker.e
    public void a() {
        View focusedChild = this.f16278a.getFocusedChild();
        if (focusedChild == null) {
            this.f16278a.setVisibility(8);
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(this.f16278a.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        this.f16278a.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.g
    public void d(int i2) {
        this.f16279b.f16210f = i2;
        this.f16282e.setChecked(i2 == 12);
        this.f16283f.setChecked(i2 == 10);
        l();
    }

    @Override // com.google.android.material.timepicker.e
    public void e() {
        c();
        j(this.f16279b);
        this.f16284g.a();
    }

    public void f() {
        this.f16282e.setChecked(false);
        this.f16283f.setChecked(false);
    }

    public void h() {
        this.f16282e.setChecked(this.f16279b.f16210f == 12);
        this.f16283f.setChecked(this.f16279b.f16210f == 10);
    }

    @Override // com.google.android.material.timepicker.e
    public void invalidate() {
        j(this.f16279b);
    }

    @Override // com.google.android.material.timepicker.e
    public void show() {
        this.f16278a.setVisibility(0);
    }
}
