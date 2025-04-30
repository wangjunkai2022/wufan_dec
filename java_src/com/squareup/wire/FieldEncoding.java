package com.squareup.wire;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FieldEncoding.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002R\u001c\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/squareup/wire/FieldEncoding;", "", "Lcom/squareup/wire/ProtoAdapter;", "rawProtoAdapter", "", "value", "I", "getValue$wire_runtime", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "VARINT", "FIXED64", "LENGTH_DELIMITED", "FIXED32", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public enum FieldEncoding {
    VARINT(0),
    FIXED64(1),
    LENGTH_DELIMITED(2),
    FIXED32(5);
    
    public static final a Companion = new a(null);
    private final int value;

    /* compiled from: FieldEncoding.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0081\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"com/squareup/wire/FieldEncoding$a", "", "", "value", "Lcom/squareup/wire/FieldEncoding;", "a", "(I)Lcom/squareup/wire/FieldEncoding;", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        @JvmStatic
        @NotNull
        public final FieldEncoding a(int i2) throws IOException {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 5) {
                            return FieldEncoding.FIXED32;
                        }
                        throw new ProtocolException("Unexpected FieldEncoding: " + i2);
                    }
                    return FieldEncoding.LENGTH_DELIMITED;
                }
                return FieldEncoding.FIXED64;
            }
            return FieldEncoding.VARINT;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    FieldEncoding(int i2) {
        this.value = i2;
    }

    public final int getValue$wire_runtime() {
        return this.value;
    }

    @NotNull
    public final ProtoAdapter<?> rawProtoAdapter() {
        int i2 = d.$EnumSwitchMapping$0[ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return ProtoAdapter.f56785u;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return ProtoAdapter.f56781q;
            }
            return ProtoAdapter.f56776l;
        }
        return ProtoAdapter.f56779o;
    }
}
