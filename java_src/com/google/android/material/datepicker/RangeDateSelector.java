package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    private String f14753a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14754b = " ";
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Long f14755c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Long f14756d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Long f14757e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Long f14758f = null;

    /* loaded from: classes2.dex */
    class a extends com.google.android.material.datepicker.c {

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TextInputLayout f14759h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ TextInputLayout f14760i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ k f14761j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, k kVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f14759h = textInputLayout2;
            this.f14760i = textInputLayout3;
            this.f14761j = kVar;
        }

        @Override // com.google.android.material.datepicker.c
        void e() {
            RangeDateSelector.this.f14757e = null;
            RangeDateSelector.this.k(this.f14759h, this.f14760i, this.f14761j);
        }

        @Override // com.google.android.material.datepicker.c
        void f(@Nullable Long l4) {
            RangeDateSelector.this.f14757e = l4;
            RangeDateSelector.this.k(this.f14759h, this.f14760i, this.f14761j);
        }
    }

    /* loaded from: classes2.dex */
    class b extends com.google.android.material.datepicker.c {

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TextInputLayout f14763h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ TextInputLayout f14764i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ k f14765j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, k kVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f14763h = textInputLayout2;
            this.f14764i = textInputLayout3;
            this.f14765j = kVar;
        }

        @Override // com.google.android.material.datepicker.c
        void e() {
            RangeDateSelector.this.f14758f = null;
            RangeDateSelector.this.k(this.f14763h, this.f14764i, this.f14765j);
        }

        @Override // com.google.android.material.datepicker.c
        void f(@Nullable Long l4) {
            RangeDateSelector.this.f14758f = l4;
            RangeDateSelector.this.k(this.f14763h, this.f14764i, this.f14765j);
        }
    }

    /* loaded from: classes2.dex */
    class c implements Parcelable.Creator<RangeDateSelector> {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f14755c = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f14756d = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public RangeDateSelector[] newArray(int i2) {
            return new RangeDateSelector[i2];
        }
    }

    private void f(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f14753a.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean h(long j4, long j5) {
        return j4 <= j5;
    }

    private void i(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f14753a);
        textInputLayout2.setError(" ");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull k<Pair<Long, Long>> kVar) {
        Long l4 = this.f14757e;
        if (l4 != null && this.f14758f != null) {
            if (h(l4.longValue(), this.f14758f.longValue())) {
                this.f14755c = this.f14757e;
                this.f14756d = this.f14758f;
                kVar.b(v0());
                return;
            }
            i(textInputLayout, textInputLayout2);
            kVar.a();
            return;
        }
        f(textInputLayout, textInputLayout2);
        kVar.a();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int A(@NonNull Context context) {
        int i2;
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis)) {
            i2 = R.attr.materialCalendarTheme;
        } else {
            i2 = R.attr.materialCalendarFullscreenTheme;
        }
        return com.google.android.material.resources.b.g(context, i2, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String U(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l4 = this.f14755c;
        if (l4 == null && this.f14756d == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l5 = this.f14756d;
        if (l5 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, d.c(l4.longValue()));
        }
        if (l4 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, d.c(l5.longValue()));
        }
        Pair<String, String> a4 = d.a(l4, l5);
        return resources.getString(R.string.mtrl_picker_range_header_selected, a4.first, a4.second);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> Y() {
        if (this.f14755c != null && this.f14756d != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Pair(this.f14755c, this.f14756d));
            return arrayList;
        }
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View e0(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull k<Pair<Long, Long>> kVar) {
        View inflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.f.a()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f14753a = inflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat p3 = o.p();
        Long l4 = this.f14755c;
        if (l4 != null) {
            editText.setText(p3.format(l4));
            this.f14757e = this.f14755c;
        }
        Long l5 = this.f14756d;
        if (l5 != null) {
            editText2.setText(p3.format(l5));
            this.f14758f = this.f14756d;
        }
        String q3 = o.q(inflate.getResources(), p3);
        textInputLayout.setPlaceholderText(q3);
        textInputLayout2.setPlaceholderText(q3);
        editText.addTextChangedListener(new a(q3, p3, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, kVar));
        editText2.addTextChangedListener(new b(q3, p3, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, kVar));
        w.p(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: g */
    public Pair<Long, Long> v0() {
        return new Pair<>(this.f14755c, this.f14756d);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: j */
    public void a0(@NonNull Pair<Long, Long> pair) {
        Long l4 = pair.first;
        if (l4 != null && pair.second != null) {
            Preconditions.checkArgument(h(l4.longValue(), pair.second.longValue()));
        }
        Long l5 = pair.first;
        this.f14755c = l5 == null ? null : Long.valueOf(o.a(l5.longValue()));
        Long l6 = pair.second;
        this.f14756d = l6 != null ? Long.valueOf(o.a(l6.longValue())) : null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean k0() {
        Long l4 = this.f14755c;
        return (l4 == null || this.f14756d == null || !h(l4.longValue(), this.f14756d.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> m0() {
        ArrayList arrayList = new ArrayList();
        Long l4 = this.f14755c;
        if (l4 != null) {
            arrayList.add(l4);
        }
        Long l5 = this.f14756d;
        if (l5 != null) {
            arrayList.add(l5);
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeValue(this.f14755c);
        parcel.writeValue(this.f14756d);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int x() {
        return R.string.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void y0(long j4) {
        Long l4 = this.f14755c;
        if (l4 == null) {
            this.f14755c = Long.valueOf(j4);
        } else if (this.f14756d == null && h(l4.longValue(), j4)) {
            this.f14756d = Long.valueOf(j4);
        } else {
            this.f14756d = null;
            this.f14755c = Long.valueOf(j4);
        }
    }
}
