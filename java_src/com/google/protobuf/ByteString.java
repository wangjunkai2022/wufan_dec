package com.google.protobuf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new LiteralByteString(Internal.EMPTY_BYTE_ARRAY);
    static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    static final int MIN_READ_FROM_CHUNK_SIZE = 256;
    private static final ByteArrayCopier byteArrayCopier;
    private int hash = 0;

    /* loaded from: classes2.dex */
    private static final class ArraysByteArrayCopier implements ByteArrayCopier {
        private ArraysByteArrayCopier() {
        }

        @Override // com.google.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i2, int i4) {
            return Arrays.copyOfRange(bArr, i2, i4 + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        BoundedByteString(byte[] bArr, int i2, int i4) {
            super(bArr);
            ByteString.checkRange(i2, i2 + i4, bArr.length);
            this.bytesOffset = i2;
            this.bytesLength = i4;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public byte byteAt(int i2) {
            ByteString.checkIndex(i2, size());
            return this.bytes[this.bytesOffset + i2];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        protected void copyToInternal(byte[] bArr, int i2, int i4, int i5) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + i2, bArr, i4, i5);
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString
        protected int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface ByteArrayCopier {
        byte[] copyFrom(byte[] bArr, int i2, int i4);
    }

    /* loaded from: classes2.dex */
    public interface ByteIterator extends Iterator<Byte> {
        byte nextByte();
    }

    /* loaded from: classes2.dex */
    static final class CodedBuilder {
        private final byte[] buffer;
        private final CodedOutputStream output;

        public ByteString build() {
            this.output.checkNoSpaceLeft();
            return new LiteralByteString(this.buffer);
        }

        public CodedOutputStream getCodedOutput() {
            return this.output;
        }

        private CodedBuilder(int i2) {
            byte[] bArr = new byte[i2];
            this.buffer = bArr;
            this.output = CodedOutputStream.newInstance(bArr);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class LeafByteString extends ByteString {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean equalsRange(ByteString byteString, int i2, int i4);

        @Override // com.google.protobuf.ByteString
        protected final int getTreeDepth() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        protected final boolean isBalanced() {
            return true;
        }

        @Override // com.google.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        protected final byte[] bytes;

        LiteralByteString(byte[] bArr) {
            this.bytes = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
        }

        @Override // com.google.protobuf.ByteString
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override // com.google.protobuf.ByteString
        public byte byteAt(int i2) {
            return this.bytes[i2];
        }

        @Override // com.google.protobuf.ByteString
        public final void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        protected void copyToInternal(byte[] bArr, int i2, int i4, int i5) {
            System.arraycopy(this.bytes, i2, bArr, i4, i5);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if ((obj instanceof ByteString) && size() == ((ByteString) obj).size()) {
                if (size() == 0) {
                    return true;
                }
                if (obj instanceof LiteralByteString) {
                    LiteralByteString literalByteString = (LiteralByteString) obj;
                    int peekCachedHashCode = peekCachedHashCode();
                    int peekCachedHashCode2 = literalByteString.peekCachedHashCode();
                    if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
                        return equalsRange(literalByteString, 0, size());
                    }
                    return false;
                }
                return obj.equals(this);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.ByteString.LeafByteString
        public final boolean equalsRange(ByteString byteString, int i2, int i4) {
            if (i4 <= byteString.size()) {
                int i5 = i2 + i4;
                if (i5 <= byteString.size()) {
                    if (byteString instanceof LiteralByteString) {
                        LiteralByteString literalByteString = (LiteralByteString) byteString;
                        byte[] bArr = this.bytes;
                        byte[] bArr2 = literalByteString.bytes;
                        int offsetIntoBytes = getOffsetIntoBytes() + i4;
                        int offsetIntoBytes2 = getOffsetIntoBytes();
                        int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i2;
                        while (offsetIntoBytes2 < offsetIntoBytes) {
                            if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                                return false;
                            }
                            offsetIntoBytes2++;
                            offsetIntoBytes3++;
                        }
                        return true;
                    }
                    return byteString.substring(i2, i5).equals(substring(0, i4));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i2 + ", " + i4 + ", " + byteString.size());
            }
            throw new IllegalArgumentException("Length too large: " + i4 + size());
        }

        protected int getOffsetIntoBytes() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return Utf8.isValidUtf8(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public final CodedInputStream newCodedInput() {
            return CodedInputStream.newInstance(this.bytes, getOffsetIntoBytes(), size(), true);
        }

        @Override // com.google.protobuf.ByteString
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        protected final int partialHash(int i2, int i4, int i5) {
            return Internal.partialHash(i2, this.bytes, getOffsetIntoBytes() + i4, i5);
        }

        @Override // com.google.protobuf.ByteString
        protected final int partialIsValidUtf8(int i2, int i4, int i5) {
            int offsetIntoBytes = getOffsetIntoBytes() + i4;
            return Utf8.partialIsValidUtf8(i2, this.bytes, offsetIntoBytes, i5 + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString substring(int i2, int i4) {
            int checkRange = ByteString.checkRange(i2, i4, size());
            if (checkRange == 0) {
                return ByteString.EMPTY;
            }
            return new BoundedByteString(this.bytes, getOffsetIntoBytes() + i2, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        protected final String toStringInternal(Charset charset) {
            return new String(this.bytes, getOffsetIntoBytes(), size(), charset);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override // com.google.protobuf.ByteString
        final void writeToInternal(OutputStream outputStream, int i2, int i4) throws IOException {
            outputStream.write(this.bytes, getOffsetIntoBytes() + i2, i4);
        }

        @Override // com.google.protobuf.ByteString
        final void writeTo(ByteOutput byteOutput) throws IOException {
            byteOutput.writeLazy(this.bytes, getOffsetIntoBytes(), size());
        }
    }

    /* loaded from: classes2.dex */
    private static final class SystemByteArrayCopier implements ByteArrayCopier {
        private SystemByteArrayCopier() {
        }

        @Override // com.google.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i2, int i4) {
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i2, bArr2, 0, i4);
            return bArr2;
        }
    }

    static {
        boolean z3 = true;
        try {
            Class.forName("android.content.Context");
        } catch (ClassNotFoundException unused) {
            z3 = false;
        }
        byteArrayCopier = z3 ? new SystemByteArrayCopier() : new ArraysByteArrayCopier();
    }

    private static ByteString balancedConcat(Iterator<ByteString> it2, int i2) {
        if (i2 == 1) {
            return it2.next();
        }
        int i4 = i2 >>> 1;
        return balancedConcat(it2, i4).concat(balancedConcat(it2, i2 - i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkIndex(int i2, int i4) {
        if (((i4 - (i2 + 1)) | i2) < 0) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i2);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i2 + ", " + i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int checkRange(int i2, int i4, int i5) {
        int i6 = i4 - i2;
        if ((i2 | i4 | i6 | (i5 - i4)) < 0) {
            if (i2 < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i2 + " < 0");
            } else if (i4 < i2) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i2 + ", " + i4);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i4 + " >= " + i5);
            }
        }
        return i6;
    }

    public static ByteString copyFrom(byte[] bArr, int i2, int i4) {
        return new LiteralByteString(byteArrayCopier.copyFrom(bArr, i2, i4));
    }

    public static ByteString copyFromUtf8(String str) {
        return new LiteralByteString(str.getBytes(Internal.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CodedBuilder newCodedBuilder(int i2) {
        return new CodedBuilder(i2);
    }

    public static Output newOutput(int i2) {
        return new Output(i2);
    }

    private static ByteString readChunk(InputStream inputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i4 = 0;
        while (i4 < i2) {
            int read = inputStream.read(bArr, i4, i2 - i4);
            if (read == -1) {
                break;
            }
            i4 += read;
        }
        if (i4 == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i4);
    }

    public static ByteString readFrom(InputStream inputStream) throws IOException {
        return readFrom(inputStream, 256, 8192);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString wrap(byte[] bArr) {
        return new LiteralByteString(bArr);
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int i2);

    public final ByteString concat(ByteString byteString) {
        if (Integer.MAX_VALUE - size() >= byteString.size()) {
            return RopeByteString.concatenate(this, byteString);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + byteString.size());
    }

    public abstract void copyTo(ByteBuffer byteBuffer);

    public void copyTo(byte[] bArr, int i2) {
        copyTo(bArr, 0, i2, size());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void copyToInternal(byte[] bArr, int i2, int i4, int i5);

    public final boolean endsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(size() - byteString.size()).equals(byteString);
    }

    public abstract boolean equals(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getTreeDepth();

    public final int hashCode() {
        int i2 = this.hash;
        if (i2 == 0) {
            int size = size();
            i2 = partialHash(size, 0, size);
            if (i2 == 0) {
                i2 = 1;
            }
            this.hash = i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    public abstract CodedInputStream newCodedInput();

    public abstract InputStream newInput();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int partialHash(int i2, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int partialIsValidUtf8(int i2, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: protected */
    public final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(0, byteString.size()).equals(byteString);
    }

    public final ByteString substring(int i2) {
        return substring(i2, size());
    }

    public abstract ByteString substring(int i2, int i4);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return Internal.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString(String str) throws UnsupportedEncodingException {
        try {
            return toString(Charset.forName(str));
        } catch (UnsupportedCharsetException e4) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(str);
            unsupportedEncodingException.initCause(e4);
            throw unsupportedEncodingException;
        }
    }

    protected abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(Internal.UTF_8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeTo(ByteOutput byteOutput) throws IOException;

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    final void writeTo(OutputStream outputStream, int i2, int i4) throws IOException {
        checkRange(i2, i2 + i4, size());
        if (i4 > 0) {
            writeToInternal(outputStream, i2, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeToInternal(OutputStream outputStream, int i2, int i4) throws IOException;

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static Output newOutput() {
        return new Output(128);
    }

    public static ByteString readFrom(InputStream inputStream, int i2) throws IOException {
        return readFrom(inputStream, i2, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString wrap(byte[] bArr, int i2, int i4) {
        return new BoundedByteString(bArr, i2, i4);
    }

    public final void copyTo(byte[] bArr, int i2, int i4, int i5) {
        checkRange(i2, i2 + i5, size());
        checkRange(i4, i4 + i5, bArr.length);
        if (i5 > 0) {
            copyToInternal(bArr, i2, i4, i5);
        }
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public final Iterator<Byte> iterator2() {
        return new ByteIterator() { // from class: com.google.protobuf.ByteString.1
            private final int limit;
            private int position = 0;

            {
                this.limit = ByteString.this.size();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.position < this.limit;
            }

            @Override // com.google.protobuf.ByteString.ByteIterator
            public byte nextByte() {
                try {
                    ByteString byteString = ByteString.this;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    return byteString.byteAt(i2);
                } catch (IndexOutOfBoundsException e4) {
                    throw new NoSuchElementException(e4.getMessage());
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Byte next() {
                return Byte.valueOf(nextByte());
            }
        };
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int i2) {
        byte[] bArr = new byte[i2];
        byteBuffer.get(bArr);
        return new LiteralByteString(bArr);
    }

    public static ByteString readFrom(InputStream inputStream, int i2, int i4) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString readChunk = readChunk(inputStream, i2);
            if (readChunk == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(readChunk);
            i2 = Math.min(i2 * 2, i4);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Output extends OutputStream {
        private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
        private byte[] buffer;
        private int bufferPos;
        private final ArrayList<ByteString> flushedBuffers;
        private int flushedBuffersTotalBytes;
        private final int initialCapacity;

        Output(int i2) {
            if (i2 >= 0) {
                this.initialCapacity = i2;
                this.flushedBuffers = new ArrayList<>();
                this.buffer = new byte[i2];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        private byte[] copyArray(byte[] bArr, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i2));
            return bArr2;
        }

        private void flushFullBuffer(int i2) {
            this.flushedBuffers.add(new LiteralByteString(this.buffer));
            int length = this.flushedBuffersTotalBytes + this.buffer.length;
            this.flushedBuffersTotalBytes = length;
            this.buffer = new byte[Math.max(this.initialCapacity, Math.max(i2, length >>> 1))];
            this.bufferPos = 0;
        }

        private void flushLastBuffer() {
            int i2 = this.bufferPos;
            byte[] bArr = this.buffer;
            if (i2 >= bArr.length) {
                this.flushedBuffers.add(new LiteralByteString(this.buffer));
                this.buffer = EMPTY_BYTE_ARRAY;
            } else if (i2 > 0) {
                this.flushedBuffers.add(new LiteralByteString(copyArray(bArr, i2)));
            }
            this.flushedBuffersTotalBytes += this.bufferPos;
            this.bufferPos = 0;
        }

        public synchronized void reset() {
            this.flushedBuffers.clear();
            this.flushedBuffersTotalBytes = 0;
            this.bufferPos = 0;
        }

        public synchronized int size() {
            return this.flushedBuffersTotalBytes + this.bufferPos;
        }

        public synchronized ByteString toByteString() {
            flushLastBuffer();
            return ByteString.copyFrom(this.flushedBuffers);
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i2) {
            if (this.bufferPos == this.buffer.length) {
                flushFullBuffer(1);
            }
            byte[] bArr = this.buffer;
            int i4 = this.bufferPos;
            this.bufferPos = i4 + 1;
            bArr[i4] = (byte) i2;
        }

        public void writeTo(OutputStream outputStream) throws IOException {
            ByteString[] byteStringArr;
            byte[] bArr;
            int i2;
            synchronized (this) {
                ArrayList<ByteString> arrayList = this.flushedBuffers;
                byteStringArr = (ByteString[]) arrayList.toArray(new ByteString[arrayList.size()]);
                bArr = this.buffer;
                i2 = this.bufferPos;
            }
            for (ByteString byteString : byteStringArr) {
                byteString.writeTo(outputStream);
            }
            outputStream.write(copyArray(bArr, i2));
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i2, int i4) {
            byte[] bArr2 = this.buffer;
            int length = bArr2.length;
            int i5 = this.bufferPos;
            if (i4 <= length - i5) {
                System.arraycopy(bArr, i2, bArr2, i5, i4);
                this.bufferPos += i4;
            } else {
                int length2 = bArr2.length - i5;
                System.arraycopy(bArr, i2, bArr2, i5, length2);
                int i6 = i4 - length2;
                flushFullBuffer(i6);
                System.arraycopy(bArr, i2 + length2, this.buffer, 0, i6);
                this.bufferPos = i6;
            }
        }
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public static ByteString copyFrom(String str, String str2) throws UnsupportedEncodingException {
        return new LiteralByteString(str.getBytes(str2));
    }

    public static ByteString copyFrom(String str, Charset charset) {
        return new LiteralByteString(str.getBytes(charset));
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            size = 0;
            Iterator<ByteString> it2 = iterable.iterator();
            while (it2.hasNext()) {
                it2.next();
                size++;
            }
        } else {
            size = ((Collection) iterable).size();
        }
        if (size == 0) {
            return EMPTY;
        }
        return balancedConcat(iterable.iterator(), size);
    }
}
