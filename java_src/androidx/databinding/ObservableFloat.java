package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableFloat extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableFloat> CREATOR = new Parcelable.Creator<ObservableFloat>() { // from class: androidx.databinding.ObservableFloat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableFloat createFromParcel(Parcel parcel) {
            return new ObservableFloat(parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableFloat[] newArray(int i2) {
            return new ObservableFloat[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private float f5245b;

    public ObservableFloat(float f4) {
        this.f5245b = f4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float get() {
        return this.f5245b;
    }

    public void set(float f4) {
        if (f4 != this.f5245b) {
            this.f5245b = f4;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.f5245b);
    }

    public ObservableFloat() {
    }

    public ObservableFloat(Observable... observableArr) {
        super(observableArr);
    }
}
