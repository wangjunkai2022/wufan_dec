package com.google.protobuf;

import com.google.protobuf.Utf8;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public abstract class CodedOutputStream extends ByteOutput {
    public static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int FIXED_32_SIZE = 4;
    private static final int FIXED_64_SIZE = 8;
    @Deprecated
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    private static final int MAX_VARINT_SIZE = 10;
    private static final Logger logger = Logger.getLogger(CodedOutputStream.class.getName());
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = UnsafeUtil.hasUnsafeArrayOperations();
    private static final long ARRAY_BASE_OFFSET = UnsafeUtil.getArrayBaseOffset();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class AbstractBufferedEncoder extends CodedOutputStream {
        final byte[] buffer;
        final int limit;
        int position;
        int totalBytesWritten;

        AbstractBufferedEncoder(int i2) {
            super();
            if (i2 >= 0) {
                byte[] bArr = new byte[Math.max(i2, 20)];
                this.buffer = bArr;
                this.limit = bArr.length;
                return;
            }
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }

        final void buffer(byte b4) {
            byte[] bArr = this.buffer;
            int i2 = this.position;
            this.position = i2 + 1;
            bArr[i2] = b4;
            this.totalBytesWritten++;
        }

        final void bufferFixed32NoTag(int i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            int i5 = i4 + 1;
            this.position = i5;
            bArr[i4] = (byte) (i2 & 255);
            int i6 = i5 + 1;
            this.position = i6;
            bArr[i5] = (byte) ((i2 >> 8) & 255);
            int i7 = i6 + 1;
            this.position = i7;
            bArr[i6] = (byte) ((i2 >> 16) & 255);
            this.position = i7 + 1;
            bArr[i7] = (byte) ((i2 >> 24) & 255);
            this.totalBytesWritten += 4;
        }

        final void bufferFixed64NoTag(long j4) {
            byte[] bArr = this.buffer;
            int i2 = this.position;
            int i4 = i2 + 1;
            this.position = i4;
            bArr[i2] = (byte) (j4 & 255);
            int i5 = i4 + 1;
            this.position = i5;
            bArr[i4] = (byte) ((j4 >> 8) & 255);
            int i6 = i5 + 1;
            this.position = i6;
            bArr[i5] = (byte) ((j4 >> 16) & 255);
            int i7 = i6 + 1;
            this.position = i7;
            bArr[i6] = (byte) (255 & (j4 >> 24));
            int i8 = i7 + 1;
            this.position = i8;
            bArr[i7] = (byte) (((int) (j4 >> 32)) & 255);
            int i9 = i8 + 1;
            this.position = i9;
            bArr[i8] = (byte) (((int) (j4 >> 40)) & 255);
            int i10 = i9 + 1;
            this.position = i10;
            bArr[i9] = (byte) (((int) (j4 >> 48)) & 255);
            this.position = i10 + 1;
            bArr[i10] = (byte) (((int) (j4 >> 56)) & 255);
            this.totalBytesWritten += 8;
        }

        final void bufferInt32NoTag(int i2) {
            if (i2 >= 0) {
                bufferUInt32NoTag(i2);
            } else {
                bufferUInt64NoTag(i2);
            }
        }

        final void bufferTag(int i2, int i4) {
            bufferUInt32NoTag(WireFormat.makeTag(i2, i4));
        }

        final void bufferUInt32NoTag(int i2) {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS) {
                long j4 = CodedOutputStream.ARRAY_BASE_OFFSET + this.position;
                long j5 = j4;
                while ((i2 & (-128)) != 0) {
                    UnsafeUtil.putByte(this.buffer, j5, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                    j5 = 1 + j5;
                }
                UnsafeUtil.putByte(this.buffer, j5, (byte) i2);
                int i4 = (int) ((1 + j5) - j4);
                this.position += i4;
                this.totalBytesWritten += i4;
                return;
            }
            while ((i2 & (-128)) != 0) {
                byte[] bArr = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr[i5] = (byte) ((i2 & 127) | 128);
                this.totalBytesWritten++;
                i2 >>>= 7;
            }
            byte[] bArr2 = this.buffer;
            int i6 = this.position;
            this.position = i6 + 1;
            bArr2[i6] = (byte) i2;
            this.totalBytesWritten++;
        }

        final void bufferUInt64NoTag(long j4) {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS) {
                long j5 = CodedOutputStream.ARRAY_BASE_OFFSET + this.position;
                long j6 = j4;
                long j7 = j5;
                while ((j6 & (-128)) != 0) {
                    UnsafeUtil.putByte(this.buffer, j7, (byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                    j7 = 1 + j7;
                }
                UnsafeUtil.putByte(this.buffer, j7, (byte) j6);
                int i2 = (int) ((1 + j7) - j5);
                this.position += i2;
                this.totalBytesWritten += i2;
                return;
            }
            long j8 = j4;
            while ((j8 & (-128)) != 0) {
                byte[] bArr = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr[i4] = (byte) ((((int) j8) & 127) | 128);
                this.totalBytesWritten++;
                j8 >>>= 7;
            }
            byte[] bArr2 = this.buffer;
            int i5 = this.position;
            this.position = i5 + 1;
            bArr2[i5] = (byte) j8;
            this.totalBytesWritten++;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int getTotalBytesWritten() {
            return this.totalBytesWritten;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int spaceLeft() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ArrayEncoder extends CodedOutputStream {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        ArrayEncoder(byte[] bArr, int i2, int i4) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            int i5 = i2 + i4;
            if ((i2 | i4 | (bArr.length - i5)) >= 0) {
                this.buffer = bArr;
                this.offset = i2;
                this.position = i2;
                this.limit = i5;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i4)));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int getTotalBytesWritten() {
            return this.position - this.offset;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int spaceLeft() {
            return this.limit - this.position;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void write(byte b4) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = b4;
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBool(int i2, boolean z3) throws IOException {
            writeTag(i2, 0);
            write(z3 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArray(int i2, byte[] bArr) throws IOException {
            writeByteArray(i2, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArrayNoTag(byte[] bArr, int i2, int i4) throws IOException {
            writeUInt32NoTag(i4);
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteBuffer(int i2, ByteBuffer byteBuffer) throws IOException {
            writeTag(i2, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBytes(int i2, ByteString byteString) throws IOException {
            writeTag(i2, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed32(int i2, int i4) throws IOException {
            writeTag(i2, 5);
            writeFixed32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed32NoTag(int i2) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i4 = this.position;
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (i2 & 255);
                int i6 = i5 + 1;
                this.position = i6;
                bArr[i5] = (byte) ((i2 >> 8) & 255);
                int i7 = i6 + 1;
                this.position = i7;
                bArr[i6] = (byte) ((i2 >> 16) & 255);
                this.position = i7 + 1;
                bArr[i7] = (byte) ((i2 >> 24) & 255);
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed64(int i2, long j4) throws IOException {
            writeTag(i2, 1);
            writeFixed64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed64NoTag(long j4) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                int i4 = i2 + 1;
                this.position = i4;
                bArr[i2] = (byte) (((int) j4) & 255);
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (((int) (j4 >> 8)) & 255);
                int i6 = i5 + 1;
                this.position = i6;
                bArr[i5] = (byte) (((int) (j4 >> 16)) & 255);
                int i7 = i6 + 1;
                this.position = i7;
                bArr[i6] = (byte) (((int) (j4 >> 24)) & 255);
                int i8 = i7 + 1;
                this.position = i8;
                bArr[i7] = (byte) (((int) (j4 >> 32)) & 255);
                int i9 = i8 + 1;
                this.position = i9;
                bArr[i8] = (byte) (((int) (j4 >> 40)) & 255);
                int i10 = i9 + 1;
                this.position = i10;
                bArr[i9] = (byte) (((int) (j4 >> 48)) & 255);
                this.position = i10 + 1;
                bArr[i10] = (byte) (((int) (j4 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeInt32(int i2, int i4) throws IOException {
            writeTag(i2, 0);
            writeInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeInt32NoTag(int i2) throws IOException {
            if (i2 >= 0) {
                writeUInt32NoTag(i2);
            } else {
                writeUInt64NoTag(i2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void writeLazy(byte[] bArr, int i2, int i4) throws IOException {
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessage(int i2, MessageLite messageLite) throws IOException {
            writeTag(i2, 2);
            writeMessageNoTag(messageLite);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessageNoTag(MessageLite messageLite) throws IOException {
            writeUInt32NoTag(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessageSetExtension(int i2, MessageLite messageLite) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeMessage(3, messageLite);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.clear();
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeRawMessageSetExtension(int i2, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeString(int i2, String str) throws IOException {
            writeTag(i2, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeStringNoTag(String str) throws IOException {
            int i2 = this.position;
            try {
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(str.length() * 3);
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int i4 = i2 + computeUInt32SizeNoTag2;
                    this.position = i4;
                    int encode = Utf8.encode(str, this.buffer, i4, spaceLeft());
                    this.position = i2;
                    writeUInt32NoTag((encode - i2) - computeUInt32SizeNoTag2);
                    this.position = encode;
                } else {
                    writeUInt32NoTag(Utf8.encodedLength(str));
                    this.position = Utf8.encode(str, this.buffer, this.position, spaceLeft());
                }
            } catch (Utf8.UnpairedSurrogateException e4) {
                this.position = i2;
                inefficientWriteStringNoTag(str, e4);
            } catch (IndexOutOfBoundsException e5) {
                throw new OutOfSpaceException(e5);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeTag(int i2, int i4) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i2, i4));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt32(int i2, int i4) throws IOException {
            writeTag(i2, 0);
            writeUInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt32NoTag(int i2) throws IOException {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS && spaceLeft() >= 10) {
                long j4 = CodedOutputStream.ARRAY_BASE_OFFSET + this.position;
                while ((i2 & (-128)) != 0) {
                    UnsafeUtil.putByte(this.buffer, j4, (byte) ((i2 & 127) | 128));
                    this.position++;
                    i2 >>>= 7;
                    j4 = 1 + j4;
                }
                UnsafeUtil.putByte(this.buffer, j4, (byte) i2);
                this.position++;
                return;
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    bArr[i4] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e4) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e4);
                }
            }
            byte[] bArr2 = this.buffer;
            int i5 = this.position;
            this.position = i5 + 1;
            bArr2[i5] = (byte) i2;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt64(int i2, long j4) throws IOException {
            writeTag(i2, 0);
            writeUInt64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt64NoTag(long j4) throws IOException {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS && spaceLeft() >= 10) {
                long j5 = CodedOutputStream.ARRAY_BASE_OFFSET + this.position;
                while ((j4 & (-128)) != 0) {
                    UnsafeUtil.putByte(this.buffer, j5, (byte) ((((int) j4) & 127) | 128));
                    this.position++;
                    j4 >>>= 7;
                    j5 = 1 + j5;
                }
                UnsafeUtil.putByte(this.buffer, j5, (byte) j4);
                this.position++;
                return;
            }
            while ((j4 & (-128)) != 0) {
                try {
                    byte[] bArr = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    bArr[i2] = (byte) ((((int) j4) & 127) | 128);
                    j4 >>>= 7;
                } catch (IndexOutOfBoundsException e4) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e4);
                }
            }
            byte[] bArr2 = this.buffer;
            int i4 = this.position;
            this.position = i4 + 1;
            bArr2[i4] = (byte) j4;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArray(int i2, byte[] bArr, int i4, int i5) throws IOException {
            writeTag(i2, 2);
            writeByteArrayNoTag(bArr, i4, i5);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void write(byte[] bArr, int i2, int i4) throws IOException {
            try {
                System.arraycopy(bArr, i2, this.buffer, this.position, i4);
                this.position += i4;
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i4)), e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void write(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.buffer, this.position, remaining);
                this.position += remaining;
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(remaining)), e4);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class ByteOutputEncoder extends AbstractBufferedEncoder {
        private final ByteOutput out;

        ByteOutputEncoder(ByteOutput byteOutput, int i2) {
            super(i2);
            Objects.requireNonNull(byteOutput, "out");
            this.out = byteOutput;
        }

        private void doFlush() throws IOException {
            this.out.write(this.buffer, 0, this.position);
            this.position = 0;
        }

        private void flushIfNotAvailable(int i2) throws IOException {
            if (this.limit - this.position < i2) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() throws IOException {
            if (this.position > 0) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte b4) throws IOException {
            if (this.position == this.limit) {
                doFlush();
            }
            buffer(b4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i2, boolean z3) throws IOException {
            flushIfNotAvailable(11);
            bufferTag(i2, 0);
            buffer(z3 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i2, byte[] bArr) throws IOException {
            writeByteArray(i2, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i2, int i4) throws IOException {
            writeUInt32NoTag(i4);
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i2, ByteBuffer byteBuffer) throws IOException {
            writeTag(i2, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i2, ByteString byteString) throws IOException {
            writeTag(i2, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i2, int i4) throws IOException {
            flushIfNotAvailable(14);
            bufferTag(i2, 5);
            bufferFixed32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i2) throws IOException {
            flushIfNotAvailable(4);
            bufferFixed32NoTag(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i2, long j4) throws IOException {
            flushIfNotAvailable(18);
            bufferTag(i2, 1);
            bufferFixed64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j4) throws IOException {
            flushIfNotAvailable(8);
            bufferFixed64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i2, int i4) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i2, 0);
            bufferInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i2) throws IOException {
            if (i2 >= 0) {
                writeUInt32NoTag(i2);
            } else {
                writeUInt64NoTag(i2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] bArr, int i2, int i4) throws IOException {
            flush();
            this.out.writeLazy(bArr, i2, i4);
            this.totalBytesWritten += i4;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i2, MessageLite messageLite) throws IOException {
            writeTag(i2, 2);
            writeMessageNoTag(messageLite);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(MessageLite messageLite) throws IOException {
            writeUInt32NoTag(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i2, MessageLite messageLite) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeMessage(3, messageLite);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.clear();
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i2, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i2, String str) throws IOException {
            writeTag(i2, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            int length = str.length() * 3;
            int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(length);
            int i2 = computeUInt32SizeNoTag + length;
            int i4 = this.limit;
            if (i2 > i4) {
                byte[] bArr = new byte[length];
                int encode = Utf8.encode(str, bArr, 0, length);
                writeUInt32NoTag(encode);
                writeLazy(bArr, 0, encode);
                return;
            }
            if (i2 > i4 - this.position) {
                doFlush();
            }
            int i5 = this.position;
            try {
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int i6 = i5 + computeUInt32SizeNoTag2;
                    this.position = i6;
                    int encode2 = Utf8.encode(str, this.buffer, i6, this.limit - i6);
                    this.position = i5;
                    int i7 = (encode2 - i5) - computeUInt32SizeNoTag2;
                    bufferUInt32NoTag(i7);
                    this.position = encode2;
                    this.totalBytesWritten += i7;
                } else {
                    int encodedLength = Utf8.encodedLength(str);
                    bufferUInt32NoTag(encodedLength);
                    this.position = Utf8.encode(str, this.buffer, this.position, encodedLength);
                    this.totalBytesWritten += encodedLength;
                }
            } catch (Utf8.UnpairedSurrogateException e4) {
                this.totalBytesWritten -= this.position - i5;
                this.position = i5;
                inefficientWriteStringNoTag(str, e4);
            } catch (IndexOutOfBoundsException e5) {
                throw new OutOfSpaceException(e5);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i2, int i4) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i2, i4));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i2, int i4) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i2, 0);
            bufferUInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i2) throws IOException {
            flushIfNotAvailable(10);
            bufferUInt32NoTag(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i2, long j4) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i2, 0);
            bufferUInt64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j4) throws IOException {
            flushIfNotAvailable(10);
            bufferUInt64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i2, byte[] bArr, int i4, int i5) throws IOException {
            writeTag(i2, 2);
            writeByteArrayNoTag(bArr, i4, i5);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] bArr, int i2, int i4) throws IOException {
            flush();
            this.out.write(bArr, i2, i4);
            this.totalBytesWritten += i4;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            flush();
            int remaining = byteBuffer.remaining();
            this.out.writeLazy(byteBuffer);
            this.totalBytesWritten += remaining;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer byteBuffer) throws IOException {
            flush();
            int remaining = byteBuffer.remaining();
            this.out.write(byteBuffer);
            this.totalBytesWritten += remaining;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class NioEncoder extends CodedOutputStream {
        private final ByteBuffer buffer;
        private final int initialPosition;
        private final ByteBuffer originalBuffer;

        NioEncoder(ByteBuffer byteBuffer) {
            super();
            this.originalBuffer = byteBuffer;
            this.buffer = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.initialPosition = byteBuffer.position();
        }

        private void encode(String str) throws IOException {
            try {
                Utf8.encodeUtf8(str, this.buffer);
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
            this.originalBuffer.position(this.buffer.position());
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int getTotalBytesWritten() {
            return this.buffer.position() - this.initialPosition;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int spaceLeft() {
            return this.buffer.remaining();
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte b4) throws IOException {
            try {
                this.buffer.put(b4);
            } catch (BufferOverflowException e4) {
                throw new OutOfSpaceException(e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i2, boolean z3) throws IOException {
            writeTag(i2, 0);
            write(z3 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i2, byte[] bArr) throws IOException {
            writeByteArray(i2, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i2, int i4) throws IOException {
            writeUInt32NoTag(i4);
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i2, ByteBuffer byteBuffer) throws IOException {
            writeTag(i2, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i2, ByteString byteString) throws IOException {
            writeTag(i2, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i2, int i4) throws IOException {
            writeTag(i2, 5);
            writeFixed32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i2) throws IOException {
            try {
                this.buffer.putInt(i2);
            } catch (BufferOverflowException e4) {
                throw new OutOfSpaceException(e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i2, long j4) throws IOException {
            writeTag(i2, 1);
            writeFixed64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j4) throws IOException {
            try {
                this.buffer.putLong(j4);
            } catch (BufferOverflowException e4) {
                throw new OutOfSpaceException(e4);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i2, int i4) throws IOException {
            writeTag(i2, 0);
            writeInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i2) throws IOException {
            if (i2 >= 0) {
                writeUInt32NoTag(i2);
            } else {
                writeUInt64NoTag(i2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] bArr, int i2, int i4) throws IOException {
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i2, MessageLite messageLite) throws IOException {
            writeTag(i2, 2);
            writeMessageNoTag(messageLite);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(MessageLite messageLite) throws IOException {
            writeUInt32NoTag(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i2, MessageLite messageLite) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeMessage(3, messageLite);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.clear();
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i2, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i2, String str) throws IOException {
            writeTag(i2, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            int position = this.buffer.position();
            try {
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(str.length() * 3);
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int position2 = this.buffer.position() + computeUInt32SizeNoTag2;
                    this.buffer.position(position2);
                    encode(str);
                    int position3 = this.buffer.position();
                    this.buffer.position(position);
                    writeUInt32NoTag(position3 - position2);
                    this.buffer.position(position3);
                } else {
                    writeUInt32NoTag(Utf8.encodedLength(str));
                    encode(str);
                }
            } catch (Utf8.UnpairedSurrogateException e4) {
                this.buffer.position(position);
                inefficientWriteStringNoTag(str, e4);
            } catch (IllegalArgumentException e5) {
                throw new OutOfSpaceException(e5);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i2, int i4) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i2, i4));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i2, int i4) throws IOException {
            writeTag(i2, 0);
            writeUInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i2) throws IOException {
            while ((i2 & (-128)) != 0) {
                try {
                    this.buffer.put((byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                } catch (BufferOverflowException e4) {
                    throw new OutOfSpaceException(e4);
                }
            }
            this.buffer.put((byte) i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i2, long j4) throws IOException {
            writeTag(i2, 0);
            writeUInt64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j4) throws IOException {
            while (((-128) & j4) != 0) {
                try {
                    this.buffer.put((byte) ((((int) j4) & 127) | 128));
                    j4 >>>= 7;
                } catch (BufferOverflowException e4) {
                    throw new OutOfSpaceException(e4);
                }
            }
            this.buffer.put((byte) j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i2, byte[] bArr, int i4, int i5) throws IOException {
            writeTag(i2, 2);
            writeByteArrayNoTag(bArr, i4, i5);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] bArr, int i2, int i4) throws IOException {
            try {
                this.buffer.put(bArr, i2, i4);
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(e4);
            } catch (BufferOverflowException e5) {
                throw new OutOfSpaceException(e5);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer byteBuffer) throws IOException {
            try {
                this.buffer.put(byteBuffer);
            } catch (BufferOverflowException e4) {
                throw new OutOfSpaceException(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class NioHeapEncoder extends ArrayEncoder {
        private final ByteBuffer byteBuffer;
        private int initialPosition;

        NioHeapEncoder(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.byteBuffer = byteBuffer;
            this.initialPosition = byteBuffer.position();
        }

        @Override // com.google.protobuf.CodedOutputStream.ArrayEncoder, com.google.protobuf.CodedOutputStream
        public void flush() {
            this.byteBuffer.position(this.initialPosition + getTotalBytesWritten());
        }
    }

    /* loaded from: classes2.dex */
    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super(MESSAGE);
        }

        OutOfSpaceException(Throwable th) {
            super(MESSAGE, th);
        }

        OutOfSpaceException(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class OutputStreamEncoder extends AbstractBufferedEncoder {
        private final OutputStream out;

        OutputStreamEncoder(OutputStream outputStream, int i2) {
            super(i2);
            Objects.requireNonNull(outputStream, "out");
            this.out = outputStream;
        }

        private void doFlush() throws IOException {
            this.out.write(this.buffer, 0, this.position);
            this.position = 0;
        }

        private void flushIfNotAvailable(int i2) throws IOException {
            if (this.limit - this.position < i2) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() throws IOException {
            if (this.position > 0) {
                doFlush();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte b4) throws IOException {
            if (this.position == this.limit) {
                doFlush();
            }
            buffer(b4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i2, boolean z3) throws IOException {
            flushIfNotAvailable(11);
            bufferTag(i2, 0);
            buffer(z3 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i2, byte[] bArr) throws IOException {
            writeByteArray(i2, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArrayNoTag(byte[] bArr, int i2, int i4) throws IOException {
            writeUInt32NoTag(i4);
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int i2, ByteBuffer byteBuffer) throws IOException {
            writeTag(i2, 2);
            writeUInt32NoTag(byteBuffer.capacity());
            writeRawBytes(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int i2, ByteString byteString) throws IOException {
            writeTag(i2, 2);
            writeBytesNoTag(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString byteString) throws IOException {
            writeUInt32NoTag(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int i2, int i4) throws IOException {
            flushIfNotAvailable(14);
            bufferTag(i2, 5);
            bufferFixed32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int i2) throws IOException {
            flushIfNotAvailable(4);
            bufferFixed32NoTag(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int i2, long j4) throws IOException {
            flushIfNotAvailable(18);
            bufferTag(i2, 1);
            bufferFixed64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long j4) throws IOException {
            flushIfNotAvailable(8);
            bufferFixed64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int i2, int i4) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i2, 0);
            bufferInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int i2) throws IOException {
            if (i2 >= 0) {
                writeUInt32NoTag(i2);
            } else {
                writeUInt64NoTag(i2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] bArr, int i2, int i4) throws IOException {
            write(bArr, i2, i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int i2, MessageLite messageLite) throws IOException {
            writeTag(i2, 2);
            writeMessageNoTag(messageLite);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(MessageLite messageLite) throws IOException {
            writeUInt32NoTag(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int i2, MessageLite messageLite) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeMessage(3, messageLite);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.clear();
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int i2, ByteString byteString) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, i2);
            writeBytes(3, byteString);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int i2, String str) throws IOException {
            writeTag(i2, 2);
            writeStringNoTag(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String str) throws IOException {
            int encodedLength;
            try {
                int length = str.length() * 3;
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(length);
                int i2 = computeUInt32SizeNoTag + length;
                int i4 = this.limit;
                if (i2 > i4) {
                    byte[] bArr = new byte[length];
                    int encode = Utf8.encode(str, bArr, 0, length);
                    writeUInt32NoTag(encode);
                    writeLazy(bArr, 0, encode);
                    return;
                }
                if (i2 > i4 - this.position) {
                    doFlush();
                }
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(str.length());
                int i5 = this.position;
                try {
                    if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                        int i6 = i5 + computeUInt32SizeNoTag2;
                        this.position = i6;
                        int encode2 = Utf8.encode(str, this.buffer, i6, this.limit - i6);
                        this.position = i5;
                        encodedLength = (encode2 - i5) - computeUInt32SizeNoTag2;
                        bufferUInt32NoTag(encodedLength);
                        this.position = encode2;
                    } else {
                        encodedLength = Utf8.encodedLength(str);
                        bufferUInt32NoTag(encodedLength);
                        this.position = Utf8.encode(str, this.buffer, this.position, encodedLength);
                    }
                    this.totalBytesWritten += encodedLength;
                } catch (Utf8.UnpairedSurrogateException e4) {
                    this.totalBytesWritten -= this.position - i5;
                    this.position = i5;
                    throw e4;
                } catch (ArrayIndexOutOfBoundsException e5) {
                    throw new OutOfSpaceException(e5);
                }
            } catch (Utf8.UnpairedSurrogateException e6) {
                inefficientWriteStringNoTag(str, e6);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int i2, int i4) throws IOException {
            writeUInt32NoTag(WireFormat.makeTag(i2, i4));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int i2, int i4) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i2, 0);
            bufferUInt32NoTag(i4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int i2) throws IOException {
            flushIfNotAvailable(10);
            bufferUInt32NoTag(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int i2, long j4) throws IOException {
            flushIfNotAvailable(20);
            bufferTag(i2, 0);
            bufferUInt64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long j4) throws IOException {
            flushIfNotAvailable(10);
            bufferUInt64NoTag(j4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int i2, byte[] bArr, int i4, int i5) throws IOException {
            writeTag(i2, 2);
            writeByteArrayNoTag(bArr, i4, i5);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer byteBuffer) throws IOException {
            write(byteBuffer);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] bArr, int i2, int i4) throws IOException {
            int i5 = this.limit;
            int i6 = this.position;
            if (i5 - i6 >= i4) {
                System.arraycopy(bArr, i2, this.buffer, i6, i4);
                this.position += i4;
                this.totalBytesWritten += i4;
                return;
            }
            int i7 = i5 - i6;
            System.arraycopy(bArr, i2, this.buffer, i6, i7);
            int i8 = i2 + i7;
            int i9 = i4 - i7;
            this.position = this.limit;
            this.totalBytesWritten += i7;
            doFlush();
            if (i9 <= this.limit) {
                System.arraycopy(bArr, i8, this.buffer, 0, i9);
                this.position = i9;
            } else {
                this.out.write(bArr, i8, i9);
            }
            this.totalBytesWritten += i9;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            int i2 = this.limit;
            int i4 = this.position;
            if (i2 - i4 >= remaining) {
                byteBuffer.get(this.buffer, i4, remaining);
                this.position += remaining;
                this.totalBytesWritten += remaining;
                return;
            }
            int i5 = i2 - i4;
            byteBuffer.get(this.buffer, i4, i5);
            int i6 = remaining - i5;
            this.position = this.limit;
            this.totalBytesWritten += i5;
            doFlush();
            while (true) {
                int i7 = this.limit;
                if (i6 > i7) {
                    byteBuffer.get(this.buffer, 0, i7);
                    this.out.write(this.buffer, 0, this.limit);
                    int i8 = this.limit;
                    i6 -= i8;
                    this.totalBytesWritten += i8;
                } else {
                    byteBuffer.get(this.buffer, 0, i6);
                    this.position = i6;
                    this.totalBytesWritten += i6;
                    return;
                }
            }
        }
    }

    public static int computeBoolSize(int i2, boolean z3) {
        return computeTagSize(i2) + computeBoolSizeNoTag(z3);
    }

    public static int computeBoolSizeNoTag(boolean z3) {
        return 1;
    }

    public static int computeByteArraySize(int i2, byte[] bArr) {
        return computeTagSize(i2) + computeByteArraySizeNoTag(bArr);
    }

    public static int computeByteArraySizeNoTag(byte[] bArr) {
        return computeLengthDelimitedFieldSize(bArr.length);
    }

    public static int computeByteBufferSize(int i2, ByteBuffer byteBuffer) {
        return computeTagSize(i2) + computeByteBufferSizeNoTag(byteBuffer);
    }

    public static int computeByteBufferSizeNoTag(ByteBuffer byteBuffer) {
        return computeLengthDelimitedFieldSize(byteBuffer.capacity());
    }

    public static int computeBytesSize(int i2, ByteString byteString) {
        return computeTagSize(i2) + computeBytesSizeNoTag(byteString);
    }

    public static int computeBytesSizeNoTag(ByteString byteString) {
        return computeLengthDelimitedFieldSize(byteString.size());
    }

    public static int computeDoubleSize(int i2, double d4) {
        return computeTagSize(i2) + computeDoubleSizeNoTag(d4);
    }

    public static int computeDoubleSizeNoTag(double d4) {
        return 8;
    }

    public static int computeEnumSize(int i2, int i4) {
        return computeTagSize(i2) + computeEnumSizeNoTag(i4);
    }

    public static int computeEnumSizeNoTag(int i2) {
        return computeInt32SizeNoTag(i2);
    }

    public static int computeFixed32Size(int i2, int i4) {
        return computeTagSize(i2) + computeFixed32SizeNoTag(i4);
    }

    public static int computeFixed32SizeNoTag(int i2) {
        return 4;
    }

    public static int computeFixed64Size(int i2, long j4) {
        return computeTagSize(i2) + computeFixed64SizeNoTag(j4);
    }

    public static int computeFixed64SizeNoTag(long j4) {
        return 8;
    }

    public static int computeFloatSize(int i2, float f4) {
        return computeTagSize(i2) + computeFloatSizeNoTag(f4);
    }

    public static int computeFloatSizeNoTag(float f4) {
        return 4;
    }

    @Deprecated
    public static int computeGroupSize(int i2, MessageLite messageLite) {
        return (computeTagSize(i2) * 2) + computeGroupSizeNoTag(messageLite);
    }

    @Deprecated
    public static int computeGroupSizeNoTag(MessageLite messageLite) {
        return messageLite.getSerializedSize();
    }

    public static int computeInt32Size(int i2, int i4) {
        return computeTagSize(i2) + computeInt32SizeNoTag(i4);
    }

    public static int computeInt32SizeNoTag(int i2) {
        if (i2 >= 0) {
            return computeUInt32SizeNoTag(i2);
        }
        return 10;
    }

    public static int computeInt64Size(int i2, long j4) {
        return computeTagSize(i2) + computeInt64SizeNoTag(j4);
    }

    public static int computeInt64SizeNoTag(long j4) {
        return computeUInt64SizeNoTag(j4);
    }

    public static int computeLazyFieldMessageSetExtensionSize(int i2, LazyFieldLite lazyFieldLite) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, i2) + computeLazyFieldSize(3, lazyFieldLite);
    }

    public static int computeLazyFieldSize(int i2, LazyFieldLite lazyFieldLite) {
        return computeTagSize(i2) + computeLazyFieldSizeNoTag(lazyFieldLite);
    }

    public static int computeLazyFieldSizeNoTag(LazyFieldLite lazyFieldLite) {
        return computeLengthDelimitedFieldSize(lazyFieldLite.getSerializedSize());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeLengthDelimitedFieldSize(int i2) {
        return computeUInt32SizeNoTag(i2) + i2;
    }

    public static int computeMessageSetExtensionSize(int i2, MessageLite messageLite) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, i2) + computeMessageSize(3, messageLite);
    }

    public static int computeMessageSize(int i2, MessageLite messageLite) {
        return computeTagSize(i2) + computeMessageSizeNoTag(messageLite);
    }

    public static int computeMessageSizeNoTag(MessageLite messageLite) {
        return computeLengthDelimitedFieldSize(messageLite.getSerializedSize());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computePreferredBufferSize(int i2) {
        if (i2 > 4096) {
            return 4096;
        }
        return i2;
    }

    public static int computeRawMessageSetExtensionSize(int i2, ByteString byteString) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, i2) + computeBytesSize(3, byteString);
    }

    @Deprecated
    public static int computeRawVarint32Size(int i2) {
        return computeUInt32SizeNoTag(i2);
    }

    @Deprecated
    public static int computeRawVarint64Size(long j4) {
        return computeUInt64SizeNoTag(j4);
    }

    public static int computeSFixed32Size(int i2, int i4) {
        return computeTagSize(i2) + computeSFixed32SizeNoTag(i4);
    }

    public static int computeSFixed32SizeNoTag(int i2) {
        return 4;
    }

    public static int computeSFixed64Size(int i2, long j4) {
        return computeTagSize(i2) + computeSFixed64SizeNoTag(j4);
    }

    public static int computeSFixed64SizeNoTag(long j4) {
        return 8;
    }

    public static int computeSInt32Size(int i2, int i4) {
        return computeTagSize(i2) + computeSInt32SizeNoTag(i4);
    }

    public static int computeSInt32SizeNoTag(int i2) {
        return computeUInt32SizeNoTag(encodeZigZag32(i2));
    }

    public static int computeSInt64Size(int i2, long j4) {
        return computeTagSize(i2) + computeSInt64SizeNoTag(j4);
    }

    public static int computeSInt64SizeNoTag(long j4) {
        return computeUInt64SizeNoTag(encodeZigZag64(j4));
    }

    public static int computeStringSize(int i2, String str) {
        return computeTagSize(i2) + computeStringSizeNoTag(str);
    }

    public static int computeStringSizeNoTag(String str) {
        int length;
        try {
            length = Utf8.encodedLength(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(Internal.UTF_8).length;
        }
        return computeLengthDelimitedFieldSize(length);
    }

    public static int computeTagSize(int i2) {
        return computeUInt32SizeNoTag(WireFormat.makeTag(i2, 0));
    }

    public static int computeUInt32Size(int i2, int i4) {
        return computeTagSize(i2) + computeUInt32SizeNoTag(i4);
    }

    public static int computeUInt32SizeNoTag(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeUInt64Size(int i2, long j4) {
        return computeTagSize(i2) + computeUInt64SizeNoTag(j4);
    }

    public static int computeUInt64SizeNoTag(long j4) {
        int i2;
        if (((-128) & j4) == 0) {
            return 1;
        }
        if (j4 < 0) {
            return 10;
        }
        if (((-34359738368L) & j4) != 0) {
            i2 = 6;
            j4 >>>= 28;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j4) != 0) {
            i2 += 2;
            j4 >>>= 14;
        }
        return (j4 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public static int encodeZigZag32(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public static long encodeZigZag64(long j4) {
        return (j4 >> 63) ^ (j4 << 1);
    }

    public static CodedOutputStream newInstance(OutputStream outputStream) {
        return newInstance(outputStream, 4096);
    }

    public final void checkNoSpaceLeft() {
        if (spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void flush() throws IOException;

    public abstract int getTotalBytesWritten();

    final void inefficientWriteStringNoTag(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws IOException {
        logger.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(Internal.UTF_8);
        try {
            writeUInt32NoTag(bytes.length);
            writeLazy(bytes, 0, bytes.length);
        } catch (OutOfSpaceException e4) {
            throw e4;
        } catch (IndexOutOfBoundsException e5) {
            throw new OutOfSpaceException(e5);
        }
    }

    public abstract int spaceLeft();

    @Override // com.google.protobuf.ByteOutput
    public abstract void write(byte b4) throws IOException;

    @Override // com.google.protobuf.ByteOutput
    public abstract void write(ByteBuffer byteBuffer) throws IOException;

    @Override // com.google.protobuf.ByteOutput
    public abstract void write(byte[] bArr, int i2, int i4) throws IOException;

    public abstract void writeBool(int i2, boolean z3) throws IOException;

    public final void writeBoolNoTag(boolean z3) throws IOException {
        write(z3 ? (byte) 1 : (byte) 0);
    }

    public abstract void writeByteArray(int i2, byte[] bArr) throws IOException;

    public abstract void writeByteArray(int i2, byte[] bArr, int i4, int i5) throws IOException;

    public final void writeByteArrayNoTag(byte[] bArr) throws IOException {
        writeByteArrayNoTag(bArr, 0, bArr.length);
    }

    abstract void writeByteArrayNoTag(byte[] bArr, int i2, int i4) throws IOException;

    public abstract void writeByteBuffer(int i2, ByteBuffer byteBuffer) throws IOException;

    public abstract void writeBytes(int i2, ByteString byteString) throws IOException;

    public abstract void writeBytesNoTag(ByteString byteString) throws IOException;

    public final void writeDouble(int i2, double d4) throws IOException {
        writeFixed64(i2, Double.doubleToRawLongBits(d4));
    }

    public final void writeDoubleNoTag(double d4) throws IOException {
        writeFixed64NoTag(Double.doubleToRawLongBits(d4));
    }

    public final void writeEnum(int i2, int i4) throws IOException {
        writeInt32(i2, i4);
    }

    public final void writeEnumNoTag(int i2) throws IOException {
        writeInt32NoTag(i2);
    }

    public abstract void writeFixed32(int i2, int i4) throws IOException;

    public abstract void writeFixed32NoTag(int i2) throws IOException;

    public abstract void writeFixed64(int i2, long j4) throws IOException;

    public abstract void writeFixed64NoTag(long j4) throws IOException;

    public final void writeFloat(int i2, float f4) throws IOException {
        writeFixed32(i2, Float.floatToRawIntBits(f4));
    }

    public final void writeFloatNoTag(float f4) throws IOException {
        writeFixed32NoTag(Float.floatToRawIntBits(f4));
    }

    @Deprecated
    public final void writeGroup(int i2, MessageLite messageLite) throws IOException {
        writeTag(i2, 3);
        writeGroupNoTag(messageLite);
        writeTag(i2, 4);
    }

    @Deprecated
    public final void writeGroupNoTag(MessageLite messageLite) throws IOException {
        messageLite.writeTo(this);
    }

    public abstract void writeInt32(int i2, int i4) throws IOException;

    public abstract void writeInt32NoTag(int i2) throws IOException;

    public final void writeInt64(int i2, long j4) throws IOException {
        writeUInt64(i2, j4);
    }

    public final void writeInt64NoTag(long j4) throws IOException {
        writeUInt64NoTag(j4);
    }

    @Override // com.google.protobuf.ByteOutput
    public abstract void writeLazy(ByteBuffer byteBuffer) throws IOException;

    @Override // com.google.protobuf.ByteOutput
    public abstract void writeLazy(byte[] bArr, int i2, int i4) throws IOException;

    public abstract void writeMessage(int i2, MessageLite messageLite) throws IOException;

    public abstract void writeMessageNoTag(MessageLite messageLite) throws IOException;

    public abstract void writeMessageSetExtension(int i2, MessageLite messageLite) throws IOException;

    public final void writeRawByte(byte b4) throws IOException {
        write(b4);
    }

    public abstract void writeRawBytes(ByteBuffer byteBuffer) throws IOException;

    public final void writeRawBytes(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Deprecated
    public final void writeRawLittleEndian32(int i2) throws IOException {
        writeFixed32NoTag(i2);
    }

    @Deprecated
    public final void writeRawLittleEndian64(long j4) throws IOException {
        writeFixed64NoTag(j4);
    }

    public abstract void writeRawMessageSetExtension(int i2, ByteString byteString) throws IOException;

    @Deprecated
    public final void writeRawVarint32(int i2) throws IOException {
        writeUInt32NoTag(i2);
    }

    @Deprecated
    public final void writeRawVarint64(long j4) throws IOException {
        writeUInt64NoTag(j4);
    }

    public final void writeSFixed32(int i2, int i4) throws IOException {
        writeFixed32(i2, i4);
    }

    public final void writeSFixed32NoTag(int i2) throws IOException {
        writeFixed32NoTag(i2);
    }

    public final void writeSFixed64(int i2, long j4) throws IOException {
        writeFixed64(i2, j4);
    }

    public final void writeSFixed64NoTag(long j4) throws IOException {
        writeFixed64NoTag(j4);
    }

    public final void writeSInt32(int i2, int i4) throws IOException {
        writeUInt32(i2, encodeZigZag32(i4));
    }

    public final void writeSInt32NoTag(int i2) throws IOException {
        writeUInt32NoTag(encodeZigZag32(i2));
    }

    public final void writeSInt64(int i2, long j4) throws IOException {
        writeUInt64(i2, encodeZigZag64(j4));
    }

    public final void writeSInt64NoTag(long j4) throws IOException {
        writeUInt64NoTag(encodeZigZag64(j4));
    }

    public abstract void writeString(int i2, String str) throws IOException;

    public abstract void writeStringNoTag(String str) throws IOException;

    public abstract void writeTag(int i2, int i4) throws IOException;

    public abstract void writeUInt32(int i2, int i4) throws IOException;

    public abstract void writeUInt32NoTag(int i2) throws IOException;

    public abstract void writeUInt64(int i2, long j4) throws IOException;

    public abstract void writeUInt64NoTag(long j4) throws IOException;

    private CodedOutputStream() {
    }

    public static CodedOutputStream newInstance(OutputStream outputStream, int i2) {
        return new OutputStreamEncoder(outputStream, i2);
    }

    public final void writeRawByte(int i2) throws IOException {
        write((byte) i2);
    }

    public final void writeRawBytes(byte[] bArr, int i2, int i4) throws IOException {
        write(bArr, i2, i4);
    }

    public static CodedOutputStream newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public final void writeRawBytes(ByteString byteString) throws IOException {
        byteString.writeTo(this);
    }

    public static CodedOutputStream newInstance(byte[] bArr, int i2, int i4) {
        return new ArrayEncoder(bArr, i2, i4);
    }

    public static CodedOutputStream newInstance(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new NioHeapEncoder(byteBuffer);
        }
        return new NioEncoder(byteBuffer);
    }

    @Deprecated
    public static CodedOutputStream newInstance(ByteBuffer byteBuffer, int i2) {
        return newInstance(byteBuffer);
    }

    static CodedOutputStream newInstance(ByteOutput byteOutput, int i2) {
        if (i2 >= 0) {
            return new ByteOutputEncoder(byteOutput, i2);
        }
        throw new IllegalArgumentException("bufferSize must be positive");
    }
}
