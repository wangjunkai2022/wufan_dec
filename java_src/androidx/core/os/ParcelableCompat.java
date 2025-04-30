package androidx.core.os;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public final class ParcelableCompat {

    /* loaded from: classes.dex */
    static class ParcelableCompatCreatorHoneycombMR2<T> implements Parcelable.ClassLoaderCreator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final ParcelableCompatCreatorCallbacks<T> f4504a;

        ParcelableCompatCreatorHoneycombMR2(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
            this.f4504a = parcelableCompatCreatorCallbacks;
        }

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return this.f4504a.createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i2) {
            return this.f4504a.newArray(i2);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return this.f4504a.createFromParcel(parcel, classLoader);
        }
    }

    private ParcelableCompat() {
    }

    @Deprecated
    public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return new ParcelableCompatCreatorHoneycombMR2(parcelableCompatCreatorCallbacks);
    }
}
