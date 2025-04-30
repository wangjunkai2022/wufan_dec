package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ObservableChar extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableChar> CREATOR = new Parcelable.Creator<ObservableChar>() { // from class: androidx.databinding.ObservableChar.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableChar createFromParcel(Parcel parcel) {
            return new ObservableChar((char) parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObservableChar[] newArray(int i2) {
            return new ObservableChar[i2];
        }
    };
    static final long serialVersionUID = 1;

    /* renamed from: b  reason: collision with root package name */
    private char f5242b;

    public ObservableChar(char c4) {
        this.f5242b = c4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public char get() {
        return this.f5242b;
    }

    public void set(char c4) {
        if (c4 != this.f5242b) {
            this.f5242b = c4;
            notifyChange();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f5242b);
    }

    public ObservableChar() {
    }

    public ObservableChar(Observable... observableArr) {
        super(observableArr);
    }
}
