package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.TimePickerView;
import java.util.LinkedHashSet;
import java.util.Set;
/* compiled from: MaterialTimePicker.java */
/* loaded from: classes2.dex */
public final class b extends DialogFragment implements TimePickerView.e {
    static final String A = "TIME_PICKER_TITLE_RES";
    static final String B = "TIME_PICKER_TITLE_TEXT";
    static final String C = "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES";
    static final String D = "TIME_PICKER_POSITIVE_BUTTON_TEXT";
    static final String E = "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES";
    static final String F = "TIME_PICKER_NEGATIVE_BUTTON_TEXT";
    static final String G = "TIME_PICKER_OVERRIDE_THEME_RES_ID";

    /* renamed from: w  reason: collision with root package name */
    public static final int f16223w = 0;

    /* renamed from: x  reason: collision with root package name */
    public static final int f16224x = 1;

    /* renamed from: y  reason: collision with root package name */
    static final String f16225y = "TIME_PICKER_TIME_MODEL";

    /* renamed from: z  reason: collision with root package name */
    static final String f16226z = "TIME_PICKER_INPUT_MODE";

    /* renamed from: e  reason: collision with root package name */
    private TimePickerView f16231e;

    /* renamed from: f  reason: collision with root package name */
    private ViewStub f16232f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private com.google.android.material.timepicker.d f16233g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private g f16234h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private e f16235i;
    @DrawableRes

    /* renamed from: j  reason: collision with root package name */
    private int f16236j;
    @DrawableRes

    /* renamed from: k  reason: collision with root package name */
    private int f16237k;

    /* renamed from: m  reason: collision with root package name */
    private CharSequence f16239m;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f16241o;

    /* renamed from: q  reason: collision with root package name */
    private CharSequence f16243q;

    /* renamed from: r  reason: collision with root package name */
    private MaterialButton f16244r;

    /* renamed from: s  reason: collision with root package name */
    private Button f16245s;

    /* renamed from: u  reason: collision with root package name */
    private TimeModel f16247u;

    /* renamed from: a  reason: collision with root package name */
    private final Set<View.OnClickListener> f16227a = new LinkedHashSet();

    /* renamed from: b  reason: collision with root package name */
    private final Set<View.OnClickListener> f16228b = new LinkedHashSet();

    /* renamed from: c  reason: collision with root package name */
    private final Set<DialogInterface.OnCancelListener> f16229c = new LinkedHashSet();

    /* renamed from: d  reason: collision with root package name */
    private final Set<DialogInterface.OnDismissListener> f16230d = new LinkedHashSet();
    @StringRes

    /* renamed from: l  reason: collision with root package name */
    private int f16238l = 0;
    @StringRes

    /* renamed from: n  reason: collision with root package name */
    private int f16240n = 0;
    @StringRes

    /* renamed from: p  reason: collision with root package name */
    private int f16242p = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f16246t = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f16248v = 0;

    /* compiled from: MaterialTimePicker.java */
    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (View.OnClickListener onClickListener : b.this.f16227a) {
                onClickListener.onClick(view);
            }
            b.this.dismiss();
        }
    }

    /* compiled from: MaterialTimePicker.java */
    /* renamed from: com.google.android.material.timepicker.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC0120b implements View.OnClickListener {
        View$OnClickListenerC0120b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (View.OnClickListener onClickListener : b.this.f16228b) {
                onClickListener.onClick(view);
            }
            b.this.dismiss();
        }
    }

    /* compiled from: MaterialTimePicker.java */
    /* loaded from: classes2.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b bVar = b.this;
            bVar.f16246t = bVar.f16246t == 0 ? 1 : 0;
            b bVar2 = b.this;
            bVar2.u0(bVar2.f16244r);
        }
    }

    /* compiled from: MaterialTimePicker.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: b  reason: collision with root package name */
        private int f16253b;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f16255d;

        /* renamed from: f  reason: collision with root package name */
        private CharSequence f16257f;

        /* renamed from: h  reason: collision with root package name */
        private CharSequence f16259h;

        /* renamed from: a  reason: collision with root package name */
        private TimeModel f16252a = new TimeModel();
        @StringRes

        /* renamed from: c  reason: collision with root package name */
        private int f16254c = 0;
        @StringRes

        /* renamed from: e  reason: collision with root package name */
        private int f16256e = 0;
        @StringRes

        /* renamed from: g  reason: collision with root package name */
        private int f16258g = 0;

        /* renamed from: i  reason: collision with root package name */
        private int f16260i = 0;

        @NonNull
        public b j() {
            return b.j0(this);
        }

        @NonNull
        public d k(@IntRange(from = 0, to = 23) int i2) {
            this.f16252a.h(i2);
            return this;
        }

        @NonNull
        public d l(int i2) {
            this.f16253b = i2;
            return this;
        }

        @NonNull
        public d m(@IntRange(from = 0, to = 59) int i2) {
            this.f16252a.i(i2);
            return this;
        }

        @NonNull
        public d n(@StringRes int i2) {
            this.f16258g = i2;
            return this;
        }

        @NonNull
        public d o(@Nullable CharSequence charSequence) {
            this.f16259h = charSequence;
            return this;
        }

        @NonNull
        public d p(@StringRes int i2) {
            this.f16256e = i2;
            return this;
        }

        @NonNull
        public d q(@Nullable CharSequence charSequence) {
            this.f16257f = charSequence;
            return this;
        }

        @NonNull
        public d r(@StyleRes int i2) {
            this.f16260i = i2;
            return this;
        }

        @NonNull
        public d s(int i2) {
            TimeModel timeModel = this.f16252a;
            int i4 = timeModel.f16208d;
            int i5 = timeModel.f16209e;
            TimeModel timeModel2 = new TimeModel(i2);
            this.f16252a = timeModel2;
            timeModel2.i(i5);
            this.f16252a.h(i4);
            return this;
        }

        @NonNull
        public d t(@StringRes int i2) {
            this.f16254c = i2;
            return this;
        }

        @NonNull
        public d u(@Nullable CharSequence charSequence) {
            this.f16255d = charSequence;
            return this;
        }
    }

    private Pair<Integer, Integer> c0(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return new Pair<>(Integer.valueOf(this.f16237k), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
            }
            throw new IllegalArgumentException("no icon for mode: " + i2);
        }
        return new Pair<>(Integer.valueOf(this.f16236j), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
    }

    private int g0() {
        int i2 = this.f16248v;
        if (i2 != 0) {
            return i2;
        }
        TypedValue a4 = com.google.android.material.resources.b.a(requireContext(), R.attr.materialTimePickerTheme);
        if (a4 == null) {
            return 0;
        }
        return a4.data;
    }

    private e i0(int i2, @NonNull TimePickerView timePickerView, @NonNull ViewStub viewStub) {
        if (i2 == 0) {
            com.google.android.material.timepicker.d dVar = this.f16233g;
            if (dVar == null) {
                dVar = new com.google.android.material.timepicker.d(timePickerView, this.f16247u);
            }
            this.f16233g = dVar;
            return dVar;
        }
        if (this.f16234h == null) {
            this.f16234h = new g((LinearLayout) viewStub.inflate(), this.f16247u);
        }
        this.f16234h.f();
        return this.f16234h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static b j0(@NonNull d dVar) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putParcelable(f16225y, dVar.f16252a);
        bundle.putInt(f16226z, dVar.f16253b);
        bundle.putInt(A, dVar.f16254c);
        if (dVar.f16255d != null) {
            bundle.putCharSequence(B, dVar.f16255d);
        }
        bundle.putInt(C, dVar.f16256e);
        if (dVar.f16257f != null) {
            bundle.putCharSequence(D, dVar.f16257f);
        }
        bundle.putInt(E, dVar.f16258g);
        if (dVar.f16259h != null) {
            bundle.putCharSequence(F, dVar.f16259h);
        }
        bundle.putInt(G, dVar.f16260i);
        bVar.setArguments(bundle);
        return bVar;
    }

    private void o0(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(f16225y);
        this.f16247u = timeModel;
        if (timeModel == null) {
            this.f16247u = new TimeModel();
        }
        this.f16246t = bundle.getInt(f16226z, 0);
        this.f16238l = bundle.getInt(A, 0);
        this.f16239m = bundle.getCharSequence(B);
        this.f16240n = bundle.getInt(C, 0);
        this.f16241o = bundle.getCharSequence(D);
        this.f16242p = bundle.getInt(E, 0);
        this.f16243q = bundle.getCharSequence(F);
        this.f16248v = bundle.getInt(G, 0);
    }

    private void t0() {
        Button button = this.f16245s;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(MaterialButton materialButton) {
        if (materialButton == null || this.f16231e == null || this.f16232f == null) {
            return;
        }
        e eVar = this.f16235i;
        if (eVar != null) {
            eVar.a();
        }
        e i02 = i0(this.f16246t, this.f16231e, this.f16232f);
        this.f16235i = i02;
        i02.show();
        this.f16235i.invalidate();
        Pair<Integer, Integer> c02 = c0(this.f16246t);
        materialButton.setIconResource(((Integer) c02.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) c02.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    public boolean T(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f16229c.add(onCancelListener);
    }

    public boolean U(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f16230d.add(onDismissListener);
    }

    public boolean V(@NonNull View.OnClickListener onClickListener) {
        return this.f16228b.add(onClickListener);
    }

    public boolean W(@NonNull View.OnClickListener onClickListener) {
        return this.f16227a.add(onClickListener);
    }

    public void X() {
        this.f16229c.clear();
    }

    public void Z() {
        this.f16230d.clear();
    }

    public void a0() {
        this.f16228b.clear();
    }

    public void b0() {
        this.f16227a.clear();
    }

    @IntRange(from = 0, to = 23)
    public int d0() {
        return this.f16247u.f16208d % 24;
    }

    public int e0() {
        return this.f16246t;
    }

    @IntRange(from = 0, to = 59)
    public int f0() {
        return this.f16247u.f16209e;
    }

    @Nullable
    com.google.android.material.timepicker.d h0() {
        return this.f16233g;
    }

    public boolean k0(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f16229c.remove(onCancelListener);
    }

    public boolean l0(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f16230d.remove(onDismissListener);
    }

    public boolean m0(@NonNull View.OnClickListener onClickListener) {
        return this.f16228b.remove(onClickListener);
    }

    public boolean n0(@NonNull View.OnClickListener onClickListener) {
        return this.f16227a.remove(onClickListener);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        for (DialogInterface.OnCancelListener onCancelListener : this.f16229c) {
            onCancelListener.onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        o0(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), g0());
        Context context = dialog.getContext();
        int g4 = com.google.android.material.resources.b.g(context, R.attr.colorSurface, b.class.getCanonicalName());
        int i2 = R.attr.materialTimePickerStyle;
        int i4 = R.style.Widget_MaterialComponents_TimePicker;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, i2, i4);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, i2, i4);
        this.f16237k = obtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.f16236j = obtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        obtainStyledAttributes.recycle();
        materialShapeDrawable.Z(context);
        materialShapeDrawable.o0(ColorStateList.valueOf(g4));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.n0(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.f16231e = timePickerView;
        timePickerView.D(this);
        this.f16232f = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.f16244r = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i2 = this.f16238l;
        if (i2 != 0) {
            textView.setText(i2);
        } else if (!TextUtils.isEmpty(this.f16239m)) {
            textView.setText(this.f16239m);
        }
        u0(this.f16244r);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new a());
        int i4 = this.f16240n;
        if (i4 != 0) {
            button.setText(i4);
        } else if (!TextUtils.isEmpty(this.f16241o)) {
            button.setText(this.f16241o);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.f16245s = button2;
        button2.setOnClickListener(new View$OnClickListenerC0120b());
        int i5 = this.f16242p;
        if (i5 != 0) {
            this.f16245s.setText(i5);
        } else if (!TextUtils.isEmpty(this.f16243q)) {
            this.f16245s.setText(this.f16243q);
        }
        t0();
        this.f16244r.setOnClickListener(new c());
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f16235i = null;
        this.f16233g = null;
        this.f16234h = null;
        TimePickerView timePickerView = this.f16231e;
        if (timePickerView != null) {
            timePickerView.D(null);
            this.f16231e = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        for (DialogInterface.OnDismissListener onDismissListener : this.f16230d) {
            onDismissListener.onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(f16225y, this.f16247u);
        bundle.putInt(f16226z, this.f16246t);
        bundle.putInt(A, this.f16238l);
        bundle.putCharSequence(B, this.f16239m);
        bundle.putInt(C, this.f16240n);
        bundle.putCharSequence(D, this.f16241o);
        bundle.putInt(E, this.f16242p);
        bundle.putCharSequence(F, this.f16243q);
        bundle.putInt(G, this.f16248v);
    }

    @VisibleForTesting
    void p0(@Nullable e eVar) {
        this.f16235i = eVar;
    }

    public void q0(@IntRange(from = 0, to = 23) int i2) {
        this.f16247u.g(i2);
        e eVar = this.f16235i;
        if (eVar != null) {
            eVar.invalidate();
        }
    }

    public void r0(@IntRange(from = 0, to = 59) int i2) {
        this.f16247u.i(i2);
        e eVar = this.f16235i;
        if (eVar != null) {
            eVar.invalidate();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z3) {
        super.setCancelable(z3);
        t0();
    }

    @Override // com.google.android.material.timepicker.TimePickerView.e
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void u() {
        this.f16246t = 1;
        u0(this.f16244r);
        this.f16234h.h();
    }
}
