package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.R;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes2.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    private static final String A = "TITLE_TEXT_KEY";
    private static final String B = "POSITIVE_BUTTON_TEXT_RES_ID_KEY";
    private static final String C = "POSITIVE_BUTTON_TEXT_KEY";
    private static final String D = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY";
    private static final String E = "NEGATIVE_BUTTON_TEXT_KEY";
    private static final String F = "INPUT_MODE_KEY";
    static final Object G = "CONFIRM_BUTTON_TAG";
    static final Object H = "CANCEL_BUTTON_TAG";
    static final Object I = "TOGGLE_BUTTON_TAG";
    public static final int J = 0;
    public static final int K = 1;

    /* renamed from: w  reason: collision with root package name */
    private static final String f14701w = "OVERRIDE_THEME_RES_ID";

    /* renamed from: x  reason: collision with root package name */
    private static final String f14702x = "DATE_SELECTOR_KEY";

    /* renamed from: y  reason: collision with root package name */
    private static final String f14703y = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: z  reason: collision with root package name */
    private static final String f14704z = "TITLE_TEXT_RES_ID_KEY";

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashSet<com.google.android.material.datepicker.f<? super S>> f14705a = new LinkedHashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashSet<View.OnClickListener> f14706b = new LinkedHashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f14707c = new LinkedHashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f14708d = new LinkedHashSet<>();
    @StyleRes

    /* renamed from: e  reason: collision with root package name */
    private int f14709e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private DateSelector<S> f14710f;

    /* renamed from: g  reason: collision with root package name */
    private l<S> f14711g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private CalendarConstraints f14712h;

    /* renamed from: i  reason: collision with root package name */
    private MaterialCalendar<S> f14713i;
    @StringRes

    /* renamed from: j  reason: collision with root package name */
    private int f14714j;

    /* renamed from: k  reason: collision with root package name */
    private CharSequence f14715k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f14716l;

    /* renamed from: m  reason: collision with root package name */
    private int f14717m;
    @StringRes

    /* renamed from: n  reason: collision with root package name */
    private int f14718n;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f14719o;
    @StringRes

    /* renamed from: p  reason: collision with root package name */
    private int f14720p;

    /* renamed from: q  reason: collision with root package name */
    private CharSequence f14721q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f14722r;

    /* renamed from: s  reason: collision with root package name */
    private CheckableImageButton f14723s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private MaterialShapeDrawable f14724t;

    /* renamed from: u  reason: collision with root package name */
    private Button f14725u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f14726v;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface InputMode {
    }

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialDatePicker.this.f14705a.iterator();
            while (it2.hasNext()) {
                ((com.google.android.material.datepicker.f) it2.next()).a(MaterialDatePicker.this.i0());
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* loaded from: classes2.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialDatePicker.this.f14706b.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements OnApplyWindowInsetsListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f14729a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f14730b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f14731c;

        c(int i2, View view, int i4) {
            this.f14729a = i2;
            this.f14730b = view;
            this.f14731c = i4;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
            if (this.f14729a >= 0) {
                this.f14730b.getLayoutParams().height = this.f14729a + i2;
                View view2 = this.f14730b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.f14730b;
            view3.setPadding(view3.getPaddingLeft(), this.f14731c + i2, this.f14730b.getPaddingRight(), this.f14730b.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends k<S> {
        d() {
        }

        @Override // com.google.android.material.datepicker.k
        public void a() {
            MaterialDatePicker.this.f14725u.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.k
        public void b(S s3) {
            MaterialDatePicker.this.x0();
            MaterialDatePicker.this.f14725u.setEnabled(MaterialDatePicker.this.f0().k0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialDatePicker.this.f14725u.setEnabled(MaterialDatePicker.this.f0().k0());
            MaterialDatePicker.this.f14723s.toggle();
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.y0(materialDatePicker.f14723s);
            MaterialDatePicker.this.u0();
        }
    }

    /* loaded from: classes2.dex */
    public static final class f<S> {

        /* renamed from: a  reason: collision with root package name */
        final DateSelector<S> f14735a;

        /* renamed from: c  reason: collision with root package name */
        CalendarConstraints f14737c;

        /* renamed from: b  reason: collision with root package name */
        int f14736b = 0;

        /* renamed from: d  reason: collision with root package name */
        int f14738d = 0;

        /* renamed from: e  reason: collision with root package name */
        CharSequence f14739e = null;

        /* renamed from: f  reason: collision with root package name */
        int f14740f = 0;

        /* renamed from: g  reason: collision with root package name */
        CharSequence f14741g = null;

        /* renamed from: h  reason: collision with root package name */
        int f14742h = 0;

        /* renamed from: i  reason: collision with root package name */
        CharSequence f14743i = null;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        S f14744j = null;

        /* renamed from: k  reason: collision with root package name */
        int f14745k = 0;

        private f(DateSelector<S> dateSelector) {
            this.f14735a = dateSelector;
        }

        private Month b() {
            if (!this.f14735a.m0().isEmpty()) {
                Month M0 = Month.M0(this.f14735a.m0().iterator().next().longValue());
                if (f(M0, this.f14737c)) {
                    return M0;
                }
            }
            Month N0 = Month.N0();
            return f(N0, this.f14737c) ? N0 : this.f14737c.j();
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> f<S> c(@NonNull DateSelector<S> dateSelector) {
            return new f<>(dateSelector);
        }

        @NonNull
        public static f<Long> d() {
            return new f<>(new SingleDateSelector());
        }

        @NonNull
        public static f<Pair<Long, Long>> e() {
            return new f<>(new RangeDateSelector());
        }

        private static boolean f(Month month, CalendarConstraints calendarConstraints) {
            return month.compareTo(calendarConstraints.j()) >= 0 && month.compareTo(calendarConstraints.g()) <= 0;
        }

        @NonNull
        public MaterialDatePicker<S> a() {
            if (this.f14737c == null) {
                this.f14737c = new CalendarConstraints.b().a();
            }
            if (this.f14738d == 0) {
                this.f14738d = this.f14735a.x();
            }
            S s3 = this.f14744j;
            if (s3 != null) {
                this.f14735a.a0(s3);
            }
            if (this.f14737c.i() == null) {
                this.f14737c.n(b());
            }
            return MaterialDatePicker.n0(this);
        }

        @NonNull
        public f<S> g(CalendarConstraints calendarConstraints) {
            this.f14737c = calendarConstraints;
            return this;
        }

        @NonNull
        public f<S> h(int i2) {
            this.f14745k = i2;
            return this;
        }

        @NonNull
        public f<S> i(@StringRes int i2) {
            this.f14742h = i2;
            this.f14743i = null;
            return this;
        }

        @NonNull
        public f<S> j(@Nullable CharSequence charSequence) {
            this.f14743i = charSequence;
            this.f14742h = 0;
            return this;
        }

        @NonNull
        public f<S> k(@StringRes int i2) {
            this.f14740f = i2;
            this.f14741g = null;
            return this;
        }

        @NonNull
        public f<S> l(@Nullable CharSequence charSequence) {
            this.f14741g = charSequence;
            this.f14740f = 0;
            return this;
        }

        @NonNull
        public f<S> m(S s3) {
            this.f14744j = s3;
            return this;
        }

        @NonNull
        public f<S> n(@StyleRes int i2) {
            this.f14736b = i2;
            return this;
        }

        @NonNull
        public f<S> o(@StringRes int i2) {
            this.f14738d = i2;
            this.f14739e = null;
            return this;
        }

        @NonNull
        public f<S> p(@Nullable CharSequence charSequence) {
            this.f14739e = charSequence;
            this.f14738d = 0;
            return this;
        }
    }

    @NonNull
    private static Drawable d0(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842912}, AppCompatResources.getDrawable(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, R.drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void e0(Window window) {
        if (this.f14726v) {
            return;
        }
        View findViewById = requireView().findViewById(R.id.fullscreen_header);
        com.google.android.material.internal.e.b(window, true, w.f(findViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById, new c(findViewById.getLayoutParams().height, findViewById, findViewById.getPaddingTop()));
        this.f14726v = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateSelector<S> f0() {
        if (this.f14710f == null) {
            this.f14710f = (DateSelector) getArguments().getParcelable(f14702x);
        }
        return this.f14710f;
    }

    private static int h0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        int i2 = Month.N0().f14749d;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * i2) + ((i2 - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding));
    }

    private int j0(Context context) {
        int i2 = this.f14709e;
        return i2 != 0 ? i2 : f0().A(context);
    }

    private void k0(Context context) {
        this.f14723s.setTag(I);
        this.f14723s.setImageDrawable(d0(context));
        this.f14723s.setChecked(this.f14717m != 0);
        ViewCompat.setAccessibilityDelegate(this.f14723s, null);
        y0(this.f14723s);
        this.f14723s.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l0(@NonNull Context context) {
        return o0(context, 16843277);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m0(@NonNull Context context) {
        return o0(context, R.attr.nestedScrollable);
    }

    @NonNull
    static <S> MaterialDatePicker<S> n0(@NonNull f<S> fVar) {
        MaterialDatePicker<S> materialDatePicker = new MaterialDatePicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f14701w, fVar.f14736b);
        bundle.putParcelable(f14702x, fVar.f14735a);
        bundle.putParcelable(f14703y, fVar.f14737c);
        bundle.putInt(f14704z, fVar.f14738d);
        bundle.putCharSequence(A, fVar.f14739e);
        bundle.putInt(F, fVar.f14745k);
        bundle.putInt(B, fVar.f14740f);
        bundle.putCharSequence(C, fVar.f14741g);
        bundle.putInt(D, fVar.f14742h);
        bundle.putCharSequence(E, fVar.f14743i);
        materialDatePicker.setArguments(bundle);
        return materialDatePicker;
    }

    static boolean o0(@NonNull Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.resources.b.g(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i2});
        boolean z3 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        l<S> lVar;
        int j02 = j0(requireContext());
        this.f14713i = MaterialCalendar.g0(f0(), j02, this.f14712h);
        if (this.f14723s.isChecked()) {
            lVar = h.Q(f0(), j02, this.f14712h);
        } else {
            lVar = this.f14713i;
        }
        this.f14711g = lVar;
        x0();
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.mtrl_calendar_frame, this.f14711g);
        beginTransaction.commitNow();
        this.f14711g.M(new d());
    }

    public static long v0() {
        return Month.N0().f14751f;
    }

    public static long w0() {
        return o.t().getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        String g02 = g0();
        this.f14722r.setContentDescription(String.format(getString(R.string.mtrl_picker_announce_current_selection), g02));
        this.f14722r.setText(g02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(@NonNull CheckableImageButton checkableImageButton) {
        String string;
        if (this.f14723s.isChecked()) {
            string = checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode);
        } else {
            string = checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode);
        }
        this.f14723s.setContentDescription(string);
    }

    public boolean U(DialogInterface.OnCancelListener onCancelListener) {
        return this.f14707c.add(onCancelListener);
    }

    public boolean V(DialogInterface.OnDismissListener onDismissListener) {
        return this.f14708d.add(onDismissListener);
    }

    public boolean W(View.OnClickListener onClickListener) {
        return this.f14706b.add(onClickListener);
    }

    public boolean X(com.google.android.material.datepicker.f<? super S> fVar) {
        return this.f14705a.add(fVar);
    }

    public void Z() {
        this.f14707c.clear();
    }

    public void a0() {
        this.f14708d.clear();
    }

    public void b0() {
        this.f14706b.clear();
    }

    public void c0() {
        this.f14705a.clear();
    }

    public String g0() {
        return f0().U(getContext());
    }

    @Nullable
    public final S i0() {
        return f0().v0();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f14707c.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f14709e = bundle.getInt(f14701w);
        this.f14710f = (DateSelector) bundle.getParcelable(f14702x);
        this.f14712h = (CalendarConstraints) bundle.getParcelable(f14703y);
        this.f14714j = bundle.getInt(f14704z);
        this.f14715k = bundle.getCharSequence(A);
        this.f14717m = bundle.getInt(F);
        this.f14718n = bundle.getInt(B);
        this.f14719o = bundle.getCharSequence(C);
        this.f14720p = bundle.getInt(D);
        this.f14721q = bundle.getCharSequence(E);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), j0(requireContext()));
        Context context = dialog.getContext();
        this.f14716l = l0(context);
        int g4 = com.google.android.material.resources.b.g(context, R.attr.colorSurface, MaterialDatePicker.class.getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.f14724t = materialShapeDrawable;
        materialShapeDrawable.Z(context);
        this.f14724t.o0(ColorStateList.valueOf(g4));
        this.f14724t.n0(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f14716l ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        if (this.f14716l) {
            inflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(h0(context), -2));
        } else {
            inflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(h0(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.f14722r = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.f14723s = (CheckableImageButton) inflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.f14715k;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f14714j);
        }
        k0(context);
        this.f14725u = (Button) inflate.findViewById(R.id.confirm_button);
        if (f0().k0()) {
            this.f14725u.setEnabled(true);
        } else {
            this.f14725u.setEnabled(false);
        }
        this.f14725u.setTag(G);
        CharSequence charSequence2 = this.f14719o;
        if (charSequence2 != null) {
            this.f14725u.setText(charSequence2);
        } else {
            int i2 = this.f14718n;
            if (i2 != 0) {
                this.f14725u.setText(i2);
            }
        }
        this.f14725u.setOnClickListener(new a());
        Button button = (Button) inflate.findViewById(R.id.cancel_button);
        button.setTag(H);
        CharSequence charSequence3 = this.f14721q;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i4 = this.f14720p;
            if (i4 != 0) {
                button.setText(i4);
            }
        }
        button.setOnClickListener(new b());
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f14708d.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f14701w, this.f14709e);
        bundle.putParcelable(f14702x, this.f14710f);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.f14712h);
        if (this.f14713i.c0() != null) {
            bVar.c(this.f14713i.c0().f14751f);
        }
        bundle.putParcelable(f14703y, bVar.a());
        bundle.putInt(f14704z, this.f14714j);
        bundle.putCharSequence(A, this.f14715k);
        bundle.putInt(B, this.f14718n);
        bundle.putCharSequence(C, this.f14719o);
        bundle.putInt(D, this.f14720p);
        bundle.putCharSequence(E, this.f14721q);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f14716l) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f14724t);
            e0(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f14724t, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new com.google.android.material.dialog.a(requireDialog(), rect));
        }
        u0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.f14711g.N();
        super.onStop();
    }

    public boolean p0(DialogInterface.OnCancelListener onCancelListener) {
        return this.f14707c.remove(onCancelListener);
    }

    public boolean q0(DialogInterface.OnDismissListener onDismissListener) {
        return this.f14708d.remove(onDismissListener);
    }

    public boolean r0(View.OnClickListener onClickListener) {
        return this.f14706b.remove(onClickListener);
    }

    public boolean t0(com.google.android.material.datepicker.f<? super S> fVar) {
        return this.f14705a.remove(fVar);
    }
}
