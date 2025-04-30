package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new a();

    /* renamed from: h  reason: collision with root package name */
    public static final String f16203h = "%02d";

    /* renamed from: i  reason: collision with root package name */
    public static final String f16204i = "%d";

    /* renamed from: a  reason: collision with root package name */
    private final c f16205a;

    /* renamed from: b  reason: collision with root package name */
    private final c f16206b;

    /* renamed from: c  reason: collision with root package name */
    final int f16207c;

    /* renamed from: d  reason: collision with root package name */
    int f16208d;

    /* renamed from: e  reason: collision with root package name */
    int f16209e;

    /* renamed from: f  reason: collision with root package name */
    int f16210f;

    /* renamed from: g  reason: collision with root package name */
    int f16211g;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<TimeModel> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TimeModel[] newArray(int i2) {
            return new TimeModel[i2];
        }
    }

    public TimeModel() {
        this(0);
    }

    public static String a(Resources resources, CharSequence charSequence) {
        return b(resources, charSequence, f16203h);
    }

    public static String b(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    private static int f(int i2) {
        return i2 >= 12 ? 1 : 0;
    }

    public int c() {
        if (this.f16207c == 1) {
            return this.f16208d % 24;
        }
        int i2 = this.f16208d;
        if (i2 % 12 == 0) {
            return 12;
        }
        return this.f16211g == 1 ? i2 - 12 : i2;
    }

    public c d() {
        return this.f16206b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public c e() {
        return this.f16205a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TimeModel) {
            TimeModel timeModel = (TimeModel) obj;
            return this.f16208d == timeModel.f16208d && this.f16209e == timeModel.f16209e && this.f16207c == timeModel.f16207c && this.f16210f == timeModel.f16210f;
        }
        return false;
    }

    public void g(int i2) {
        if (this.f16207c == 1) {
            this.f16208d = i2;
        } else {
            this.f16208d = (i2 % 12) + (this.f16211g != 1 ? 0 : 12);
        }
    }

    public void h(int i2) {
        this.f16211g = f(i2);
        this.f16208d = i2;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f16207c), Integer.valueOf(this.f16208d), Integer.valueOf(this.f16209e), Integer.valueOf(this.f16210f)});
    }

    public void i(@IntRange(from = 0, to = 59) int i2) {
        this.f16209e = i2 % 60;
    }

    public void j(int i2) {
        if (i2 != this.f16211g) {
            this.f16211g = i2;
            int i4 = this.f16208d;
            if (i4 < 12 && i2 == 1) {
                this.f16208d = i4 + 12;
            } else if (i4 < 12 || i2 != 0) {
            } else {
                this.f16208d = i4 - 12;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f16208d);
        parcel.writeInt(this.f16209e);
        parcel.writeInt(this.f16210f);
        parcel.writeInt(this.f16207c);
    }

    public TimeModel(int i2) {
        this(0, 0, 10, i2);
    }

    public TimeModel(int i2, int i4, int i5, int i6) {
        this.f16208d = i2;
        this.f16209e = i4;
        this.f16210f = i5;
        this.f16207c = i6;
        this.f16211g = f(i2);
        this.f16205a = new c(59);
        this.f16206b = new c(i6 == 1 ? 24 : 12);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
