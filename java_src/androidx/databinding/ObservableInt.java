package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableInt extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableInt> CREATOR = new Parcelable.Creator<ObservableInt>() { // from class: androidx.databinding.ObservableInt.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableInt createFromParcel(Parcel parcel) {
            return new ObservableInt(parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableInt[] newArray(int i2) {
            return new ObservableInt[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f5246b;

    public ObservableInt(int i2) {
        this.f5246b = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int get() {
        return this.f5246b;
    }

    public void set(int i2) {
        if (i2 != this.f5246b) {
            this.f5246b = i2;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f5246b);
    }

    public ObservableInt() {
    }

    public ObservableInt(Observable... observableArr) {
        super(observableArr);
    }
}
