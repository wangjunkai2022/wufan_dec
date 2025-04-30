package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
class VersionedParcelStream extends VersionedParcel {
    private static final Charset C = Charset.forName("UTF-16");
    private static final int D = 0;
    private static final int E = 1;
    private static final int F = 2;
    private static final int G = 3;
    private static final int H = 4;
    private static final int I = 5;
    private static final int J = 6;
    private static final int K = 7;
    private static final int L = 8;
    private static final int M = 9;
    private static final int N = 10;
    private static final int O = 11;
    private static final int P = 12;
    private static final int Q = 13;
    private static final int R = 14;
    private int A;
    int B;

    /* renamed from: t  reason: collision with root package name */
    private final DataInputStream f8016t;

    /* renamed from: u  reason: collision with root package name */
    private final DataOutputStream f8017u;

    /* renamed from: v  reason: collision with root package name */
    private DataInputStream f8018v;

    /* renamed from: w  reason: collision with root package name */
    private DataOutputStream f8019w;

    /* renamed from: x  reason: collision with root package name */
    private FieldBuffer f8020x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f8021y;

    /* renamed from: z  reason: collision with root package name */
    int f8022z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class FieldBuffer {

        /* renamed from: a  reason: collision with root package name */
        final ByteArrayOutputStream f8024a;

        /* renamed from: b  reason: collision with root package name */
        final DataOutputStream f8025b;

        /* renamed from: c  reason: collision with root package name */
        private final int f8026c;

        /* renamed from: d  reason: collision with root package name */
        private final DataOutputStream f8027d;

        FieldBuffer(int i2, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f8024a = byteArrayOutputStream;
            this.f8025b = new DataOutputStream(byteArrayOutputStream);
            this.f8026c = i2;
            this.f8027d = dataOutputStream;
        }

        void a() throws IOException {
            this.f8025b.flush();
            int size = this.f8024a.size();
            this.f8027d.writeInt((this.f8026c << 16) | (size >= 65535 ? 65535 : size));
            if (size >= 65535) {
                this.f8027d.writeInt(size);
            }
            this.f8024a.writeTo(this.f8027d);
        }
    }

    public VersionedParcelStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    private void H(int i2, String str, Bundle bundle) {
        switch (i2) {
            case 0:
                bundle.putParcelable(str, null);
                return;
            case 1:
                bundle.putBundle(str, readBundle());
                return;
            case 2:
                bundle.putBundle(str, readBundle());
                return;
            case 3:
                bundle.putString(str, readString());
                return;
            case 4:
                bundle.putStringArray(str, (String[]) g(new String[0]));
                return;
            case 5:
                bundle.putBoolean(str, readBoolean());
                return;
            case 6:
                bundle.putBooleanArray(str, h());
                return;
            case 7:
                bundle.putDouble(str, readDouble());
                return;
            case 8:
                bundle.putDoubleArray(str, k());
                return;
            case 9:
                bundle.putInt(str, readInt());
                return;
            case 10:
                bundle.putIntArray(str, p());
                return;
            case 11:
                bundle.putLong(str, readLong());
                return;
            case 12:
                bundle.putLongArray(str, q());
                return;
            case 13:
                bundle.putFloat(str, readFloat());
                return;
            case 14:
                bundle.putFloatArray(str, n());
                return;
            default:
                throw new RuntimeException("Unknown type " + i2);
        }
    }

    private void I(Object obj) {
        if (obj == null) {
            writeInt(0);
        } else if (obj instanceof Bundle) {
            writeInt(1);
            writeBundle((Bundle) obj);
        } else if (obj instanceof String) {
            writeInt(3);
            writeString((String) obj);
        } else if (obj instanceof String[]) {
            writeInt(4);
            t((String[]) obj);
        } else if (obj instanceof Boolean) {
            writeInt(5);
            writeBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof boolean[]) {
            writeInt(6);
            u((boolean[]) obj);
        } else if (obj instanceof Double) {
            writeInt(7);
            writeDouble(((Double) obj).doubleValue());
        } else if (obj instanceof double[]) {
            writeInt(8);
            y((double[]) obj);
        } else if (obj instanceof Integer) {
            writeInt(9);
            writeInt(((Integer) obj).intValue());
        } else if (obj instanceof int[]) {
            writeInt(10);
            A((int[]) obj);
        } else if (obj instanceof Long) {
            writeInt(11);
            writeLong(((Long) obj).longValue());
        } else if (obj instanceof long[]) {
            writeInt(12);
            B((long[]) obj);
        } else if (obj instanceof Float) {
            writeInt(13);
            writeFloat(((Float) obj).floatValue());
        } else if (obj instanceof float[]) {
            writeInt(14);
            z((float[]) obj);
        } else {
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel b() {
        return new VersionedParcelStream(this.f8018v, this.f8019w, this.f8005a, this.f8006b, this.f8007c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        FieldBuffer fieldBuffer = this.f8020x;
        if (fieldBuffer != null) {
            try {
                if (fieldBuffer.f8024a.size() != 0) {
                    this.f8020x.a();
                }
                this.f8020x = null;
            } catch (IOException e4) {
                throw new VersionedParcel.ParcelException(e4);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected CharSequence i() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean isStream() {
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        try {
            return this.f8018v.readBoolean();
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < readInt; i2++) {
            H(readInt(), readString(), bundle);
        }
        return bundle;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        try {
            int readInt = this.f8018v.readInt();
            if (readInt > 0) {
                byte[] bArr = new byte[readInt];
                this.f8018v.readFully(bArr);
                return bArr;
            }
            return null;
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        try {
            return this.f8018v.readDouble();
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i2) {
        while (true) {
            try {
                int i4 = this.A;
                if (i4 == i2) {
                    return true;
                }
                if (String.valueOf(i4).compareTo(String.valueOf(i2)) > 0) {
                    return false;
                }
                int i5 = this.f8022z;
                int i6 = this.B;
                if (i5 < i6) {
                    this.f8016t.skip(i6 - i5);
                }
                this.B = -1;
                int readInt = this.f8016t.readInt();
                this.f8022z = 0;
                int i7 = readInt & 65535;
                if (i7 == 65535) {
                    i7 = this.f8016t.readInt();
                }
                this.A = (readInt >> 16) & 65535;
                this.B = i7;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        try {
            return this.f8018v.readFloat();
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        try {
            return this.f8018v.readInt();
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        try {
            return this.f8018v.readLong();
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        try {
            int readInt = this.f8018v.readInt();
            if (readInt > 0) {
                byte[] bArr = new byte[readInt];
                this.f8018v.readFully(bArr);
                return new String(bArr, C);
            }
            return null;
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i2) {
        closeField();
        FieldBuffer fieldBuffer = new FieldBuffer(i2, this.f8017u);
        this.f8020x = fieldBuffer;
        this.f8019w = fieldBuffer.f8025b;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setSerializationFlags(boolean z3, boolean z4) {
        if (z3) {
            this.f8021y = z4;
            return;
        }
        throw new RuntimeException("Serialization of this object is not allowed");
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected void v(CharSequence charSequence) {
        if (!this.f8021y) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z3) {
        try {
            this.f8019w.writeBoolean(z3);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        try {
            if (bundle != null) {
                Set<String> keySet = bundle.keySet();
                this.f8019w.writeInt(keySet.size());
                for (String str : keySet) {
                    writeString(str);
                    I(bundle.get(str));
                }
                return;
            }
            this.f8019w.writeInt(-1);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        try {
            if (bArr != null) {
                this.f8019w.writeInt(bArr.length);
                this.f8019w.write(bArr);
                return;
            }
            this.f8019w.writeInt(-1);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d4) {
        try {
            this.f8019w.writeDouble(d4);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f4) {
        try {
            this.f8019w.writeFloat(f4);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i2) {
        try {
            this.f8019w.writeInt(i2);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j4) {
        try {
            this.f8019w.writeLong(j4);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        if (!this.f8021y) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(C);
                this.f8019w.writeInt(bytes.length);
                this.f8019w.write(bytes);
                return;
            }
            this.f8019w.writeInt(-1);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        if (!this.f8021y) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        if (!this.f8021y) {
            throw new RuntimeException("Binders cannot be written to an OutputStream");
        }
    }

    private VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.f8022z = 0;
        this.A = -1;
        this.B = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new FilterInputStream(inputStream) { // from class: androidx.versionedparcelable.VersionedParcelStream.1
            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i2 = versionedParcelStream.B;
                if (i2 != -1 && versionedParcelStream.f8022z >= i2) {
                    throw new IOException();
                }
                int read = super.read();
                VersionedParcelStream.this.f8022z++;
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j4) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i2 = versionedParcelStream.B;
                if (i2 != -1 && versionedParcelStream.f8022z >= i2) {
                    throw new IOException();
                }
                long skip = super.skip(j4);
                if (skip > 0) {
                    VersionedParcelStream.this.f8022z += (int) skip;
                }
                return skip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i2, int i4) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i5 = versionedParcelStream.B;
                if (i5 != -1 && versionedParcelStream.f8022z >= i5) {
                    throw new IOException();
                }
                int read = super.read(bArr, i2, i4);
                if (read > 0) {
                    VersionedParcelStream.this.f8022z += read;
                }
                return read;
            }
        }) : null;
        this.f8016t = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.f8017u = dataOutputStream;
        this.f8018v = dataInputStream;
        this.f8019w = dataOutputStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i2, int i4) {
        try {
            if (bArr != null) {
                this.f8019w.writeInt(i4);
                this.f8019w.write(bArr, i2, i4);
                return;
            }
            this.f8019w.writeInt(-1);
        } catch (IOException e4) {
            throw new VersionedParcel.ParcelException(e4);
        }
    }
}
