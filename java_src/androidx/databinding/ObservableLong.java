package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableLong extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new Parcelable.Creator<ObservableLong>() { // from class: androidx.databinding.ObservableLong.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableLong createFromParcel(Parcel parcel) {
            return new ObservableLong(parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableLong[] newArray(int i2) {
            return new ObservableLong[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private long f5247b;

    public ObservableLong(long j4) {
        this.f5247b = j4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long get() {
        return this.f5247b;
    }

    public void set(long j4) {
        if (j4 != this.f5247b) {
            this.f5247b = j4;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f5247b);
    }

    public ObservableLong() {
    }

    public ObservableLong(Observable... observableArr) {
        super(observableArr);
    }
}
