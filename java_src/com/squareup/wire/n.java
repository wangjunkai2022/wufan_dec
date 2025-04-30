package com.squareup.wire;

import com.join.mgps.activity.TagGameListActivity_;
import com.umeng.analytics.pro.ai;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProtoWriter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00122\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006J\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bH\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0010R\u0016\u0010\u0016\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/squareup/wire/n;", "", "Lokio/ByteString;", "value", "", "a", "", "e", "", "fieldNumber", "Lcom/squareup/wire/FieldEncoding;", "fieldEncoding", "f", com.xinzhu.overmind.utils.helpers.d.f64708a, "(I)V", com.sdk.a.g.f56552a, "", "h", "b", ai.aD, "Lokio/BufferedSink;", "Lokio/BufferedSink;", "sink", "<init>", "(Lokio/BufferedSink;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    public static final a f56869b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final BufferedSink f56870a;

    /* compiled from: ProtoWriter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\f\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\rH\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0011\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0012\u0010\tJ\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0000¢\u0006\u0004\b\u0015\u0010\u0014¨\u0006\u0018"}, d2 = {"com/squareup/wire/n$a", "", "", "fieldNumber", "Lcom/squareup/wire/FieldEncoding;", "fieldEncoding", com.sdk.a.g.f56552a, TagGameListActivity_.f35885q0, "h", "(I)I", "value", "f", ai.aA, "", "j", "(J)I", "n", com.xinzhu.overmind.utils.helpers.d.f64708a, "b", "e", "(J)J", ai.aD, "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int g(int i2, FieldEncoding fieldEncoding) {
            return (i2 << 3) | fieldEncoding.getValue$wire_runtime();
        }

        public final int b(int i2) {
            return (-(i2 & 1)) ^ (i2 >>> 1);
        }

        public final long c(long j4) {
            return (-(j4 & 1)) ^ (j4 >>> 1);
        }

        public final int d(int i2) {
            return (i2 >> 31) ^ (i2 << 1);
        }

        public final long e(long j4) {
            return (j4 >> 63) ^ (j4 << 1);
        }

        public final int f(int i2) {
            if (i2 >= 0) {
                return i(i2);
            }
            return 10;
        }

        public final int h(int i2) {
            return i(g(i2, FieldEncoding.VARINT));
        }

        public final int i(int i2) {
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

        public final int j(long j4) {
            if (((-128) & j4) == 0) {
                return 1;
            }
            if (((-16384) & j4) == 0) {
                return 2;
            }
            if (((-2097152) & j4) == 0) {
                return 3;
            }
            if (((-268435456) & j4) == 0) {
                return 4;
            }
            if (((-34359738368L) & j4) == 0) {
                return 5;
            }
            if (((-4398046511104L) & j4) == 0) {
                return 6;
            }
            if (((-562949953421312L) & j4) == 0) {
                return 7;
            }
            if (((-72057594037927936L) & j4) == 0) {
                return 8;
            }
            return (j4 & Long.MIN_VALUE) == 0 ? 9 : 10;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public n(@NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f56870a = sink;
    }

    public final void a(@NotNull ByteString value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f56870a.write(value);
    }

    public final void b(int i2) throws IOException {
        this.f56870a.writeIntLe(i2);
    }

    public final void c(long j4) throws IOException {
        this.f56870a.writeLongLe(j4);
    }

    public final void d(int i2) throws IOException {
        if (i2 >= 0) {
            g(i2);
        } else {
            h(i2);
        }
    }

    public final void e(@NotNull String value) throws IOException {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f56870a.writeUtf8(value);
    }

    public final void f(int i2, @NotNull FieldEncoding fieldEncoding) throws IOException {
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        g(f56869b.g(i2, fieldEncoding));
    }

    public final void g(int i2) throws IOException {
        while ((i2 & (-128)) != 0) {
            this.f56870a.writeByte((i2 & 127) | 128);
            i2 >>>= 7;
        }
        this.f56870a.writeByte(i2);
    }

    public final void h(long j4) throws IOException {
        while (((-128) & j4) != 0) {
            this.f56870a.writeByte((((int) j4) & 127) | 128);
            j4 >>>= 7;
        }
        this.f56870a.writeByte((int) j4);
    }
}
