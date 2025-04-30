package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Calendar f14746a;

    /* renamed from: b  reason: collision with root package name */
    final int f14747b;

    /* renamed from: c  reason: collision with root package name */
    final int f14748c;

    /* renamed from: d  reason: collision with root package name */
    final int f14749d;

    /* renamed from: e  reason: collision with root package name */
    final int f14750e;

    /* renamed from: f  reason: collision with root package name */
    final long f14751f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f14752g;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<Month> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.L0(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public Month[] newArray(int i2) {
            return new Month[i2];
        }
    }

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar f4 = o.f(calendar);
        this.f14746a = f4;
        this.f14747b = f4.get(2);
        this.f14748c = f4.get(1);
        this.f14749d = f4.getMaximum(7);
        this.f14750e = f4.getActualMaximum(5);
        this.f14751f = f4.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Month L0(int i2, int i4) {
        Calendar v3 = o.v();
        v3.set(1, i2);
        v3.set(2, i4);
        return new Month(v3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Month M0(long j4) {
        Calendar v3 = o.v();
        v3.setTimeInMillis(j4);
        return new Month(v3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Month N0() {
        return new Month(o.t());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int O0() {
        int firstDayOfWeek = this.f14746a.get(7) - this.f14746a.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f14749d : firstDayOfWeek;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long P0(int i2) {
        Calendar f4 = o.f(this.f14746a);
        f4.set(5, i2);
        return f4.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int Q0(long j4) {
        Calendar f4 = o.f(this.f14746a);
        f4.setTimeInMillis(j4);
        return f4.get(5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String R0() {
        if (this.f14752g == null) {
            this.f14752g = d.i(this.f14746a.getTimeInMillis());
        }
        return this.f14752g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long S0() {
        return this.f14746a.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Month T0(int i2) {
        Calendar f4 = o.f(this.f14746a);
        f4.add(2, i2);
        return new Month(f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int U0(@NonNull Month month) {
        if (this.f14746a instanceof GregorianCalendar) {
            return ((month.f14748c - this.f14748c) * 12) + (month.f14747b - this.f14747b);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Month) {
            Month month = (Month) obj;
            return this.f14747b == month.f14747b && this.f14748c == month.f14748c;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f14747b), Integer.valueOf(this.f14748c)});
    }

    @Override // java.lang.Comparable
    /* renamed from: s */
    public int compareTo(@NonNull Month month) {
        return this.f14746a.compareTo(month.f14746a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeInt(this.f14748c);
        parcel.writeInt(this.f14747b);
    }
}
