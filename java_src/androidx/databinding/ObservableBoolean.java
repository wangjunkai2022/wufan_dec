package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableBoolean extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableBoolean> CREATOR = new Parcelable.Creator<ObservableBoolean>() { // from class: androidx.databinding.ObservableBoolean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableBoolean createFromParcel(Parcel parcel) {
            return new ObservableBoolean(parcel.readInt() == 1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableBoolean[] newArray(int i2) {
            return new ObservableBoolean[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5240b;

    public ObservableBoolean(boolean z3) {
        this.f5240b = z3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean get() {
        return this.f5240b;
    }

    public void set(boolean z3) {
        if (z3 != this.f5240b) {
            this.f5240b = z3;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f5240b ? 1 : 0);
    }

    public ObservableBoolean() {
    }

    public ObservableBoolean(Observable... observableArr) {
        super(observableArr);
    }
}
