package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableShort extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new Parcelable.Creator<ObservableShort>() { // from class: androidx.databinding.ObservableShort.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableShort createFromParcel(Parcel parcel) {
            return new ObservableShort((short) parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableShort[] newArray(int i2) {
            return new ObservableShort[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private short f5248b;

    public ObservableShort(short s3) {
        this.f5248b = s3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public short get() {
        return this.f5248b;
    }

    public void set(short s3) {
        if (s3 != this.f5248b) {
            this.f5248b = s3;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f5248b);
    }

    public ObservableShort() {
    }

    public ObservableShort(Observable... observableArr) {
        super(observableArr);
    }
}
