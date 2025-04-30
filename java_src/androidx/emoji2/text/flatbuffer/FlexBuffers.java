package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import kotlin.UShort;
/* loaded from: classes.dex */
public class FlexBuffers {
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    /* renamed from: a  reason: collision with root package name */
    private static final ReadBuf f5644a = new ArrayReadWriteBuf(new byte[]{0}, 1);

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f5645b = false;

    /* loaded from: classes.dex */
    public static class Blob extends Sized {

        /* renamed from: e  reason: collision with root package name */
        static final Blob f5646e = new Blob(FlexBuffers.f5644a, 1, 1);

        /* renamed from: f  reason: collision with root package name */
        static final /* synthetic */ boolean f5647f = false;

        Blob(ReadBuf readBuf, int i2, int i4) {
            super(readBuf, i2, i4);
        }

        public static Blob empty() {
            return f5646e;
        }

        public ByteBuffer data() {
            ByteBuffer wrap = ByteBuffer.wrap(this.f5651a.data());
            wrap.position(this.f5652b);
            wrap.limit(this.f5652b + size());
            return wrap.asReadOnlyBuffer().slice();
        }

        public byte get(int i2) {
            return this.f5651a.get(this.f5652b + i2);
        }

        public byte[] getBytes() {
            int size = size();
            byte[] bArr = new byte[size];
            for (int i2 = 0; i2 < size; i2++) {
                bArr[i2] = this.f5651a.get(this.f5652b + i2);
            }
            return bArr;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            return this.f5651a.getString(this.f5652b, size());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append('\"');
            sb.append(this.f5651a.getString(this.f5652b, size()));
            sb.append('\"');
            return sb;
        }
    }

    /* loaded from: classes.dex */
    public static class FlexBufferException extends RuntimeException {
        /* JADX INFO: Access modifiers changed from: package-private */
        public FlexBufferException(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static class Key extends Object {

        /* renamed from: d  reason: collision with root package name */
        private static final Key f5648d = new Key(FlexBuffers.f5644a, 0, 0);

        Key(ReadBuf readBuf, int i2, int i4) {
            super(readBuf, i2, i4);
        }

        public static Key empty() {
            return f5648d;
        }

        int b(byte[] bArr) {
            byte b4;
            byte b5;
            int i2 = this.f5652b;
            int i4 = 0;
            do {
                b4 = this.f5651a.get(i2);
                b5 = bArr[i4];
                if (b4 == 0) {
                    return b4 - b5;
                }
                i2++;
                i4++;
                if (i4 == bArr.length) {
                    return b4 - b5;
                }
            } while (b4 == b5);
            return b4 - b5;
        }

        public boolean equals(java.lang.Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                return key.f5652b == this.f5652b && key.f5653c == this.f5653c;
            }
            return false;
        }

        public int hashCode() {
            return this.f5652b ^ this.f5653c;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append(toString());
            return sb;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            int i2 = this.f5652b;
            while (this.f5651a.get(i2) != 0) {
                i2++;
            }
            int i4 = this.f5652b;
            return this.f5651a.getString(i4, i2 - i4);
        }
    }

    /* loaded from: classes.dex */
    public static class KeyVector {

        /* renamed from: a  reason: collision with root package name */
        private final TypedVector f5649a;

        KeyVector(TypedVector typedVector) {
            this.f5649a = typedVector;
        }

        public Key get(int i2) {
            if (i2 >= size()) {
                return Key.f5648d;
            }
            TypedVector typedVector = this.f5649a;
            TypedVector typedVector2 = this.f5649a;
            ReadBuf readBuf = typedVector2.f5651a;
            return new Key(readBuf, FlexBuffers.g(readBuf, typedVector.f5652b + (i2 * typedVector.f5653c), typedVector2.f5653c), 1);
        }

        public int size() {
            return this.f5649a.size();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (int i2 = 0; i2 < this.f5649a.size(); i2++) {
                this.f5649a.get(i2).b(sb);
                if (i2 != this.f5649a.size() - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class Map extends Vector {

        /* renamed from: f  reason: collision with root package name */
        private static final Map f5650f = new Map(FlexBuffers.f5644a, 1, 1);

        Map(ReadBuf readBuf, int i2, int i4) {
            super(readBuf, i2, i4);
        }

        private int a(KeyVector keyVector, byte[] bArr) {
            int size = keyVector.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i4 = (i2 + size) >>> 1;
                int b4 = keyVector.get(i4).b(bArr);
                if (b4 < 0) {
                    i2 = i4 + 1;
                } else if (b4 <= 0) {
                    return i4;
                } else {
                    size = i4 - 1;
                }
            }
            return -(i2 + 1);
        }

        public static Map empty() {
            return f5650f;
        }

        public Reference get(String str) {
            return get(str.getBytes(StandardCharsets.UTF_8));
        }

        public KeyVector keys() {
            int i2 = this.f5652b - (this.f5653c * 3);
            ReadBuf readBuf = this.f5651a;
            int g4 = FlexBuffers.g(readBuf, i2, this.f5653c);
            ReadBuf readBuf2 = this.f5651a;
            int i4 = this.f5653c;
            return new KeyVector(new TypedVector(readBuf, g4, FlexBuffers.l(readBuf2, i2 + i4, i4), 4));
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append("{ ");
            KeyVector keys = keys();
            int size = size();
            Vector values = values();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('\"');
                sb.append(keys.get(i2).toString());
                sb.append("\" : ");
                sb.append(values.get(i2).toString());
                if (i2 != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" }");
            return sb;
        }

        public Vector values() {
            return new Vector(this.f5651a, this.f5652b, this.f5653c);
        }

        public Reference get(byte[] bArr) {
            KeyVector keys = keys();
            int size = keys.size();
            int a4 = a(keys, bArr);
            if (a4 < 0 || a4 >= size) {
                return Reference.f5654f;
            }
            return get(a4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class Object {

        /* renamed from: a  reason: collision with root package name */
        ReadBuf f5651a;

        /* renamed from: b  reason: collision with root package name */
        int f5652b;

        /* renamed from: c  reason: collision with root package name */
        int f5653c;

        Object(ReadBuf readBuf, int i2, int i4) {
            this.f5651a = readBuf;
            this.f5652b = i2;
            this.f5653c = i4;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        public abstract StringBuilder toString(StringBuilder sb);
    }

    /* loaded from: classes.dex */
    public static class Reference {

        /* renamed from: f  reason: collision with root package name */
        private static final Reference f5654f = new Reference(FlexBuffers.f5644a, 0, 1, 0);

        /* renamed from: a  reason: collision with root package name */
        private ReadBuf f5655a;

        /* renamed from: b  reason: collision with root package name */
        private int f5656b;

        /* renamed from: c  reason: collision with root package name */
        private int f5657c;

        /* renamed from: d  reason: collision with root package name */
        private int f5658d;

        /* renamed from: e  reason: collision with root package name */
        private int f5659e;

        Reference(ReadBuf readBuf, int i2, int i4, int i5) {
            this(readBuf, i2, i4, 1 << (i5 & 3), i5 >> 2);
        }

        public Blob asBlob() {
            if (!isBlob() && !isString()) {
                return Blob.empty();
            }
            ReadBuf readBuf = this.f5655a;
            return new Blob(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
        }

        public boolean asBoolean() {
            return isBoolean() ? this.f5655a.get(this.f5656b) != 0 : asUInt() != 0;
        }

        public double asFloat() {
            int i2 = this.f5659e;
            if (i2 == 3) {
                return FlexBuffers.k(this.f5655a, this.f5656b, this.f5657c);
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 5) {
                        return Double.parseDouble(asString());
                    }
                    if (i2 == 6) {
                        ReadBuf readBuf = this.f5655a;
                        return FlexBuffers.l(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
                    } else if (i2 == 7) {
                        ReadBuf readBuf2 = this.f5655a;
                        return FlexBuffers.n(readBuf2, FlexBuffers.g(readBuf2, this.f5656b, this.f5657c), this.f5658d);
                    } else if (i2 == 8) {
                        ReadBuf readBuf3 = this.f5655a;
                        return FlexBuffers.k(readBuf3, FlexBuffers.g(readBuf3, this.f5656b, this.f5657c), this.f5658d);
                    } else if (i2 == 10) {
                        return asVector().size();
                    } else {
                        if (i2 != 26) {
                            return 0.0d;
                        }
                    }
                }
                return FlexBuffers.n(this.f5655a, this.f5656b, this.f5657c);
            }
            return FlexBuffers.l(this.f5655a, this.f5656b, this.f5657c);
        }

        public int asInt() {
            long n4;
            int i2 = this.f5659e;
            if (i2 == 1) {
                return FlexBuffers.l(this.f5655a, this.f5656b, this.f5657c);
            }
            if (i2 == 2) {
                n4 = FlexBuffers.n(this.f5655a, this.f5656b, this.f5657c);
            } else if (i2 == 3) {
                return (int) FlexBuffers.k(this.f5655a, this.f5656b, this.f5657c);
            } else {
                if (i2 == 5) {
                    return Integer.parseInt(asString());
                }
                if (i2 == 6) {
                    ReadBuf readBuf = this.f5655a;
                    return FlexBuffers.l(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
                } else if (i2 != 7) {
                    if (i2 == 8) {
                        ReadBuf readBuf2 = this.f5655a;
                        return (int) FlexBuffers.k(readBuf2, FlexBuffers.g(readBuf2, this.f5656b, this.f5657c), this.f5658d);
                    } else if (i2 != 10) {
                        if (i2 != 26) {
                            return 0;
                        }
                        return FlexBuffers.l(this.f5655a, this.f5656b, this.f5657c);
                    } else {
                        return asVector().size();
                    }
                } else {
                    ReadBuf readBuf3 = this.f5655a;
                    n4 = FlexBuffers.n(readBuf3, FlexBuffers.g(readBuf3, this.f5656b, this.f5657c), this.f5657c);
                }
            }
            return (int) n4;
        }

        public Key asKey() {
            if (isKey()) {
                ReadBuf readBuf = this.f5655a;
                return new Key(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
            }
            return Key.empty();
        }

        public long asLong() {
            int i2 = this.f5659e;
            if (i2 == 1) {
                return FlexBuffers.m(this.f5655a, this.f5656b, this.f5657c);
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 5) {
                        try {
                            return Long.parseLong(asString());
                        } catch (NumberFormatException unused) {
                            return 0L;
                        }
                    } else if (i2 == 6) {
                        ReadBuf readBuf = this.f5655a;
                        return FlexBuffers.m(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
                    } else if (i2 == 7) {
                        ReadBuf readBuf2 = this.f5655a;
                        return FlexBuffers.n(readBuf2, FlexBuffers.g(readBuf2, this.f5656b, this.f5657c), this.f5657c);
                    } else if (i2 == 8) {
                        ReadBuf readBuf3 = this.f5655a;
                        return (long) FlexBuffers.k(readBuf3, FlexBuffers.g(readBuf3, this.f5656b, this.f5657c), this.f5658d);
                    } else if (i2 != 10) {
                        if (i2 != 26) {
                            return 0L;
                        }
                        return FlexBuffers.l(this.f5655a, this.f5656b, this.f5657c);
                    } else {
                        return asVector().size();
                    }
                }
                return (long) FlexBuffers.k(this.f5655a, this.f5656b, this.f5657c);
            }
            return FlexBuffers.n(this.f5655a, this.f5656b, this.f5657c);
        }

        public Map asMap() {
            if (isMap()) {
                ReadBuf readBuf = this.f5655a;
                return new Map(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
            }
            return Map.empty();
        }

        public String asString() {
            if (isString()) {
                int g4 = FlexBuffers.g(this.f5655a, this.f5656b, this.f5657c);
                ReadBuf readBuf = this.f5655a;
                int i2 = this.f5658d;
                return this.f5655a.getString(g4, (int) FlexBuffers.n(readBuf, g4 - i2, i2));
            } else if (isKey()) {
                int g5 = FlexBuffers.g(this.f5655a, this.f5656b, this.f5658d);
                int i4 = g5;
                while (this.f5655a.get(i4) != 0) {
                    i4++;
                }
                return this.f5655a.getString(g5, i4 - g5);
            } else {
                return "";
            }
        }

        public long asUInt() {
            int i2 = this.f5659e;
            if (i2 == 2) {
                return FlexBuffers.n(this.f5655a, this.f5656b, this.f5657c);
            }
            if (i2 != 1) {
                if (i2 != 3) {
                    if (i2 != 10) {
                        if (i2 != 26) {
                            if (i2 != 5) {
                                if (i2 == 6) {
                                    ReadBuf readBuf = this.f5655a;
                                    return FlexBuffers.m(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
                                } else if (i2 == 7) {
                                    ReadBuf readBuf2 = this.f5655a;
                                    return FlexBuffers.n(readBuf2, FlexBuffers.g(readBuf2, this.f5656b, this.f5657c), this.f5658d);
                                } else if (i2 != 8) {
                                    return 0L;
                                } else {
                                    ReadBuf readBuf3 = this.f5655a;
                                    return (long) FlexBuffers.k(readBuf3, FlexBuffers.g(readBuf3, this.f5656b, this.f5657c), this.f5657c);
                                }
                            }
                            return Long.parseLong(asString());
                        }
                        return FlexBuffers.l(this.f5655a, this.f5656b, this.f5657c);
                    }
                    return asVector().size();
                }
                return (long) FlexBuffers.k(this.f5655a, this.f5656b, this.f5657c);
            }
            return FlexBuffers.m(this.f5655a, this.f5656b, this.f5657c);
        }

        public Vector asVector() {
            if (isVector()) {
                ReadBuf readBuf = this.f5655a;
                return new Vector(readBuf, FlexBuffers.g(readBuf, this.f5656b, this.f5657c), this.f5658d);
            }
            int i2 = this.f5659e;
            if (i2 == 15) {
                ReadBuf readBuf2 = this.f5655a;
                return new TypedVector(readBuf2, FlexBuffers.g(readBuf2, this.f5656b, this.f5657c), this.f5658d, 4);
            } else if (FlexBuffers.i(i2)) {
                ReadBuf readBuf3 = this.f5655a;
                return new TypedVector(readBuf3, FlexBuffers.g(readBuf3, this.f5656b, this.f5657c), this.f5658d, FlexBuffers.p(this.f5659e));
            } else {
                return Vector.empty();
            }
        }

        StringBuilder b(StringBuilder sb) {
            int i2 = this.f5659e;
            if (i2 != 36) {
                switch (i2) {
                    case 0:
                        sb.append("null");
                        return sb;
                    case 1:
                    case 6:
                        sb.append(asLong());
                        return sb;
                    case 2:
                    case 7:
                        sb.append(asUInt());
                        return sb;
                    case 3:
                    case 8:
                        sb.append(asFloat());
                        return sb;
                    case 4:
                        Key asKey = asKey();
                        sb.append('\"');
                        StringBuilder key = asKey.toString(sb);
                        key.append('\"');
                        return key;
                    case 5:
                        sb.append('\"');
                        sb.append(asString());
                        sb.append('\"');
                        return sb;
                    case 9:
                        return asMap().toString(sb);
                    case 10:
                        return asVector().toString(sb);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException("not_implemented:" + this.f5659e);
                    case 25:
                        return asBlob().toString(sb);
                    case 26:
                        sb.append(asBoolean());
                        return sb;
                    default:
                        return sb;
                }
            }
            sb.append(asVector());
            return sb;
        }

        public int getType() {
            return this.f5659e;
        }

        public boolean isBlob() {
            return this.f5659e == 25;
        }

        public boolean isBoolean() {
            return this.f5659e == 26;
        }

        public boolean isFloat() {
            int i2 = this.f5659e;
            return i2 == 3 || i2 == 8;
        }

        public boolean isInt() {
            int i2 = this.f5659e;
            return i2 == 1 || i2 == 6;
        }

        public boolean isIntOrUInt() {
            return isInt() || isUInt();
        }

        public boolean isKey() {
            return this.f5659e == 4;
        }

        public boolean isMap() {
            return this.f5659e == 9;
        }

        public boolean isNull() {
            return this.f5659e == 0;
        }

        public boolean isNumeric() {
            return isIntOrUInt() || isFloat();
        }

        public boolean isString() {
            return this.f5659e == 5;
        }

        public boolean isTypedVector() {
            return FlexBuffers.i(this.f5659e);
        }

        public boolean isUInt() {
            int i2 = this.f5659e;
            return i2 == 2 || i2 == 7;
        }

        public boolean isVector() {
            int i2 = this.f5659e;
            return i2 == 10 || i2 == 9;
        }

        public String toString() {
            return b(new StringBuilder(128)).toString();
        }

        Reference(ReadBuf readBuf, int i2, int i4, int i5, int i6) {
            this.f5655a = readBuf;
            this.f5656b = i2;
            this.f5657c = i4;
            this.f5658d = i5;
            this.f5659e = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class Sized extends Object {

        /* renamed from: d  reason: collision with root package name */
        protected final int f5660d;

        Sized(ReadBuf readBuf, int i2, int i4) {
            super(readBuf, i2, i4);
            this.f5660d = FlexBuffers.l(this.f5651a, i2 - i4, i4);
        }

        public int size() {
            return this.f5660d;
        }
    }

    /* loaded from: classes.dex */
    public static class TypedVector extends Vector {

        /* renamed from: g  reason: collision with root package name */
        private static final TypedVector f5661g = new TypedVector(FlexBuffers.f5644a, 1, 1, 1);

        /* renamed from: f  reason: collision with root package name */
        private final int f5662f;

        TypedVector(ReadBuf readBuf, int i2, int i4, int i5) {
            super(readBuf, i2, i4);
            this.f5662f = i5;
        }

        public static TypedVector empty() {
            return f5661g;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference get(int i2) {
            if (i2 >= size()) {
                return Reference.f5654f;
            }
            return new Reference(this.f5651a, this.f5652b + (i2 * this.f5653c), this.f5653c, 1, this.f5662f);
        }

        public int getElemType() {
            return this.f5662f;
        }

        public boolean isEmptyVector() {
            return this == f5661g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Unsigned {
        Unsigned() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int a(byte b4) {
            return b4 & 255;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static long b(int i2) {
            return i2 & 4294967295L;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int c(short s3) {
            return s3 & UShort.MAX_VALUE;
        }
    }

    /* loaded from: classes.dex */
    public static class Vector extends Sized {

        /* renamed from: e  reason: collision with root package name */
        private static final Vector f5663e = new Vector(FlexBuffers.f5644a, 1, 1);

        Vector(ReadBuf readBuf, int i2, int i4) {
            super(readBuf, i2, i4);
        }

        public static Vector empty() {
            return f5663e;
        }

        public Reference get(int i2) {
            long size = size();
            long j4 = i2;
            if (j4 >= size) {
                return Reference.f5654f;
            }
            return new Reference(this.f5651a, this.f5652b + (i2 * this.f5653c), this.f5653c, Unsigned.a(this.f5651a.get((int) (this.f5652b + (size * this.f5653c) + j4))));
        }

        public boolean isEmpty() {
            return this == f5663e;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append("[ ");
            int size = size();
            for (int i2 = 0; i2 < size; i2++) {
                get(i2).b(sb);
                if (i2 != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" ]");
            return sb;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(ReadBuf readBuf, int i2, int i4) {
        return (int) (i2 - n(readBuf, i2, i4));
    }

    @Deprecated
    public static Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(int i2) {
        return i2 <= 3 || i2 == 26;
    }

    static boolean i(int i2) {
        return (i2 >= 11 && i2 <= 15) || i2 == 36;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(int i2) {
        return (i2 >= 1 && i2 <= 4) || i2 == 26;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double k(ReadBuf readBuf, int i2, int i4) {
        if (i4 != 4) {
            if (i4 != 8) {
                return -1.0d;
            }
            return readBuf.getDouble(i2);
        }
        return readBuf.getFloat(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(ReadBuf readBuf, int i2, int i4) {
        return (int) m(readBuf, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long m(ReadBuf readBuf, int i2, int i4) {
        int i5;
        if (i4 == 1) {
            i5 = readBuf.get(i2);
        } else if (i4 == 2) {
            i5 = readBuf.getShort(i2);
        } else if (i4 != 4) {
            if (i4 != 8) {
                return -1L;
            }
            return readBuf.getLong(i2);
        } else {
            i5 = readBuf.getInt(i2);
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long n(ReadBuf readBuf, int i2, int i4) {
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 4) {
                    if (i4 != 8) {
                        return -1L;
                    }
                    return readBuf.getLong(i2);
                }
                return Unsigned.b(readBuf.getInt(i2));
            }
            return Unsigned.c(readBuf.getShort(i2));
        }
        return Unsigned.a(readBuf.get(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i2, int i4) {
        if (i4 != 0) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return 0;
                    }
                    return (i2 - 1) + 22;
                }
                return (i2 - 1) + 19;
            }
            return (i2 - 1) + 16;
        }
        return (i2 - 1) + 11;
    }

    static int p(int i2) {
        return (i2 - 11) + 1;
    }

    public static Reference getRoot(ReadBuf readBuf) {
        int limit = readBuf.limit() - 1;
        byte b4 = readBuf.get(limit);
        int i2 = limit - 1;
        return new Reference(readBuf, i2 - b4, b4, Unsigned.a(readBuf.get(i2)));
    }
}
