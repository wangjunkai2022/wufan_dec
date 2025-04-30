package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class DateValidatorPointForward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final long f14660a;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<DateValidatorPointForward> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public DateValidatorPointForward createFromParcel(@NonNull Parcel parcel) {
            return new DateValidatorPointForward(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public DateValidatorPointForward[] newArray(int i2) {
            return new DateValidatorPointForward[i2];
        }
    }

    /* synthetic */ DateValidatorPointForward(long j4, a aVar) {
        this(j4);
    }

    @NonNull
    public static DateValidatorPointForward a(long j4) {
        return new DateValidatorPointForward(j4);
    }

    @NonNull
    public static DateValidatorPointForward b() {
        return a(o.t().getTimeInMillis());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointForward) && this.f14660a == ((DateValidatorPointForward) obj).f14660a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f14660a)});
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean m(long j4) {
        return j4 >= this.f14660a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeLong(this.f14660a);
    }

    private DateValidatorPointForward(long j4) {
        this.f14660a = j4;
    }
}
