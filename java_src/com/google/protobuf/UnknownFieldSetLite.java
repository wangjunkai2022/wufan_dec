package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class UnknownFieldSetLite {
    private static final UnknownFieldSetLite DEFAULT_INSTANCE = new UnknownFieldSetLite(0, new int[0], new Object[0], false);
    private static final int MIN_CAPACITY = 8;
    private int count;
    private boolean isMutable;
    private int memoizedSerializedSize;
    private Object[] objects;
    private int[] tags;

    private UnknownFieldSetLite() {
        this(0, new int[8], new Object[8], true);
    }

    private void ensureCapacity() {
        int i2 = this.count;
        int[] iArr = this.tags;
        if (i2 == iArr.length) {
            int i4 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.tags = Arrays.copyOf(iArr, i4);
            this.objects = Arrays.copyOf(this.objects, i4);
        }
    }

    public static UnknownFieldSetLite getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private UnknownFieldSetLite mergeFrom(CodedInputStream codedInputStream) throws IOException {
        int readTag;
        do {
            readTag = codedInputStream.readTag();
            if (readTag == 0) {
                break;
            }
        } while (mergeFieldFrom(readTag, codedInputStream));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UnknownFieldSetLite mutableCopyOf(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
        int i2 = unknownFieldSetLite.count + unknownFieldSetLite2.count;
        int[] copyOf = Arrays.copyOf(unknownFieldSetLite.tags, i2);
        System.arraycopy(unknownFieldSetLite2.tags, 0, copyOf, unknownFieldSetLite.count, unknownFieldSetLite2.count);
        Object[] copyOf2 = Arrays.copyOf(unknownFieldSetLite.objects, i2);
        System.arraycopy(unknownFieldSetLite2.objects, 0, copyOf2, unknownFieldSetLite.count, unknownFieldSetLite2.count);
        return new UnknownFieldSetLite(i2, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UnknownFieldSetLite newInstance() {
        return new UnknownFieldSetLite();
    }

    private void storeField(int i2, Object obj) {
        ensureCapacity();
        int[] iArr = this.tags;
        int i4 = this.count;
        iArr[i4] = i2;
        this.objects[i4] = obj;
        this.count = i4 + 1;
    }

    void checkMutable() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof UnknownFieldSetLite)) {
            UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
            return this.count == unknownFieldSetLite.count && Arrays.equals(this.tags, unknownFieldSetLite.tags) && Arrays.deepEquals(this.objects, unknownFieldSetLite.objects);
        }
        return false;
    }

    public int getSerializedSize() {
        int computeUInt64Size;
        int i2 = this.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.count; i5++) {
            int i6 = this.tags[i5];
            int tagFieldNumber = WireFormat.getTagFieldNumber(i6);
            int tagWireType = WireFormat.getTagWireType(i6);
            if (tagWireType == 0) {
                computeUInt64Size = CodedOutputStream.computeUInt64Size(tagFieldNumber, ((Long) this.objects[i5]).longValue());
            } else if (tagWireType == 1) {
                computeUInt64Size = CodedOutputStream.computeFixed64Size(tagFieldNumber, ((Long) this.objects[i5]).longValue());
            } else if (tagWireType == 2) {
                computeUInt64Size = CodedOutputStream.computeBytesSize(tagFieldNumber, (ByteString) this.objects[i5]);
            } else if (tagWireType == 3) {
                computeUInt64Size = (CodedOutputStream.computeTagSize(tagFieldNumber) * 2) + ((UnknownFieldSetLite) this.objects[i5]).getSerializedSize();
            } else if (tagWireType == 5) {
                computeUInt64Size = CodedOutputStream.computeFixed32Size(tagFieldNumber, ((Integer) this.objects[i5]).intValue());
            } else {
                throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
            }
            i4 += computeUInt64Size;
        }
        this.memoizedSerializedSize = i4;
        return i4;
    }

    public int hashCode() {
        return ((((527 + this.count) * 31) + Arrays.hashCode(this.tags)) * 31) + Arrays.deepHashCode(this.objects);
    }

    public void makeImmutable() {
        this.isMutable = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean mergeFieldFrom(int i2, CodedInputStream codedInputStream) throws IOException {
        checkMutable();
        int tagFieldNumber = WireFormat.getTagFieldNumber(i2);
        int tagWireType = WireFormat.getTagWireType(i2);
        if (tagWireType == 0) {
            storeField(i2, Long.valueOf(codedInputStream.readInt64()));
            return true;
        } else if (tagWireType == 1) {
            storeField(i2, Long.valueOf(codedInputStream.readFixed64()));
            return true;
        } else if (tagWireType == 2) {
            storeField(i2, codedInputStream.readBytes());
            return true;
        } else if (tagWireType == 3) {
            UnknownFieldSetLite unknownFieldSetLite = new UnknownFieldSetLite();
            unknownFieldSetLite.mergeFrom(codedInputStream);
            codedInputStream.checkLastTagWas(WireFormat.makeTag(tagFieldNumber, 4));
            storeField(i2, unknownFieldSetLite);
            return true;
        } else if (tagWireType != 4) {
            if (tagWireType == 5) {
                storeField(i2, Integer.valueOf(codedInputStream.readFixed32()));
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnknownFieldSetLite mergeLengthDelimitedField(int i2, ByteString byteString) {
        checkMutable();
        if (i2 != 0) {
            storeField(WireFormat.makeTag(i2, 2), byteString);
            return this;
        }
        throw new IllegalArgumentException("Zero is not a valid field number.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnknownFieldSetLite mergeVarintField(int i2, int i4) {
        checkMutable();
        if (i2 != 0) {
            storeField(WireFormat.makeTag(i2, 0), Long.valueOf(i4));
            return this;
        }
        throw new IllegalArgumentException("Zero is not a valid field number.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void printWithIndent(StringBuilder sb, int i2) {
        for (int i4 = 0; i4 < this.count; i4++) {
            MessageLiteToString.printField(sb, i2, String.valueOf(WireFormat.getTagFieldNumber(this.tags[i4])), this.objects[i4]);
        }
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i2 = 0; i2 < this.count; i2++) {
            int i4 = this.tags[i2];
            int tagFieldNumber = WireFormat.getTagFieldNumber(i4);
            int tagWireType = WireFormat.getTagWireType(i4);
            if (tagWireType == 0) {
                codedOutputStream.writeUInt64(tagFieldNumber, ((Long) this.objects[i2]).longValue());
            } else if (tagWireType == 1) {
                codedOutputStream.writeFixed64(tagFieldNumber, ((Long) this.objects[i2]).longValue());
            } else if (tagWireType == 2) {
                codedOutputStream.writeBytes(tagFieldNumber, (ByteString) this.objects[i2]);
            } else if (tagWireType == 3) {
                codedOutputStream.writeTag(tagFieldNumber, 3);
                ((UnknownFieldSetLite) this.objects[i2]).writeTo(codedOutputStream);
                codedOutputStream.writeTag(tagFieldNumber, 4);
            } else if (tagWireType == 5) {
                codedOutputStream.writeFixed32(tagFieldNumber, ((Integer) this.objects[i2]).intValue());
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    private UnknownFieldSetLite(int i2, int[] iArr, Object[] objArr, boolean z3) {
        this.memoizedSerializedSize = -1;
        this.count = i2;
        this.tags = iArr;
        this.objects = objArr;
        this.isMutable = z3;
    }
}
