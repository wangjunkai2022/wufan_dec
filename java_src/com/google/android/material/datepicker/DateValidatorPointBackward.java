package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class DateValidatorPointBackward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointBackward> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final long f14659a;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<DateValidatorPointBackward> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public DateValidatorPointBackward createFromParcel(@NonNull Parcel parcel) {
            return new DateValidatorPointBackward(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public DateValidatorPointBackward[] newArray(int i2) {
            return new DateValidatorPointBackward[i2];
        }
    }

    /* synthetic */ DateValidatorPointBackward(long j4, a aVar) {
        this(j4);
    }

    @NonNull
    public static DateValidatorPointBackward a(long j4) {
        return new DateValidatorPointBackward(j4);
    }

    @NonNull
    public static DateValidatorPointBackward b() {
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
        return (obj instanceof DateValidatorPointBackward) && this.f14659a == ((DateValidatorPointBackward) obj).f14659a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f14659a)});
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean m(long j4) {
        return j4 <= this.f14659a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeLong(this.f14659a);
    }

    private DateValidatorPointBackward(long j4) {
        this.f14659a = j4;
    }
}
