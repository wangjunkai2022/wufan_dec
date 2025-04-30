package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new Parcelable.Creator<ParcelImpl>() { // from class: androidx.versionedparcelable.ParcelImpl.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelImpl[] newArray(int i2) {
            return new ParcelImpl[i2];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final VersionedParcelable f7987a;

    public ParcelImpl(VersionedParcelable versionedParcelable) {
        this.f7987a = versionedParcelable;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public <T extends VersionedParcelable> T getVersionedParcel() {
        return (T) this.f7987a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        new VersionedParcelParcel(parcel).F(this.f7987a);
    }

    protected ParcelImpl(Parcel parcel) {
        this.f7987a = new VersionedParcelParcel(parcel).s();
    }
}
