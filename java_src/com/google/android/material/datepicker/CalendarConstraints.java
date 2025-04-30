package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Month f14640a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Month f14641b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final DateValidator f14642c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Month f14643d;

    /* renamed from: e  reason: collision with root package name */
    private final int f14644e;

    /* renamed from: f  reason: collision with root package name */
    private final int f14645f;

    /* loaded from: classes2.dex */
    public interface DateValidator extends Parcelable {
        boolean m(long j4);
    }

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<CalendarConstraints> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public CalendarConstraints[] newArray(int i2) {
            return new CalendarConstraints[i2];
        }
    }

    /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, a aVar) {
        this(month, month2, dateValidator, month3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Month e(Month month) {
        if (month.compareTo(this.f14640a) < 0) {
            return this.f14640a;
        }
        return month.compareTo(this.f14641b) > 0 ? this.f14641b : month;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CalendarConstraints) {
            CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
            return this.f14640a.equals(calendarConstraints.f14640a) && this.f14641b.equals(calendarConstraints.f14641b) && ObjectsCompat.equals(this.f14643d, calendarConstraints.f14643d) && this.f14642c.equals(calendarConstraints.f14642c);
        }
        return false;
    }

    public DateValidator f() {
        return this.f14642c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Month g() {
        return this.f14641b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return this.f14645f;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f14640a, this.f14641b, this.f14643d, this.f14642c});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Month i() {
        return this.f14643d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Month j() {
        return this.f14640a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.f14644e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l(long j4) {
        if (this.f14640a.P0(1) <= j4) {
            Month month = this.f14641b;
            if (j4 <= month.P0(month.f14750e)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(@Nullable Month month) {
        this.f14643d = month;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f14640a, 0);
        parcel.writeParcelable(this.f14641b, 0);
        parcel.writeParcelable(this.f14643d, 0);
        parcel.writeParcelable(this.f14642c, 0);
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3) {
        this.f14640a = month;
        this.f14641b = month2;
        this.f14643d = month3;
        this.f14642c = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f14645f = month.U0(month2) + 1;
        this.f14644e = (month2.f14748c - month.f14748c) + 1;
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: e  reason: collision with root package name */
        static final long f14646e = o.a(Month.L0(1900, 0).f14751f);

        /* renamed from: f  reason: collision with root package name */
        static final long f14647f = o.a(Month.L0(2100, 11).f14751f);

        /* renamed from: g  reason: collision with root package name */
        private static final String f14648g = "DEEP_COPY_VALIDATOR_KEY";

        /* renamed from: a  reason: collision with root package name */
        private long f14649a;

        /* renamed from: b  reason: collision with root package name */
        private long f14650b;

        /* renamed from: c  reason: collision with root package name */
        private Long f14651c;

        /* renamed from: d  reason: collision with root package name */
        private DateValidator f14652d;

        public b() {
            this.f14649a = f14646e;
            this.f14650b = f14647f;
            this.f14652d = DateValidatorPointForward.a(Long.MIN_VALUE);
        }

        @NonNull
        public CalendarConstraints a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(f14648g, this.f14652d);
            Month M0 = Month.M0(this.f14649a);
            Month M02 = Month.M0(this.f14650b);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable(f14648g);
            Long l4 = this.f14651c;
            return new CalendarConstraints(M0, M02, dateValidator, l4 == null ? null : Month.M0(l4.longValue()), null);
        }

        @NonNull
        public b b(long j4) {
            this.f14650b = j4;
            return this;
        }

        @NonNull
        public b c(long j4) {
            this.f14651c = Long.valueOf(j4);
            return this;
        }

        @NonNull
        public b d(long j4) {
            this.f14649a = j4;
            return this;
        }

        @NonNull
        public b e(@NonNull DateValidator dateValidator) {
            this.f14652d = dateValidator;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(@NonNull CalendarConstraints calendarConstraints) {
            this.f14649a = f14646e;
            this.f14650b = f14647f;
            this.f14652d = DateValidatorPointForward.a(Long.MIN_VALUE);
            this.f14649a = calendarConstraints.f14640a.f14751f;
            this.f14650b = calendarConstraints.f14641b.f14751f;
            this.f14651c = Long.valueOf(calendarConstraints.f14643d.f14751f);
            this.f14652d = calendarConstraints.f14642c;
        }
    }
}
