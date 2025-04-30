package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.util.AsciiString;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import java.util.Map;
/* loaded from: classes5.dex */
public final class AsciiHeadersEncoder {
    private final ByteBuf buf;
    private final NewlineType newlineType;
    private final SeparatorType separatorType;

    /* renamed from: io.netty.handler.codec.AsciiHeadersEncoder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType;

        static {
            int[] iArr = new int[NewlineType.values().length];
            $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType = iArr;
            try {
                iArr[NewlineType.LF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType[NewlineType.CRLF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[SeparatorType.values().length];
            $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType = iArr2;
            try {
                iArr2[SeparatorType.COLON.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType[SeparatorType.COLON_SPACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public enum NewlineType {
        LF,
        CRLF
    }

    /* loaded from: classes5.dex */
    public enum SeparatorType {
        COLON,
        COLON_SPACE
    }

    public AsciiHeadersEncoder(ByteBuf byteBuf) {
        this(byteBuf, SeparatorType.COLON_SPACE, NewlineType.CRLF);
    }

    private static void writeAscii(ByteBuf byteBuf, int i2, CharSequence charSequence) {
        if (charSequence instanceof AsciiString) {
            ByteBufUtil.copy((AsciiString) charSequence, 0, byteBuf, i2, charSequence.length());
        } else {
            byteBuf.setCharSequence(i2, charSequence, CharsetUtil.US_ASCII);
        }
    }

    public void encode(Map.Entry<CharSequence, CharSequence> entry) {
        int i2;
        int i4;
        CharSequence key = entry.getKey();
        CharSequence value = entry.getValue();
        ByteBuf byteBuf = this.buf;
        int length = key.length();
        int length2 = value.length();
        int writerIndex = byteBuf.writerIndex();
        byteBuf.ensureWritable(length + length2 + 4);
        writeAscii(byteBuf, writerIndex, key);
        int i5 = writerIndex + length;
        int i6 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType[this.separatorType.ordinal()];
        if (i6 == 1) {
            byteBuf.setByte(i5, 58);
            i2 = i5 + 1;
        } else if (i6 == 2) {
            int i7 = i5 + 1;
            byteBuf.setByte(i5, 58);
            i2 = i7 + 1;
            byteBuf.setByte(i7, 32);
        } else {
            throw new Error();
        }
        writeAscii(byteBuf, i2, value);
        int i8 = i2 + length2;
        int i9 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType[this.newlineType.ordinal()];
        if (i9 == 1) {
            byteBuf.setByte(i8, 10);
            i4 = i8 + 1;
        } else if (i9 == 2) {
            int i10 = i8 + 1;
            byteBuf.setByte(i8, 13);
            i4 = i10 + 1;
            byteBuf.setByte(i10, 10);
        } else {
            throw new Error();
        }
        byteBuf.writerIndex(i4);
    }

    public AsciiHeadersEncoder(ByteBuf byteBuf, SeparatorType separatorType, NewlineType newlineType) {
        this.buf = (ByteBuf) ObjectUtil.checkNotNull(byteBuf, "buf");
        this.separatorType = (SeparatorType) ObjectUtil.checkNotNull(separatorType, "separatorType");
        this.newlineType = (NewlineType) ObjectUtil.checkNotNull(newlineType, "newlineType");
    }
}
