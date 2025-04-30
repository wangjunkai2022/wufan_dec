package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public abstract class VersionedParcel {

    /* renamed from: d  reason: collision with root package name */
    private static final String f7989d = "VersionedParcel";

    /* renamed from: e  reason: collision with root package name */
    private static final int f7990e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f7991f = -2;

    /* renamed from: g  reason: collision with root package name */
    private static final int f7992g = -3;

    /* renamed from: h  reason: collision with root package name */
    private static final int f7993h = -4;

    /* renamed from: i  reason: collision with root package name */
    private static final int f7994i = -5;

    /* renamed from: j  reason: collision with root package name */
    private static final int f7995j = -6;

    /* renamed from: k  reason: collision with root package name */
    private static final int f7996k = -7;

    /* renamed from: l  reason: collision with root package name */
    private static final int f7997l = -9;

    /* renamed from: m  reason: collision with root package name */
    private static final int f7998m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f7999n = 2;

    /* renamed from: o  reason: collision with root package name */
    private static final int f8000o = 3;

    /* renamed from: p  reason: collision with root package name */
    private static final int f8001p = 4;

    /* renamed from: q  reason: collision with root package name */
    private static final int f8002q = 5;

    /* renamed from: r  reason: collision with root package name */
    private static final int f8003r = 7;

    /* renamed from: s  reason: collision with root package name */
    private static final int f8004s = 8;

    /* renamed from: a  reason: collision with root package name */
    protected final ArrayMap<String, Method> f8005a;

    /* renamed from: b  reason: collision with root package name */
    protected final ArrayMap<String, Method> f8006b;

    /* renamed from: c  reason: collision with root package name */
    protected final ArrayMap<String, Class> f8007c;

    /* loaded from: classes2.dex */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.f8005a = arrayMap;
        this.f8006b = arrayMap2;
        this.f8007c = arrayMap3;
    }

    private void D(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e4) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void G(VersionedParcelable versionedParcelable) {
        try {
            writeString(c(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e4);
        }
    }

    private Exception a(int i2, String str) {
        switch (i2) {
            case -9:
                return (Exception) readParcelable();
            case -8:
            default:
                return new RuntimeException("Unknown exception code: " + i2 + " msg " + str);
            case -7:
                return new UnsupportedOperationException(str);
            case -6:
                return new NetworkOnMainThreadException();
            case -5:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    private Class c(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.f8007c.get(cls.getName());
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f8007c.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    private Method d(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f8005a.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f8005a.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    @NonNull
    protected static Throwable e(@NonNull Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    private Method f(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f8006b.get(cls.getName());
        if (method == null) {
            Class c4 = c(cls);
            System.currentTimeMillis();
            Method declaredMethod = c4.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f8006b.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    private <T> int getType(T t3) {
        if (t3 instanceof String) {
            return 4;
        }
        if (t3 instanceof Parcelable) {
            return 2;
        }
        if (t3 instanceof VersionedParcelable) {
            return 1;
        }
        if (t3 instanceof Serializable) {
            return 3;
        }
        if (t3 instanceof IBinder) {
            return 5;
        }
        if (t3 instanceof Integer) {
            return 7;
        }
        if (t3 instanceof Float) {
            return 8;
        }
        throw new IllegalArgumentException(t3.getClass().getName() + " cannot be VersionedParcelled");
    }

    private <T, S extends Collection<T>> S j(S s3) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        if (readInt != 0) {
            int readInt2 = readInt();
            if (readInt < 0) {
                return null;
            }
            if (readInt2 == 1) {
                while (readInt > 0) {
                    s3.add(s());
                    readInt--;
                }
            } else if (readInt2 == 2) {
                while (readInt > 0) {
                    s3.add(readParcelable());
                    readInt--;
                }
            } else if (readInt2 == 3) {
                while (readInt > 0) {
                    s3.add(r());
                    readInt--;
                }
            } else if (readInt2 == 4) {
                while (readInt > 0) {
                    s3.add(readString());
                    readInt--;
                }
            } else if (readInt2 == 5) {
                while (readInt > 0) {
                    s3.add(readStrongBinder());
                    readInt--;
                }
            }
        }
        return s3;
    }

    private Exception l(int i2, String str) {
        return a(i2, str);
    }

    private int m() {
        return readInt();
    }

    private <T> void w(Collection<T> collection) {
        if (collection == null) {
            writeInt(-1);
            return;
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    for (T t3 : collection) {
                        F(t3);
                    }
                    return;
                case 2:
                    for (T t4 : collection) {
                        writeParcelable(t4);
                    }
                    return;
                case 3:
                    for (T t5 : collection) {
                        D(t5);
                    }
                    return;
                case 4:
                    for (T t6 : collection) {
                        writeString(t6);
                    }
                    return;
                case 5:
                    for (T t7 : collection) {
                        writeStrongBinder(t7);
                    }
                    return;
                case 6:
                default:
                    return;
                case 7:
                    for (T t8 : collection) {
                        writeInt(t8.intValue());
                    }
                    return;
                case 8:
                    for (T t9 : collection) {
                        writeFloat(t9.floatValue());
                    }
                    return;
            }
        }
    }

    private <T> void x(Collection<T> collection, int i2) {
        setOutputField(i2);
        w(collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void A(int[] iArr) {
        if (iArr != null) {
            writeInt(iArr.length);
            for (int i2 : iArr) {
                writeInt(i2);
            }
            return;
        }
        writeInt(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B(long[] jArr) {
        if (jArr != null) {
            writeInt(jArr.length);
            for (long j4 : jArr) {
                writeLong(j4);
            }
            return;
        }
        writeInt(-1);
    }

    protected void C() {
        writeInt(0);
    }

    protected <T extends VersionedParcelable> void E(T t3, VersionedParcel versionedParcel) {
        try {
            f(t3.getClass()).invoke(null, t3, versionedParcel);
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e4);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e5);
        } catch (NoSuchMethodException e6) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e6);
        } catch (InvocationTargetException e7) {
            if (e7.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e7.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e7);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        G(versionedParcelable);
        VersionedParcel b4 = b();
        E(versionedParcelable, b4);
        b4.closeField();
    }

    protected abstract VersionedParcel b();

    protected abstract void closeField();

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T[] g(T[] tArr) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(readInt);
        if (readInt != 0) {
            int readInt2 = readInt();
            if (readInt < 0) {
                return null;
            }
            if (readInt2 == 1) {
                while (readInt > 0) {
                    arrayList.add(s());
                    readInt--;
                }
            } else if (readInt2 == 2) {
                while (readInt > 0) {
                    arrayList.add(readParcelable());
                    readInt--;
                }
            } else if (readInt2 == 3) {
                while (readInt > 0) {
                    arrayList.add(r());
                    readInt--;
                }
            } else if (readInt2 == 4) {
                while (readInt > 0) {
                    arrayList.add(readString());
                    readInt--;
                }
            } else if (readInt2 == 5) {
                while (readInt > 0) {
                    arrayList.add(readStrongBinder());
                    readInt--;
                }
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean[] h() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        boolean[] zArr = new boolean[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            zArr[i2] = readInt() != 0;
        }
        return zArr;
    }

    protected abstract CharSequence i();

    public boolean isStream() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double[] k() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        double[] dArr = new double[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            dArr[i2] = readDouble();
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float[] n() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            fArr[i2] = readFloat();
        }
        return fArr;
    }

    protected <T extends VersionedParcelable> T o(String str, VersionedParcel versionedParcel) {
        try {
            return (T) d(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e4);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e5);
        } catch (NoSuchMethodException e6) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e6);
        } catch (InvocationTargetException e7) {
            if (e7.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e7.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e7);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] p() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        int[] iArr = new int[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            iArr[i2] = readInt();
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long[] q() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        long[] jArr = new long[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            jArr[i2] = readLong();
        }
        return jArr;
    }

    protected Serializable r() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(readByteArray())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e4) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + readString + ")", e4);
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + readString + ")", e5);
        }
    }

    public <T> T[] readArray(T[] tArr, int i2) {
        return !readField(i2) ? tArr : (T[]) g(tArr);
    }

    protected abstract boolean readBoolean();

    public boolean readBoolean(boolean z3, int i2) {
        return !readField(i2) ? z3 : readBoolean();
    }

    public boolean[] readBooleanArray(boolean[] zArr, int i2) {
        return !readField(i2) ? zArr : h();
    }

    protected abstract Bundle readBundle();

    public Bundle readBundle(Bundle bundle, int i2) {
        return !readField(i2) ? bundle : readBundle();
    }

    public byte readByte(byte b4, int i2) {
        return !readField(i2) ? b4 : (byte) (readInt() & 255);
    }

    protected abstract byte[] readByteArray();

    public byte[] readByteArray(byte[] bArr, int i2) {
        return !readField(i2) ? bArr : readByteArray();
    }

    public char[] readCharArray(char[] cArr, int i2) {
        if (readField(i2)) {
            int readInt = readInt();
            if (readInt < 0) {
                return null;
            }
            char[] cArr2 = new char[readInt];
            for (int i4 = 0; i4 < readInt; i4++) {
                cArr2[i4] = (char) readInt();
            }
            return cArr2;
        }
        return cArr;
    }

    public CharSequence readCharSequence(CharSequence charSequence, int i2) {
        return !readField(i2) ? charSequence : i();
    }

    protected abstract double readDouble();

    public double readDouble(double d4, int i2) {
        return !readField(i2) ? d4 : readDouble();
    }

    public double[] readDoubleArray(double[] dArr, int i2) {
        return !readField(i2) ? dArr : k();
    }

    public Exception readException(Exception exc, int i2) {
        int m4;
        return (readField(i2) && (m4 = m()) != 0) ? l(m4, readString()) : exc;
    }

    protected abstract boolean readField(int i2);

    protected abstract float readFloat();

    public float readFloat(float f4, int i2) {
        return !readField(i2) ? f4 : readFloat();
    }

    public float[] readFloatArray(float[] fArr, int i2) {
        return !readField(i2) ? fArr : n();
    }

    protected abstract int readInt();

    public int readInt(int i2, int i4) {
        return !readField(i4) ? i2 : readInt();
    }

    public int[] readIntArray(int[] iArr, int i2) {
        return !readField(i2) ? iArr : p();
    }

    public <T> List<T> readList(List<T> list, int i2) {
        return !readField(i2) ? list : (List) j(new ArrayList());
    }

    protected abstract long readLong();

    public long readLong(long j4, int i2) {
        return !readField(i2) ? j4 : readLong();
    }

    public long[] readLongArray(long[] jArr, int i2) {
        return !readField(i2) ? jArr : q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> Map<K, V> readMap(Map<K, V> map, int i2) {
        if (readField(i2)) {
            int readInt = readInt();
            if (readInt < 0) {
                return null;
            }
            ArrayMap arrayMap = new ArrayMap();
            if (readInt == 0) {
                return arrayMap;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            j(arrayList);
            j(arrayList2);
            for (int i4 = 0; i4 < readInt; i4++) {
                arrayMap.put(arrayList.get(i4), arrayList2.get(i4));
            }
            return arrayMap;
        }
        return map;
    }

    protected abstract <T extends Parcelable> T readParcelable();

    public <T extends Parcelable> T readParcelable(T t3, int i2) {
        return !readField(i2) ? t3 : (T) readParcelable();
    }

    public <T> Set<T> readSet(Set<T> set, int i2) {
        return !readField(i2) ? set : (Set) j(new ArraySet());
    }

    @RequiresApi(api = 21)
    public Size readSize(Size size, int i2) {
        if (readField(i2)) {
            if (readBoolean()) {
                return new Size(readInt(), readInt());
            }
            return null;
        }
        return size;
    }

    @RequiresApi(api = 21)
    public SizeF readSizeF(SizeF sizeF, int i2) {
        if (readField(i2)) {
            if (readBoolean()) {
                return new SizeF(readFloat(), readFloat());
            }
            return null;
        }
        return sizeF;
    }

    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i2) {
        if (readField(i2)) {
            int readInt = readInt();
            if (readInt < 0) {
                return null;
            }
            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(readInt);
            for (int i4 = 0; i4 < readInt; i4++) {
                sparseBooleanArray2.put(readInt(), readBoolean());
            }
            return sparseBooleanArray2;
        }
        return sparseBooleanArray;
    }

    protected abstract String readString();

    public String readString(String str, int i2) {
        return !readField(i2) ? str : readString();
    }

    protected abstract IBinder readStrongBinder();

    public IBinder readStrongBinder(IBinder iBinder, int i2) {
        return !readField(i2) ? iBinder : readStrongBinder();
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t3, int i2) {
        return !readField(i2) ? t3 : (T) s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends VersionedParcelable> T s() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        return (T) o(readString, b());
    }

    protected abstract void setOutputField(int i2);

    public void setSerializationFlags(boolean z3, boolean z4) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> void t(T[] tArr) {
        if (tArr == null) {
            writeInt(-1);
            return;
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int i2 = 0;
            int type = getType(tArr[0]);
            writeInt(type);
            if (type == 1) {
                while (i2 < length) {
                    F((VersionedParcelable) tArr[i2]);
                    i2++;
                }
            } else if (type == 2) {
                while (i2 < length) {
                    writeParcelable((Parcelable) tArr[i2]);
                    i2++;
                }
            } else if (type == 3) {
                while (i2 < length) {
                    D((Serializable) tArr[i2]);
                    i2++;
                }
            } else if (type == 4) {
                while (i2 < length) {
                    writeString((String) tArr[i2]);
                    i2++;
                }
            } else if (type != 5) {
            } else {
                while (i2 < length) {
                    writeStrongBinder((IBinder) tArr[i2]);
                    i2++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u(boolean[] zArr) {
        if (zArr != null) {
            writeInt(zArr.length);
            for (boolean z3 : zArr) {
                writeInt(z3 ? 1 : 0);
            }
            return;
        }
        writeInt(-1);
    }

    protected abstract void v(CharSequence charSequence);

    public <T> void writeArray(T[] tArr, int i2) {
        setOutputField(i2);
        t(tArr);
    }

    protected abstract void writeBoolean(boolean z3);

    public void writeBoolean(boolean z3, int i2) {
        setOutputField(i2);
        writeBoolean(z3);
    }

    public void writeBooleanArray(boolean[] zArr, int i2) {
        setOutputField(i2);
        u(zArr);
    }

    protected abstract void writeBundle(Bundle bundle);

    public void writeBundle(Bundle bundle, int i2) {
        setOutputField(i2);
        writeBundle(bundle);
    }

    public void writeByte(byte b4, int i2) {
        setOutputField(i2);
        writeInt(b4);
    }

    protected abstract void writeByteArray(byte[] bArr);

    public void writeByteArray(byte[] bArr, int i2) {
        setOutputField(i2);
        writeByteArray(bArr);
    }

    protected abstract void writeByteArray(byte[] bArr, int i2, int i4);

    public void writeCharArray(char[] cArr, int i2) {
        setOutputField(i2);
        if (cArr != null) {
            writeInt(cArr.length);
            for (char c4 : cArr) {
                writeInt(c4);
            }
            return;
        }
        writeInt(-1);
    }

    public void writeCharSequence(CharSequence charSequence, int i2) {
        setOutputField(i2);
        v(charSequence);
    }

    protected abstract void writeDouble(double d4);

    public void writeDouble(double d4, int i2) {
        setOutputField(i2);
        writeDouble(d4);
    }

    public void writeDoubleArray(double[] dArr, int i2) {
        setOutputField(i2);
        y(dArr);
    }

    public void writeException(Exception exc, int i2) {
        setOutputField(i2);
        if (exc == null) {
            C();
            return;
        }
        int i4 = 0;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i4 = -9;
        } else if (exc instanceof SecurityException) {
            i4 = -1;
        } else if (exc instanceof BadParcelableException) {
            i4 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i4 = -3;
        } else if (exc instanceof NullPointerException) {
            i4 = -4;
        } else if (exc instanceof IllegalStateException) {
            i4 = -5;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i4 = -6;
        } else if (exc instanceof UnsupportedOperationException) {
            i4 = -7;
        }
        writeInt(i4);
        if (i4 == 0) {
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            throw new RuntimeException(exc);
        }
        writeString(exc.getMessage());
        if (i4 != -9) {
            return;
        }
        writeParcelable((Parcelable) exc);
    }

    protected abstract void writeFloat(float f4);

    public void writeFloat(float f4, int i2) {
        setOutputField(i2);
        writeFloat(f4);
    }

    public void writeFloatArray(float[] fArr, int i2) {
        setOutputField(i2);
        z(fArr);
    }

    protected abstract void writeInt(int i2);

    public void writeInt(int i2, int i4) {
        setOutputField(i4);
        writeInt(i2);
    }

    public void writeIntArray(int[] iArr, int i2) {
        setOutputField(i2);
        A(iArr);
    }

    public <T> void writeList(List<T> list, int i2) {
        x(list, i2);
    }

    protected abstract void writeLong(long j4);

    public void writeLong(long j4, int i2) {
        setOutputField(i2);
        writeLong(j4);
    }

    public void writeLongArray(long[] jArr, int i2) {
        setOutputField(i2);
        B(jArr);
    }

    public <K, V> void writeMap(Map<K, V> map, int i2) {
        setOutputField(i2);
        if (map == null) {
            writeInt(-1);
            return;
        }
        int size = map.size();
        writeInt(size);
        if (size == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        w(arrayList);
        w(arrayList2);
    }

    protected abstract void writeParcelable(Parcelable parcelable);

    public void writeParcelable(Parcelable parcelable, int i2) {
        setOutputField(i2);
        writeParcelable(parcelable);
    }

    public void writeSerializable(Serializable serializable, int i2) {
        setOutputField(i2);
        D(serializable);
    }

    public <T> void writeSet(Set<T> set, int i2) {
        x(set, i2);
    }

    @RequiresApi(api = 21)
    public void writeSize(Size size, int i2) {
        setOutputField(i2);
        writeBoolean(size != null);
        if (size != null) {
            writeInt(size.getWidth());
            writeInt(size.getHeight());
        }
    }

    @RequiresApi(api = 21)
    public void writeSizeF(SizeF sizeF, int i2) {
        setOutputField(i2);
        writeBoolean(sizeF != null);
        if (sizeF != null) {
            writeFloat(sizeF.getWidth());
            writeFloat(sizeF.getHeight());
        }
    }

    public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i2) {
        setOutputField(i2);
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int i4 = 0; i4 < size; i4++) {
            writeInt(sparseBooleanArray.keyAt(i4));
            writeBoolean(sparseBooleanArray.valueAt(i4));
        }
    }

    protected abstract void writeString(String str);

    public void writeString(String str, int i2) {
        setOutputField(i2);
        writeString(str);
    }

    protected abstract void writeStrongBinder(IBinder iBinder);

    public void writeStrongBinder(IBinder iBinder, int i2) {
        setOutputField(i2);
        writeStrongBinder(iBinder);
    }

    protected abstract void writeStrongInterface(IInterface iInterface);

    public void writeStrongInterface(IInterface iInterface, int i2) {
        setOutputField(i2);
        writeStrongInterface(iInterface);
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int i2) {
        setOutputField(i2);
        F(versionedParcelable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y(double[] dArr) {
        if (dArr != null) {
            writeInt(dArr.length);
            for (double d4 : dArr) {
                writeDouble(d4);
            }
            return;
        }
        writeInt(-1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z(float[] fArr) {
        if (fArr != null) {
            writeInt(fArr.length);
            for (float f4 : fArr) {
                writeFloat(f4);
            }
            return;
        }
        writeInt(-1);
    }

    public void writeByteArray(byte[] bArr, int i2, int i4, int i5) {
        setOutputField(i5);
        writeByteArray(bArr, i2, i4);
    }
}
