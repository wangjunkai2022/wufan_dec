package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableDouble extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableDouble> CREATOR = new Parcelable.Creator<ObservableDouble>() { // from class: androidx.databinding.ObservableDouble.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableDouble createFromParcel(Parcel parcel) {
            return new ObservableDouble(parcel.readDouble());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableDouble[] newArray(int i2) {
            return new ObservableDouble[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private double f5243b;

    public ObservableDouble(double d4) {
        this.f5243b = d4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double get() {
        return this.f5243b;
    }

    public void set(double d4) {
        if (d4 != this.f5243b) {
            this.f5243b = d4;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeDouble(this.f5243b);
    }

    public ObservableDouble() {
    }

    public ObservableDouble(Observable... observableArr) {
        super(observableArr);
    }
}
