package com.squareup.wire;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.TagGameListActivity_;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtoReader.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 52\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u00100\u001a\u00020.¢\u0006\u0004\b3\u00104J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\tJ\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\tH\u0007J\u0006\u0010\u0010\u001a\u00020\u0002J\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0002J\u0006\u0010\u0018\u001a\u00020\tJ\u0006\u0010\u0019\u001a\u00020\u0002J\u0006\u0010\u001a\u001a\u00020\tJ'\u0010\u001d\u001a\u00020\r2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u001bH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0002J \u0010\"\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\u0001R\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020$0#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010%R\u0016\u0010(\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010'R\u0016\u0010)\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010'R\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010/R\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010*R\u0016\u00101\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010*R\u0016\u00102\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010'\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00066"}, d2 = {"Lcom/squareup/wire/m;", "", "", "expectedEndTag", "", ai.az, "h", "fieldEncoding", ai.aD, "", com.xinzhu.overmind.utils.helpers.d.f64708a, "e", "token", "Lokio/ByteString;", com.sdk.a.g.f56552a, "f", ai.aA, "Lcom/squareup/wire/FieldEncoding;", "j", net.lingala.zip4j.util.e.f73017f0, "k", "", "n", ai.av, "q", "l", "m", "Lkotlin/Function1;", "tagHandler", "a", "(Lkotlin/jvm/functions/Function1;)Lokio/ByteString;", TagGameListActivity_.f35885q0, "o", "value", "b", "", "Lokio/Buffer;", "Ljava/util/List;", "bufferStack", "J", "pushedLimit", "pos", "I", "recursionDepth", "Lcom/squareup/wire/FieldEncoding;", "nextFieldEncoding", "Lokio/BufferedSource;", "Lokio/BufferedSource;", "source", NoticeTopAnimActivityDialog_.f34402n, "limit", "<init>", "(Lokio/BufferedSource;)V", ai.aE, "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class m {

    /* renamed from: j  reason: collision with root package name */
    private static final int f56848j = 65;

    /* renamed from: k  reason: collision with root package name */
    private static final int f56849k = 7;

    /* renamed from: l  reason: collision with root package name */
    public static final int f56850l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f56851m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f56852n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f56853o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f56854p = 3;

    /* renamed from: q  reason: collision with root package name */
    private static final int f56855q = 4;

    /* renamed from: r  reason: collision with root package name */
    private static final int f56856r = 5;

    /* renamed from: s  reason: collision with root package name */
    private static final int f56857s = 6;

    /* renamed from: t  reason: collision with root package name */
    private static final int f56858t = 7;

    /* renamed from: u  reason: collision with root package name */
    public static final a f56859u = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private long f56860a;

    /* renamed from: b  reason: collision with root package name */
    private long f56861b;

    /* renamed from: c  reason: collision with root package name */
    private int f56862c;

    /* renamed from: d  reason: collision with root package name */
    private int f56863d;

    /* renamed from: e  reason: collision with root package name */
    private int f56864e;

    /* renamed from: f  reason: collision with root package name */
    private long f56865f;

    /* renamed from: g  reason: collision with root package name */
    private FieldEncoding f56866g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Buffer> f56867h;

    /* renamed from: i  reason: collision with root package name */
    private final BufferedSource f56868i;

    /* compiled from: ProtoReader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u0011"}, d2 = {"com/squareup/wire/m$a", "", "", "FIELD_ENCODING_MASK", "I", "RECURSION_LIMIT", "STATE_END_GROUP", "STATE_FIXED32", "STATE_FIXED64", "STATE_LENGTH_DELIMITED", "STATE_PACKED_TAG", "STATE_START_GROUP", "STATE_TAG", "STATE_VARINT", "TAG_FIELD_ENCODING_BITS", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public m(@NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f56868i = source;
        this.f56861b = Long.MAX_VALUE;
        this.f56863d = 2;
        this.f56864e = -1;
        this.f56865f = -1L;
        this.f56867h = new ArrayList();
    }

    private final void c(int i2) throws IOException {
        if (this.f56863d == i2) {
            this.f56863d = 6;
            return;
        }
        long j4 = this.f56860a;
        long j5 = this.f56861b;
        if (j4 > j5) {
            throw new IOException("Expected to end at " + this.f56861b + " but was " + this.f56860a);
        } else if (j4 == j5) {
            this.f56861b = this.f56865f;
            this.f56865f = -1L;
            this.f56863d = 6;
        } else {
            this.f56863d = 7;
        }
    }

    private final long d() throws IOException {
        if (this.f56863d == 2) {
            long j4 = this.f56861b - this.f56860a;
            this.f56868i.require(j4);
            this.f56863d = 6;
            this.f56860a = this.f56861b;
            this.f56861b = this.f56865f;
            this.f56865f = -1L;
            return j4;
        }
        throw new ProtocolException("Expected LENGTH_DELIMITED but was " + this.f56863d);
    }

    private final int h() {
        int i2;
        this.f56868i.require(1L);
        this.f56860a++;
        byte readByte = this.f56868i.readByte();
        if (readByte >= 0) {
            return readByte;
        }
        int i4 = readByte & ByteCompanionObject.MAX_VALUE;
        this.f56868i.require(1L);
        this.f56860a++;
        byte readByte2 = this.f56868i.readByte();
        if (readByte2 >= 0) {
            i2 = readByte2 << 7;
        } else {
            i4 |= (readByte2 & ByteCompanionObject.MAX_VALUE) << 7;
            this.f56868i.require(1L);
            this.f56860a++;
            byte readByte3 = this.f56868i.readByte();
            if (readByte3 >= 0) {
                i2 = readByte3 << 14;
            } else {
                i4 |= (readByte3 & ByteCompanionObject.MAX_VALUE) << 14;
                this.f56868i.require(1L);
                this.f56860a++;
                byte readByte4 = this.f56868i.readByte();
                if (readByte4 < 0) {
                    int i5 = i4 | ((readByte4 & ByteCompanionObject.MAX_VALUE) << 21);
                    this.f56868i.require(1L);
                    this.f56860a++;
                    byte readByte5 = this.f56868i.readByte();
                    int i6 = i5 | (readByte5 << BinaryMemcacheOpcodes.TOUCH);
                    if (readByte5 < 0) {
                        for (int i7 = 0; i7 <= 4; i7++) {
                            this.f56868i.require(1L);
                            this.f56860a++;
                            if (this.f56868i.readByte() >= 0) {
                                return i6;
                            }
                        }
                        throw new ProtocolException("Malformed VARINT");
                    }
                    return i6;
                }
                i2 = readByte4 << BinaryMemcacheOpcodes.INCREMENTQ;
            }
        }
        return i4 | i2;
    }

    private final void s(int i2) {
        while (this.f56860a < this.f56861b && !this.f56868i.exhausted()) {
            int h4 = h();
            if (h4 == 0) {
                throw new ProtocolException("Unexpected tag 0");
            }
            int i4 = h4 >> 3;
            int i5 = h4 & 7;
            if (i5 == 0) {
                this.f56863d = 0;
                q();
            } else if (i5 == 1) {
                this.f56863d = 1;
                m();
            } else if (i5 == 2) {
                long h5 = h();
                this.f56860a += h5;
                this.f56868i.skip(h5);
            } else if (i5 == 3) {
                s(i4);
            } else if (i5 == 4) {
                if (i4 != i2) {
                    throw new ProtocolException("Unexpected end group");
                }
                return;
            } else if (i5 == 5) {
                this.f56863d = 5;
                l();
            } else {
                throw new ProtocolException("Unexpected field encoding: " + i5);
            }
        }
        throw new EOFException();
    }

    @JvmName(name = "-forEachTag")
    @NotNull
    public final ByteString a(@NotNull Function1<? super Integer, ? extends Object> tagHandler) {
        Intrinsics.checkNotNullParameter(tagHandler, "tagHandler");
        long e4 = e();
        while (true) {
            int i2 = i();
            if (i2 == -1) {
                return g(e4);
            }
            tagHandler.invoke(Integer.valueOf(i2));
        }
    }

    public final void b(int i2, @NotNull FieldEncoding fieldEncoding, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        n nVar = new n(this.f56867h.get(this.f56862c - 1));
        ProtoAdapter<?> rawProtoAdapter = fieldEncoding.rawProtoAdapter();
        Objects.requireNonNull(rawProtoAdapter, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
        rawProtoAdapter.m(nVar, i2, obj);
    }

    public final long e() throws IOException {
        if (this.f56863d == 2) {
            int i2 = this.f56862c + 1;
            this.f56862c = i2;
            if (i2 <= 65) {
                if (i2 > this.f56867h.size()) {
                    this.f56867h.add(new Buffer());
                }
                long j4 = this.f56865f;
                this.f56865f = -1L;
                this.f56863d = 6;
                return j4;
            }
            throw new IOException("Wire recursion limit exceeded");
        }
        throw new IllegalStateException("Unexpected call to beginMessage()".toString());
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "prefer endMessageAndGetUnknownFields()", replaceWith = @ReplaceWith(expression = "endMessageAndGetUnknownFields(token)", imports = {}))
    public final void f(long j4) throws IOException {
        g(j4);
    }

    @NotNull
    public final ByteString g(long j4) throws IOException {
        boolean z3 = true;
        if (this.f56863d == 6) {
            int i2 = this.f56862c - 1;
            this.f56862c = i2;
            if ((i2 < 0 || this.f56865f != -1) ? false : false) {
                if (this.f56860a != this.f56861b && i2 != 0) {
                    throw new IOException("Expected to end at " + this.f56861b + " but was " + this.f56860a);
                }
                this.f56861b = j4;
                Buffer buffer = this.f56867h.get(i2);
                if (buffer.size() > 0) {
                    return buffer.readByteString();
                }
                return ByteString.EMPTY;
            }
            throw new IllegalStateException("No corresponding call to beginMessage()".toString());
        }
        throw new IllegalStateException("Unexpected call to endMessage()".toString());
    }

    public final int i() throws IOException {
        int i2 = this.f56863d;
        if (i2 == 7) {
            this.f56863d = 2;
            return this.f56864e;
        } else if (i2 == 6) {
            while (this.f56860a < this.f56861b && !this.f56868i.exhausted()) {
                int h4 = h();
                if (h4 != 0) {
                    int i4 = h4 >> 3;
                    this.f56864e = i4;
                    int i5 = h4 & 7;
                    if (i5 == 0) {
                        this.f56866g = FieldEncoding.VARINT;
                        this.f56863d = 0;
                        return i4;
                    } else if (i5 == 1) {
                        this.f56866g = FieldEncoding.FIXED64;
                        this.f56863d = 1;
                        return i4;
                    } else if (i5 == 2) {
                        this.f56866g = FieldEncoding.LENGTH_DELIMITED;
                        this.f56863d = 2;
                        int h5 = h();
                        if (h5 >= 0) {
                            if (this.f56865f == -1) {
                                long j4 = this.f56861b;
                                this.f56865f = j4;
                                long j5 = this.f56860a + h5;
                                this.f56861b = j5;
                                if (j5 <= j4) {
                                    return this.f56864e;
                                }
                                throw new EOFException();
                            }
                            throw new IllegalStateException();
                        }
                        throw new ProtocolException("Negative length: " + h5);
                    } else if (i5 != 3) {
                        if (i5 != 4) {
                            if (i5 == 5) {
                                this.f56866g = FieldEncoding.FIXED32;
                                this.f56863d = 5;
                                return i4;
                            }
                            throw new ProtocolException("Unexpected field encoding: " + i5);
                        }
                        throw new ProtocolException("Unexpected end group");
                    } else {
                        s(i4);
                    }
                } else {
                    throw new ProtocolException("Unexpected tag 0");
                }
            }
            return -1;
        } else {
            throw new IllegalStateException("Unexpected call to nextTag()");
        }
    }

    @Nullable
    public final FieldEncoding j() {
        return this.f56866g;
    }

    @NotNull
    public final ByteString k() throws IOException {
        long d4 = d();
        this.f56868i.require(d4);
        return this.f56868i.readByteString(d4);
    }

    public final int l() throws IOException {
        int i2 = this.f56863d;
        if (i2 != 5 && i2 != 2) {
            throw new ProtocolException("Expected FIXED32 or LENGTH_DELIMITED but was " + this.f56863d);
        }
        this.f56868i.require(4L);
        this.f56860a += 4;
        int readIntLe = this.f56868i.readIntLe();
        c(5);
        return readIntLe;
    }

    public final long m() throws IOException {
        int i2 = this.f56863d;
        if (i2 != 1 && i2 != 2) {
            throw new ProtocolException("Expected FIXED64 or LENGTH_DELIMITED but was " + this.f56863d);
        }
        this.f56868i.require(8L);
        this.f56860a += 8;
        long readLongLe = this.f56868i.readLongLe();
        c(1);
        return readLongLe;
    }

    @NotNull
    public final String n() throws IOException {
        long d4 = d();
        this.f56868i.require(d4);
        return this.f56868i.readUtf8(d4);
    }

    public final void o(int i2) {
        FieldEncoding j4 = j();
        Intrinsics.checkNotNull(j4);
        b(i2, j4, j4.rawProtoAdapter().c(this));
    }

    public final int p() throws IOException {
        int i2 = this.f56863d;
        if (i2 != 0 && i2 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f56863d);
        }
        int h4 = h();
        c(0);
        return h4;
    }

    public final long q() throws IOException {
        byte readByte;
        int i2 = this.f56863d;
        if (i2 != 0 && i2 != 2) {
            throw new ProtocolException("Expected VARINT or LENGTH_DELIMITED but was " + this.f56863d);
        }
        long j4 = 0;
        for (int i4 = 0; i4 < 64; i4 += 7) {
            this.f56868i.require(1L);
            this.f56860a++;
            j4 |= (readByte & ByteCompanionObject.MAX_VALUE) << i4;
            if ((this.f56868i.readByte() & 128) == 0) {
                c(0);
                return j4;
            }
        }
        throw new ProtocolException("WireInput encountered a malformed varint");
    }

    public final void r() throws IOException {
        int i2 = this.f56863d;
        if (i2 == 0) {
            q();
        } else if (i2 == 1) {
            m();
        } else if (i2 == 2) {
            this.f56868i.skip(d());
        } else if (i2 == 5) {
            l();
        } else {
            throw new IllegalStateException("Unexpected call to skip()");
        }
    }
}
