package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* renamed from: c  reason: collision with root package name */
    private static final int f14653c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f14654d = 2;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final d f14657a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final List<CalendarConstraints.DateValidator> f14658b;

    /* renamed from: e  reason: collision with root package name */
    private static final d f14655e = new a();

    /* renamed from: f  reason: collision with root package name */
    private static final d f14656f = new b();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements d {
        a() {
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public boolean a(@NonNull List<CalendarConstraints.DateValidator> list, long j4) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.m(j4)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public int getId() {
            return 1;
        }
    }

    /* loaded from: classes2.dex */
    class b implements d {
        b() {
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public boolean a(@NonNull List<CalendarConstraints.DateValidator> list, long j4) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.m(j4)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.d
        public int getId() {
            return 2;
        }
    }

    /* loaded from: classes2.dex */
    class c implements Parcelable.Creator<CompositeDateValidator> {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a */
        public CompositeDateValidator createFromParcel(@NonNull Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int readInt = parcel.readInt();
            return new CompositeDateValidator((List) Preconditions.checkNotNull(readArrayList), readInt == 2 ? CompositeDateValidator.f14656f : readInt == 1 ? CompositeDateValidator.f14655e : CompositeDateValidator.f14656f, null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b */
        public CompositeDateValidator[] newArray(int i2) {
            return new CompositeDateValidator[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface d {
        boolean a(@NonNull List<CalendarConstraints.DateValidator> list, long j4);

        int getId();
    }

    /* synthetic */ CompositeDateValidator(List list, d dVar, a aVar) {
        this(list, dVar);
    }

    @NonNull
    public static CalendarConstraints.DateValidator c(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, f14656f);
    }

    @NonNull
    public static CalendarConstraints.DateValidator d(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, f14655e);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CompositeDateValidator) {
            CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
            return this.f14658b.equals(compositeDateValidator.f14658b) && this.f14657a.getId() == compositeDateValidator.f14657a.getId();
        }
        return false;
    }

    public int hashCode() {
        return this.f14658b.hashCode();
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean m(long j4) {
        return this.f14657a.a(this.f14658b, j4);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        parcel.writeList(this.f14658b);
        parcel.writeInt(this.f14657a.getId());
    }

    private CompositeDateValidator(@NonNull List<CalendarConstraints.DateValidator> list, d dVar) {
        this.f14658b = list;
        this.f14657a = dVar;
    }
}
