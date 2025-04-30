package com.squareup.wire;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.TagGameListActivity_;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.umeng.analytics.pro.ai;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Message.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000e\b&\u0018\u0000 \u0014*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u00020\u0004:\u0002\u001a\u0017B\u001f\b\u0004\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\u0012\u0006\u0010(\u001a\u00020\u0013¢\u0006\u0004\b)\u0010*J\u000f\u0010\u0005\u001a\u00028\u0001H&¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0004J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015R\u001f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00188\u0007@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001d8\u0004@\u0004X\u0085\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001eR\"\u0010$\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u001e\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0019\u0010(\u001a\u00020\u00138G@\u0006¢\u0006\f\n\u0004\b\u001a\u0010%\u001a\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Ljava/io/Serializable;", com.sdk.a.g.f56552a, "()Lcom/squareup/wire/Message$a;", "j", "()Lcom/squareup/wire/Message;", "", "toString", "", "writeReplace", "Lokio/BufferedSink;", "sink", "", ai.aD, "", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lokio/ByteString;", "e", "Ljava/io/OutputStream;", "stream", "b", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "a", "()Lcom/squareup/wire/ProtoAdapter;", "adapter", "", "I", TTDownloadField.TT_HASHCODE, "f", "()I", "h", "(I)V", "cachedSerializedSize", "Lokio/ByteString;", ai.aA, "()Lokio/ByteString;", "unknownFields", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class Message<M extends Message<M, B>, B extends a<M, B>> implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    public static final b f56761e = new b(null);
    private static final long serialVersionUID = 0;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final transient ByteString f56762a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f56763b;
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    protected transient int f56764c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final transient ProtoAdapter<M> f56765d;

    /* compiled from: Message.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\u0014\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0001*\u0014\b\u0003\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u00020\u0005B\t\b\u0004¢\u0006\u0004\b)\u0010*J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0006\u0010\t\u001a\u00020\bJ,\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003J\u0006\u0010\u0012\u001a\u00020\bJ\u000f\u0010\u0013\u001a\u00028\u0002H&¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u001a\u001a\u00020\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010!\u001a\u0004\u0018\u00010\u001b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010(\u001a\u0004\u0018\u00010\"8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\n\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006+"}, d2 = {"com/squareup/wire/Message$a", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "", "", ai.aA, "Lokio/ByteString;", "unknownFields", "b", "", TagGameListActivity_.f35885q0, "Lcom/squareup/wire/FieldEncoding;", "fieldEncoding", "value", "a", "e", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "()Lcom/squareup/wire/Message;", "Lokio/ByteString;", com.sdk.a.g.f56552a, "()Lokio/ByteString;", "k", "(Lokio/ByteString;)V", "unknownFieldsByteString", "Lcom/squareup/wire/n;", "Lcom/squareup/wire/n;", "h", "()Lcom/squareup/wire/n;", "l", "(Lcom/squareup/wire/n;)V", "unknownFieldsWriter", "Lokio/Buffer;", "Lokio/Buffer;", "f", "()Lokio/Buffer;", "j", "(Lokio/Buffer;)V", "unknownFieldsBuffer", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static abstract class a<M extends Message<M, B>, B extends a<M, B>> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private transient ByteString f56766a = ByteString.EMPTY;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private transient Buffer f56767b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private transient n f56768c;

        protected a() {
        }

        private final void i() {
            if (this.f56767b == null) {
                this.f56767b = new Buffer();
                Buffer buffer = this.f56767b;
                Intrinsics.checkNotNull(buffer);
                n nVar = new n(buffer);
                this.f56768c = nVar;
                Intrinsics.checkNotNull(nVar);
                nVar.a(this.f56766a);
                this.f56766a = ByteString.EMPTY;
            }
        }

        @NotNull
        public final a<M, B> a(int i2, @NotNull FieldEncoding fieldEncoding, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
            i();
            ProtoAdapter<?> rawProtoAdapter = fieldEncoding.rawProtoAdapter();
            Objects.requireNonNull(rawProtoAdapter, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
            n nVar = this.f56768c;
            Intrinsics.checkNotNull(nVar);
            rawProtoAdapter.m(nVar, i2, obj);
            return this;
        }

        @NotNull
        public final a<M, B> b(@NotNull ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            if (unknownFields.size() > 0) {
                i();
                n nVar = this.f56768c;
                Intrinsics.checkNotNull(nVar);
                nVar.a(unknownFields);
            }
            return this;
        }

        @NotNull
        public abstract M c();

        @NotNull
        public final ByteString d() {
            Buffer buffer = this.f56767b;
            if (buffer != null) {
                Intrinsics.checkNotNull(buffer);
                this.f56766a = buffer.readByteString();
                this.f56767b = null;
                this.f56768c = null;
            }
            return this.f56766a;
        }

        @NotNull
        public final a<M, B> e() {
            this.f56766a = ByteString.EMPTY;
            Buffer buffer = this.f56767b;
            if (buffer != null) {
                Intrinsics.checkNotNull(buffer);
                buffer.clear();
                this.f56767b = null;
            }
            this.f56768c = null;
            return this;
        }

        @Nullable
        public final Buffer f() {
            return this.f56767b;
        }

        @NotNull
        public final ByteString g() {
            return this.f56766a;
        }

        @Nullable
        public final n h() {
            return this.f56768c;
        }

        public final void j(@Nullable Buffer buffer) {
            this.f56767b = buffer;
        }

        public final void k(@NotNull ByteString byteString) {
            Intrinsics.checkNotNullParameter(byteString, "<set-?>");
            this.f56766a = byteString;
        }

        public final void l(@Nullable n nVar) {
            this.f56768c = nVar;
        }
    }

    /* compiled from: Message.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"com/squareup/wire/Message$b", "", "", "serialVersionUID", "J", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Message(@NotNull ProtoAdapter<M> adapter, @NotNull ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.f56765d = adapter;
        this.f56762a = unknownFields;
    }

    @JvmName(name = "adapter")
    @NotNull
    public final ProtoAdapter<M> a() {
        return this.f56765d;
    }

    public final void b(@NotNull OutputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        this.f56765d.i(stream, this);
    }

    public final void c(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f56765d.j(sink, this);
    }

    @NotNull
    public final byte[] d() {
        return this.f56765d.k(this);
    }

    @NotNull
    public final ByteString e() {
        return this.f56765d.l(this);
    }

    public final int f() {
        return this.f56763b;
    }

    @NotNull
    public abstract B g();

    public final void h(int i2) {
        this.f56763b = i2;
    }

    @JvmName(name = "unknownFields")
    @NotNull
    public final ByteString i() {
        ByteString byteString = this.f56762a;
        return byteString == null ? ByteString.EMPTY : byteString;
    }

    @NotNull
    public final M j() {
        return g().e().c();
    }

    @NotNull
    public String toString() {
        return this.f56765d.F(this);
    }

    @NotNull
    protected final Object writeReplace() throws ObjectStreamException {
        return new MessageSerializedForm(d(), getClass());
    }
}
