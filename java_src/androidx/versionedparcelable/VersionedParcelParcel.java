package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
class VersionedParcelParcel extends VersionedParcel {
    private static final boolean B = false;
    private static final String C = "VersionedParcelParcel";
    private int A;

    /* renamed from: t  reason: collision with root package name */
    private final SparseIntArray f8009t;

    /* renamed from: u  reason: collision with root package name */
    private final Parcel f8010u;

    /* renamed from: v  reason: collision with root package name */
    private final int f8011v;

    /* renamed from: w  reason: collision with root package name */
    private final int f8012w;

    /* renamed from: x  reason: collision with root package name */
    private final String f8013x;

    /* renamed from: y  reason: collision with root package name */
    private int f8014y;

    /* renamed from: z  reason: collision with root package name */
    private int f8015z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VersionedParcelParcel(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel b() {
        Parcel parcel = this.f8010u;
        int dataPosition = parcel.dataPosition();
        int i2 = this.f8015z;
        if (i2 == this.f8011v) {
            i2 = this.f8012w;
        }
        int i4 = i2;
        return new VersionedParcelParcel(parcel, dataPosition, i4, this.f8013x + "  ", this.f8005a, this.f8006b, this.f8007c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        int i2 = this.f8014y;
        if (i2 >= 0) {
            int i4 = this.f8009t.get(i2);
            int dataPosition = this.f8010u.dataPosition();
            this.f8010u.setDataPosition(i4);
            this.f8010u.writeInt(dataPosition - i4);
            this.f8010u.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected CharSequence i() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f8010u);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        return this.f8010u.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        return this.f8010u.readBundle(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        int readInt = this.f8010u.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f8010u.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        return this.f8010u.readDouble();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i2) {
        while (this.f8015z < this.f8012w) {
            int i4 = this.A;
            if (i4 == i2) {
                return true;
            }
            if (String.valueOf(i4).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            this.f8010u.setDataPosition(this.f8015z);
            int readInt = this.f8010u.readInt();
            this.A = this.f8010u.readInt();
            this.f8015z += readInt;
        }
        return this.A == i2;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        return this.f8010u.readFloat();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        return this.f8010u.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        return this.f8010u.readLong();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return (T) this.f8010u.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        return this.f8010u.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return this.f8010u.readStrongBinder();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i2) {
        closeField();
        this.f8014y = i2;
        this.f8009t.put(i2, this.f8010u.dataPosition());
        writeInt(0);
        writeInt(i2);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected void v(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f8010u, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z3) {
        this.f8010u.writeInt(z3 ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        this.f8010u.writeBundle(bundle);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        if (bArr != null) {
            this.f8010u.writeInt(bArr.length);
            this.f8010u.writeByteArray(bArr);
            return;
        }
        this.f8010u.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d4) {
        this.f8010u.writeDouble(d4);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f4) {
        this.f8010u.writeFloat(f4);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i2) {
        this.f8010u.writeInt(i2);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j4) {
        this.f8010u.writeLong(j4);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        this.f8010u.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        this.f8010u.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        this.f8010u.writeStrongBinder(iBinder);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        this.f8010u.writeStrongInterface(iInterface);
    }

    private VersionedParcelParcel(Parcel parcel, int i2, int i4, String str, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f8009t = new SparseIntArray();
        this.f8014y = -1;
        this.f8015z = 0;
        this.A = -1;
        this.f8010u = parcel;
        this.f8011v = i2;
        this.f8012w = i4;
        this.f8015z = i2;
        this.f8013x = str;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i2, int i4) {
        if (bArr != null) {
            this.f8010u.writeInt(bArr.length);
            this.f8010u.writeByteArray(bArr, i2, i4);
            return;
        }
        this.f8010u.writeInt(-1);
    }
}
