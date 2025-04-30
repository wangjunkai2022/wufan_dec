package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Long f14767a;

    /* loaded from: classes2.dex */
    class a extends c {

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ k f14768h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, k kVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f14768h = kVar;
        }

        @Override // com.google.android.material.datepicker.c
        void e() {
            this.f14768h.a();
        }

        @Override // com.google.android.material.datepicker.c
        void f(@Nullable Long l4) {
            if (l4 == null) {
                SingleDateSelector.this.c();
            } else {
                SingleDateSelector.this.y0(l4.longValue());
            }
            this.f14768h.b(SingleDateSelector.this.v0());
        }
    }

    /* loaded from: classes2.dex */
    class b implements Parcelable.Creator<SingleDateSelector> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public SingleDateSelector createFromParcel(@NonNull Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f14767a = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public SingleDateSelector[] newArray(int i2) {
            return new SingleDateSelector[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f14767a = null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int A(Context context) {
        return com.google.android.material.resources.b.g(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String U(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l4 = this.f14767a;
        if (l4 == null) {
            return resources.getString(R.string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R.string.mtrl_picker_date_header_selected, d.j(l4.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> Y() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    /* renamed from: d */
    public Long v0() {
        return this.f14767a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: e */
    public void a0(@Nullable Long l4) {
        this.f14767a = l4 == null ? null : Long.valueOf(o.a(l4.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View e0(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull k<Long> kVar) {
        View inflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.f.a()) {
            editText.setInputType(17);
        }
        SimpleDateFormat p3 = o.p();
        String q3 = o.q(inflate.getResources(), p3);
        textInputLayout.setPlaceholderText(q3);
        Long l4 = this.f14767a;
        if (l4 != null) {
            editText.setText(p3.format(l4));
        }
        editText.addTextChangedListener(new a(q3, p3, textInputLayout, calendarConstraints, kVar));
        w.p(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean k0() {
        return this.f14767a != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> m0() {
        ArrayList arrayList = new ArrayList();
        Long l4 = this.f14767a;
        if (l4 != null) {
            arrayList.add(l4);
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeValue(this.f14767a);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int x() {
        return R.string.mtrl_picker_date_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void y0(long j4) {
        this.f14767a = Long.valueOf(j4);
    }
}
