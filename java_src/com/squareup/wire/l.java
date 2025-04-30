package com.squareup.wire;

import com.join.mgps.activity.TagGameListActivity_;
import com.squareup.wire.WireField;
import com.squareup.wire.n;
import com.umeng.analytics.pro.ai;
import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtoAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u009c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\u001a2\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0080\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a:\u0010\n\u001a\u00020\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0080\b¢\u0006\u0004\b\n\u0010\u000b\u001a0\u0010\u000e\u001a\u00020\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a(\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a(\u0010\u0014\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0004\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\u0014\u0010\u0015\u001a(\u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0016\u001a\u00020\u0010H\u0080\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a(\u0010\u0019\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0016\u001a\u00020\u0013H\u0080\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a(\u0010\u001d\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001c\u001a\u00020\u001bH\u0080\b¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001e\u0010 \u001a\u00020\u001f\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0004\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b \u0010!\u001a%\u0010$\u001a\u0006\u0012\u0002\b\u00030\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010#\u001a\u00020\"H\u0080\b\u001a%\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000%0\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b\u001a%\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000%0\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\b\u001aC\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010,0\u0001\"\u0004\b\u0000\u0010(\"\u0004\b\u0001\u0010)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H\u0080\b\u001a\u000e\u0010/\u001a\b\u0012\u0004\u0012\u00020.0\u0001H\u0000\u001a\u000e\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u001a\u000e\u00101\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u001a\u000e\u00102\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u001a\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u001a\u000e\u00104\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u001a\u000e\u00106\u001a\b\u0012\u0004\u0012\u0002050\u0001H\u0000\u001a\u000e\u00107\u001a\b\u0012\u0004\u0012\u0002050\u0001H\u0000\u001a\u000e\u00108\u001a\b\u0012\u0004\u0012\u0002050\u0001H\u0000\u001a\u000e\u00109\u001a\b\u0012\u0004\u0012\u0002050\u0001H\u0000\u001a\u000e\u0010:\u001a\b\u0012\u0004\u0012\u0002050\u0001H\u0000\u001a\u000e\u0010<\u001a\b\u0012\u0004\u0012\u00020;0\u0001H\u0000\u001a\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00020=0\u0001H\u0000\u001a\u000e\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0001H\u0000\u001a\u000e\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00130\u0001H\u0000\u001a\u0012\u0010C\u001a\f\u0012\b\u0012\u00060Aj\u0002`B0\u0001H\u0000\u001a\u0012\u0010F\u001a\f\u0012\b\u0012\u00060Dj\u0002`E0\u0001H\u0000\u001a\u000e\u0010G\u001a\b\u0012\u0004\u0012\u00020\t0\u0001H\u0000\u001a\u001a\u0010H\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0002\b\u0003\u0018\u00010,0\u0001H\u0000\u001a\u0014\u0010I\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010%0\u0001H\u0000\u001a\u0010\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010J0\u0001H\u0000\u001a\u0010\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010L0\u0001H\u0000\u001a0\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001\"\b\b\u0000\u0010M*\u00020L2\f\u0010N\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010O\u001a\u00020\u001fH\u0000\"\u0016\u0010Q\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b@\u0010$\"\u0016\u0010R\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010$\"\u0016\u0010S\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010$¨\u0006T"}, d2 = {"E", "Lcom/squareup/wire/ProtoAdapter;", "", TagGameListActivity_.f35885q0, "value", "o", "(Lcom/squareup/wire/ProtoAdapter;ILjava/lang/Object;)I", "Lcom/squareup/wire/n;", "writer", "", "n", "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/n;ILjava/lang/Object;)V", "Lokio/BufferedSink;", "sink", "k", "(Lcom/squareup/wire/ProtoAdapter;Lokio/BufferedSink;Ljava/lang/Object;)V", "", "l", "(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Object;)[B", "Lokio/ByteString;", "m", "(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Object;)Lokio/ByteString;", "bytes", com.sdk.a.g.f56552a, "(Lcom/squareup/wire/ProtoAdapter;[B)Ljava/lang/Object;", "f", "(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)Ljava/lang/Object;", "Lokio/BufferedSource;", "source", "e", "(Lcom/squareup/wire/ProtoAdapter;Lokio/BufferedSource;)Ljava/lang/Object;", "", "F", "(Ljava/lang/Object;)Ljava/lang/String;", "Lcom/squareup/wire/WireField$Label;", "label", "I", "", ai.aD, com.xinzhu.overmind.utils.helpers.d.f64708a, "K", "V", "keyAdapter", "valueAdapter", "", "v", "", "a", ai.aF, "G", "y", ai.av, "w", "", ai.aE, "H", ai.aB, "q", "x", "", net.lingala.zip4j.util.e.f73017f0, "", "h", "A", "b", "Ljava/time/Duration;", "Lcom/squareup/wire/Duration;", ai.aA, "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", ai.az, "j", "C", "B", "", "D", "", "T", "delegate", "typeUrl", "J", "FIXED_32_SIZE", "FIXED_64_SIZE", "FIXED_BOOL_SIZE", "wire-runtime"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final int f56845a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final int f56846b = 4;

    /* renamed from: c  reason: collision with root package name */
    private static final int f56847c = 8;

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$a", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Boolean;", "K", "(Z)Ljava/lang/Boolean;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a extends ProtoAdapter<Boolean> {
        a(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Boolean E(Boolean bool) {
            return K(bool.booleanValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Boolean c(@NotNull com.squareup.wire.m reader) throws IOException {
            int checkRadix;
            String padStart;
            Intrinsics.checkNotNullParameter(reader, "reader");
            int p3 = reader.p();
            boolean z3 = true;
            if (p3 == 0) {
                z3 = false;
            } else if (p3 != 1) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid boolean value 0x");
                checkRadix = CharsKt__CharJVMKt.checkRadix(16);
                String num = Integer.toString(p3, checkRadix);
                Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
                padStart = StringsKt__StringsKt.padStart(num, 2, '0');
                sb.append(padStart);
                throw new IOException(sb.toString());
            }
            return Boolean.valueOf(z3);
        }

        public void I(@NotNull com.squareup.wire.n writer, boolean z3) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(z3 ? 1 : 0);
        }

        public int J(boolean z3) {
            return 1;
        }

        @NotNull
        public Boolean K(boolean z3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Boolean bool) {
            I(nVar, bool.booleanValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Boolean bool) {
            return J(bool.booleanValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u000e"}, d2 = {"com/squareup/wire/l$b", "Lcom/squareup/wire/ProtoAdapter;", "Lokio/ByteString;", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "K", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class b extends ProtoAdapter<ByteString> {
        b(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public ByteString c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return reader.k();
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @NotNull ByteString value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.a(value);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value.size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: K */
        public ByteString E(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$c", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Double;", "K", "(D)Ljava/lang/Double;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class c extends ProtoAdapter<Double> {
        c(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Double E(Double d4) {
            return K(d4.doubleValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Double c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            DoubleCompanionObject doubleCompanionObject = DoubleCompanionObject.INSTANCE;
            return Double.valueOf(Double.longBitsToDouble(reader.m()));
        }

        public void I(@NotNull com.squareup.wire.n writer, double d4) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.c(Double.doubleToLongBits(d4));
        }

        public int J(double d4) {
            return 8;
        }

        @NotNull
        public Double K(double d4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Double d4) {
            I(nVar, d4.doubleValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Double d4) {
            return J(d4.doubleValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\r\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016R\u001e\u0010\u0012\u001a\u00020\u000f*\u00060\u0002j\u0002`\u00038B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0015\u001a\u00020\u0005*\u00060\u0002j\u0002`\u00038B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"com/squareup/wire/l$d", "Lcom/squareup/wire/ProtoAdapter;", "Ljava/time/Duration;", "Lcom/squareup/wire/Duration;", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "M", "", "L", "(Ljava/time/Duration;)J", "sameSignSeconds", "K", "(Ljava/time/Duration;)I", "sameSignNanos", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class d extends ProtoAdapter<Duration> {
        d(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        private final int K(Duration duration) {
            return (duration.getSeconds() >= 0 || duration.getNano() == 0) ? duration.getNano() : duration.getNano() - 1000000000;
        }

        private final long L(Duration duration) {
            return (duration.getSeconds() >= 0 || duration.getNano() == 0) ? duration.getSeconds() : duration.getSeconds() + 1;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Duration c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long e4 = reader.e();
            long j4 = 0;
            int i2 = 0;
            while (true) {
                int i4 = reader.i();
                if (i4 == -1) {
                    reader.g(e4);
                    Duration ofSeconds = Duration.ofSeconds(j4, i2);
                    Intrinsics.checkNotNullExpressionValue(ofSeconds, "Duration.ofSeconds(seconds, nano)");
                    return ofSeconds;
                } else if (i4 == 1) {
                    j4 = ProtoAdapter.f56778n.c(reader).longValue();
                } else if (i4 != 2) {
                    reader.o(i4);
                } else {
                    i2 = ProtoAdapter.f56773i.c(reader).intValue();
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @NotNull Duration value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            long L = L(value);
            if (L != 0) {
                ProtoAdapter.f56778n.m(writer, 1, Long.valueOf(L));
            }
            int K = K(value);
            if (K != 0) {
                ProtoAdapter.f56773i.m(writer, 2, Integer.valueOf(K));
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@NotNull Duration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            long L = L(value);
            int o3 = L != 0 ? 0 + ProtoAdapter.f56778n.o(1, Long.valueOf(L)) : 0;
            int K = K(value);
            return K != 0 ? o3 + ProtoAdapter.f56773i.o(2, Integer.valueOf(K)) : o3;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: M */
        public Duration E(@NotNull Duration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$e", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "(Lkotlin/Unit;)I", "Lcom/squareup/wire/n;", "writer", "I", "(Lcom/squareup/wire/n;Lkotlin/Unit;)V", "Lcom/squareup/wire/m;", "reader", "H", "K", "(Lkotlin/Unit;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class e extends ProtoAdapter<Unit> {
        e(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Unit E(Unit unit) {
            K(unit);
            return Unit.INSTANCE;
        }

        public void H(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long e4 = reader.e();
            while (true) {
                int i2 = reader.i();
                if (i2 == -1) {
                    reader.g(e4);
                    return;
                }
                reader.o(i2);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @NotNull Unit value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@NotNull Unit value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return 0;
        }

        public void K(@NotNull Unit value) {
            Intrinsics.checkNotNullParameter(value, "value");
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Unit c(com.squareup.wire.m mVar) {
            H(mVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/squareup/wire/l$f", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Integer;", "K", "(I)Ljava/lang/Integer;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class f extends ProtoAdapter<Integer> {
        f(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer E(Integer num) {
            return K(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Integer c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(reader.l());
        }

        public void I(@NotNull com.squareup.wire.n writer, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.b(i2);
        }

        public int J(int i2) {
            return 4;
        }

        @NotNull
        public Integer K(int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Integer num) {
            I(nVar, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Integer num) {
            return J(num.intValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$g", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Long;", "K", "(J)Ljava/lang/Long;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class g extends ProtoAdapter<Long> {
        g(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long E(Long l4) {
            return K(l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Long c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(reader.m());
        }

        public void I(@NotNull com.squareup.wire.n writer, long j4) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.c(j4);
        }

        public int J(long j4) {
            return 8;
        }

        @NotNull
        public Long K(long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Long l4) {
            I(nVar, l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Long l4) {
            return J(l4.longValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$h", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Float;", "K", "(F)Ljava/lang/Float;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class h extends ProtoAdapter<Float> {
        h(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Float E(Float f4) {
            return K(f4.floatValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Float c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.valueOf(Float.intBitsToFloat(reader.l()));
        }

        public void I(@NotNull com.squareup.wire.n writer, float f4) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.b(Float.floatToIntBits(f4));
        }

        public int J(float f4) {
            return 4;
        }

        @NotNull
        public Float K(float f4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Float f4) {
            I(nVar, f4.floatValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Float f4) {
            return J(f4.floatValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0014\u0010\r\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u000f"}, d2 = {"com/squareup/wire/l$i", "Lcom/squareup/wire/ProtoAdapter;", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "K", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class i extends ProtoAdapter<Instant> {
        i(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Instant c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long e4 = reader.e();
            long j4 = 0;
            int i2 = 0;
            while (true) {
                int i4 = reader.i();
                if (i4 == -1) {
                    reader.g(e4);
                    Instant ofEpochSecond = Instant.ofEpochSecond(j4, i2);
                    Intrinsics.checkNotNullExpressionValue(ofEpochSecond, "Instant.ofEpochSecond(epochSecond, nano)");
                    return ofEpochSecond;
                } else if (i4 == 1) {
                    j4 = ProtoAdapter.f56778n.c(reader).longValue();
                } else if (i4 != 2) {
                    reader.o(i4);
                } else {
                    i2 = ProtoAdapter.f56773i.c(reader).intValue();
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @NotNull Instant value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            long epochSecond = value.getEpochSecond();
            if (epochSecond != 0) {
                ProtoAdapter.f56778n.m(writer, 1, Long.valueOf(epochSecond));
            }
            int nano = value.getNano();
            if (nano != 0) {
                ProtoAdapter.f56773i.m(writer, 2, Integer.valueOf(nano));
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@NotNull Instant value) {
            Intrinsics.checkNotNullParameter(value, "value");
            long epochSecond = value.getEpochSecond();
            int o3 = epochSecond != 0 ? 0 + ProtoAdapter.f56778n.o(1, Long.valueOf(epochSecond)) : 0;
            int nano = value.getNano();
            return nano != 0 ? o3 + ProtoAdapter.f56773i.o(2, Integer.valueOf(nano)) : o3;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: K */
        public Instant E(@NotNull Instant value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/squareup/wire/l$j", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Integer;", "K", "(I)Ljava/lang/Integer;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class j extends ProtoAdapter<Integer> {
        j(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer E(Integer num) {
            return K(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Integer c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(reader.p());
        }

        public void I(@NotNull com.squareup.wire.n writer, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.d(i2);
        }

        public int J(int i2) {
            return com.squareup.wire.n.f56869b.f(i2);
        }

        @NotNull
        public Integer K(int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Integer num) {
            I(nVar, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Integer num) {
            return J(num.intValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$k", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Long;", "K", "(J)Ljava/lang/Long;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class k extends ProtoAdapter<Long> {
        k(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long E(Long l4) {
            return K(l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Long c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(reader.q());
        }

        public void I(@NotNull com.squareup.wire.n writer, long j4) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(j4);
        }

        public int J(long j4) {
            return com.squareup.wire.n.f56869b.j(j4);
        }

        @NotNull
        public Long K(long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Long l4) {
            I(nVar, l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Long l4) {
            return J(l4.longValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/squareup/wire/l$l", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Integer;", "K", "(I)Ljava/lang/Integer;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.squareup.wire.l$l  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0288l extends ProtoAdapter<Integer> {
        C0288l(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer E(Integer num) {
            return K(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Integer c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(com.squareup.wire.n.f56869b.b(reader.p()));
        }

        public void I(@NotNull com.squareup.wire.n writer, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(com.squareup.wire.n.f56869b.d(i2));
        }

        public int J(int i2) {
            n.a aVar = com.squareup.wire.n.f56869b;
            return aVar.i(aVar.d(i2));
        }

        @NotNull
        public Integer K(int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Integer num) {
            I(nVar, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Integer num) {
            return J(num.intValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$m", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Long;", "K", "(J)Ljava/lang/Long;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class m extends ProtoAdapter<Long> {
        m(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long E(Long l4) {
            return K(l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Long c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(com.squareup.wire.n.f56869b.c(reader.q()));
        }

        public void I(@NotNull com.squareup.wire.n writer, long j4) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(com.squareup.wire.n.f56869b.e(j4));
        }

        public int J(long j4) {
            n.a aVar = com.squareup.wire.n.f56869b;
            return aVar.j(aVar.e(j4));
        }

        @NotNull
        public Long K(long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Long l4) {
            I(nVar, l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Long l4) {
            return J(l4.longValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u000e"}, d2 = {"com/squareup/wire/l$n", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "K", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class n extends ProtoAdapter<String> {
        n(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public String c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return reader.n();
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @NotNull String value) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.e(value);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return (int) Utf8.size$default(value, 0, 0, 3, null);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: K */
        public String E(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0001J\u0016\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016J\u0016\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J \u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u00022\f\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016¨\u0006\u000f"}, d2 = {"com/squareup/wire/l$o", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "", "K", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class o extends ProtoAdapter<List<?>> {
        o(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* renamed from: H */
        public List<?> c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            ArrayList arrayList = new ArrayList();
            long e4 = reader.e();
            while (true) {
                int i2 = reader.i();
                if (i2 == -1) {
                    reader.g(e4);
                    return arrayList;
                } else if (i2 != 1) {
                    reader.r();
                } else {
                    arrayList.add(ProtoAdapter.A.c(reader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @Nullable List<?> list) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (list == null) {
                return;
            }
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                ProtoAdapter.A.m(writer, 1, it2.next());
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@Nullable List<?> list) {
            int i2 = 0;
            if (list == null) {
                return 0;
            }
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                i2 += ProtoAdapter.A.o(1, it2.next());
            }
            return i2;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* renamed from: K */
        public List<Object> E(@Nullable List<?> list) {
            int collectionSizeOrDefault;
            if (list != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(ProtoAdapter.A.E(it2.next()));
                }
                return arrayList;
            }
            return null;
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0018\u00010\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016J$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016J\u001c\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016J,\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$p", "Lcom/squareup/wire/ProtoAdapter;", "", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "", "K", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class p extends ProtoAdapter<Map<String, ?>> {
        p(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* renamed from: H */
        public Map<String, ?> c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long e4 = reader.e();
            while (true) {
                int i2 = reader.i();
                if (i2 == -1) {
                    reader.g(e4);
                    return linkedHashMap;
                } else if (i2 != 1) {
                    reader.r();
                } else {
                    long e5 = reader.e();
                    String str = null;
                    Object obj = null;
                    while (true) {
                        int i4 = reader.i();
                        if (i4 == -1) {
                            break;
                        } else if (i4 == 1) {
                            str = ProtoAdapter.f56786v.c(reader);
                        } else if (i4 != 2) {
                            reader.o(i4);
                        } else {
                            obj = ProtoAdapter.A.c(reader);
                        }
                    }
                    reader.g(e5);
                    if (str != null) {
                        Intrinsics.checkNotNull(str);
                        linkedHashMap.put(str, obj);
                    }
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @Nullable Map<String, ?> map) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (map == null) {
                return;
            }
            for (Map.Entry<String, ?> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                ProtoAdapter<String> protoAdapter = ProtoAdapter.f56786v;
                int o3 = protoAdapter.o(1, key);
                ProtoAdapter<Object> protoAdapter2 = ProtoAdapter.A;
                int o4 = o3 + protoAdapter2.o(2, value);
                writer.f(1, FieldEncoding.LENGTH_DELIMITED);
                writer.g(o4);
                protoAdapter.m(writer, 1, key);
                protoAdapter2.m(writer, 2, value);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public int n(@Nullable Map<String, ?> map) {
            int i2 = 0;
            if (map == null) {
                return 0;
            }
            for (Map.Entry<String, ?> entry : map.entrySet()) {
                Object value = entry.getValue();
                int o3 = ProtoAdapter.f56786v.o(1, entry.getKey()) + ProtoAdapter.A.o(2, value);
                n.a aVar = com.squareup.wire.n.f56869b;
                i2 += aVar.h(1) + aVar.i(o3) + o3;
            }
            return i2;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* renamed from: K */
        public Map<String, Object> E(@Nullable Map<String, ?> map) {
            if (map != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
                Iterator<T> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    linkedHashMap.put(entry.getKey(), ProtoAdapter.A.E(entry));
                }
                return linkedHashMap;
            }
            return null;
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\"\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0011"}, d2 = {"com/squareup/wire/l$q", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "K", TagGameListActivity_.f35885q0, "L", "Lcom/squareup/wire/n;", "writer", "", "I", "J", "Lcom/squareup/wire/m;", "reader", "H", "M", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class q extends ProtoAdapter {
        q(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* renamed from: H */
        public Void c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            int p3 = reader.p();
            if (p3 == 0) {
                return null;
            }
            throw new IOException("expected 0 but was " + p3);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: I */
        public void h(@NotNull com.squareup.wire.n writer, @Nullable Void r22) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: J */
        public void m(@NotNull com.squareup.wire.n writer, int i2, @Nullable Void r4) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.f(i2, s());
            h(writer, r4);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: K */
        public int n(@Nullable Void r22) {
            return com.squareup.wire.n.f56869b.i(0);
        }

        @Override // com.squareup.wire.ProtoAdapter
        /* renamed from: L */
        public int o(int i2, @Nullable Void r3) {
            int n4 = n(r3);
            n.a aVar = com.squareup.wire.n.f56869b;
            return aVar.h(i2) + aVar.i(n4);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        /* renamed from: M */
        public Void E(@Nullable Void r12) {
            return null;
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\"\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0011"}, d2 = {"com/squareup/wire/l$r", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "n", TagGameListActivity_.f35885q0, "o", "Lcom/squareup/wire/n;", "writer", "", "h", "m", "Lcom/squareup/wire/m;", "reader", ai.aD, "E", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class r extends ProtoAdapter<Object> {
        r(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax) {
            super(fieldEncoding, kClass, str, syntax);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public Object E(@Nullable Object obj) {
            if (obj == null) {
                return ProtoAdapter.f56790z.E(obj);
            }
            if (obj instanceof Number) {
                return obj;
            }
            if (obj instanceof String) {
                return null;
            }
            if (obj instanceof Boolean) {
                return obj;
            }
            if (obj instanceof Map) {
                return ProtoAdapter.f56788x.E((Map) obj);
            }
            if (obj instanceof List) {
                return ProtoAdapter.f56789y.E(obj);
            }
            throw new IllegalArgumentException("unexpected struct value: " + obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public Object c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long e4 = reader.e();
            Object obj = null;
            while (true) {
                int i2 = reader.i();
                if (i2 == -1) {
                    reader.g(e4);
                    return obj;
                }
                switch (i2) {
                    case 1:
                        obj = ProtoAdapter.f56790z.c(reader);
                        break;
                    case 2:
                        obj = ProtoAdapter.f56784t.c(reader);
                        break;
                    case 3:
                        obj = ProtoAdapter.f56786v.c(reader);
                        break;
                    case 4:
                        obj = ProtoAdapter.f56772h.c(reader);
                        break;
                    case 5:
                        obj = ProtoAdapter.f56788x.c(reader);
                        break;
                    case 6:
                        obj = ProtoAdapter.f56789y.c(reader);
                        break;
                    default:
                        reader.r();
                        break;
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void h(@NotNull com.squareup.wire.n writer, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (obj == null) {
                ProtoAdapter.f56790z.m(writer, 1, obj);
            } else if (obj instanceof Number) {
                ProtoAdapter.f56784t.m(writer, 2, Double.valueOf(((Number) obj).doubleValue()));
            } else if (obj instanceof String) {
                ProtoAdapter.f56786v.m(writer, 3, obj);
            } else if (obj instanceof Boolean) {
                ProtoAdapter.f56772h.m(writer, 4, obj);
            } else if (obj instanceof Map) {
                ProtoAdapter.f56788x.m(writer, 5, (Map) obj);
            } else if (obj instanceof List) {
                ProtoAdapter.f56789y.m(writer, 6, obj);
            } else {
                throw new IllegalArgumentException("unexpected struct value: " + obj);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void m(@NotNull com.squareup.wire.n writer, int i2, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (obj == null) {
                writer.f(i2, s());
                writer.g(n(obj));
                h(writer, obj);
                return;
            }
            super.m(writer, i2, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int n(@Nullable Object obj) {
            if (obj == null) {
                return ProtoAdapter.f56790z.o(1, obj);
            }
            if (obj instanceof Number) {
                return ProtoAdapter.f56784t.o(2, Double.valueOf(((Number) obj).doubleValue()));
            }
            if (obj instanceof String) {
                return ProtoAdapter.f56786v.o(3, obj);
            }
            if (obj instanceof Boolean) {
                return ProtoAdapter.f56772h.o(4, obj);
            }
            if (obj instanceof Map) {
                return ProtoAdapter.f56788x.o(5, (Map) obj);
            }
            if (obj instanceof List) {
                return ProtoAdapter.f56789y.o(6, obj);
            }
            throw new IllegalArgumentException("unexpected struct value: " + obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int o(int i2, @Nullable Object obj) {
            if (obj == null) {
                int n4 = n(obj);
                n.a aVar = com.squareup.wire.n.f56869b;
                return aVar.h(i2) + aVar.i(n4) + n4;
            }
            return super.o(i2, obj);
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/squareup/wire/l$s", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Integer;", "K", "(I)Ljava/lang/Integer;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class s extends ProtoAdapter<Integer> {
        s(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Integer E(Integer num) {
            return K(num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Integer c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Integer.valueOf(reader.p());
        }

        public void I(@NotNull com.squareup.wire.n writer, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.g(i2);
        }

        public int J(int i2) {
            return com.squareup.wire.n.f56869b.i(i2);
        }

        @NotNull
        public Integer K(int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Integer num) {
            I(nVar, num.intValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Integer num) {
            return J(num.intValue());
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"com/squareup/wire/l$t", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "", "J", "Lcom/squareup/wire/n;", "writer", "", "I", "Lcom/squareup/wire/m;", "reader", "H", "(Lcom/squareup/wire/m;)Ljava/lang/Long;", "K", "(J)Ljava/lang/Long;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class t extends ProtoAdapter<Long> {
        t(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str, syntax, obj);
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ Long E(Long l4) {
            return K(l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        @NotNull
        /* renamed from: H */
        public Long c(@NotNull com.squareup.wire.m reader) throws IOException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return Long.valueOf(reader.q());
        }

        public void I(@NotNull com.squareup.wire.n writer, long j4) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            writer.h(j4);
        }

        public int J(long j4) {
            return com.squareup.wire.n.f56869b.j(j4);
        }

        @NotNull
        public Long K(long j4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ void h(com.squareup.wire.n nVar, Long l4) {
            I(nVar, l4.longValue());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public /* bridge */ /* synthetic */ int n(Long l4) {
            return J(l4.longValue());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\u0019\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u000f\u001a\u0004\u0018\u00018\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"com/squareup/wire/l$u", "Lcom/squareup/wire/ProtoAdapter;", "value", "", "n", "(Ljava/lang/Object;)I", "Lcom/squareup/wire/n;", "writer", "", "h", "(Lcom/squareup/wire/n;Ljava/lang/Object;)V", "Lcom/squareup/wire/m;", "reader", ai.aD, "(Lcom/squareup/wire/m;)Ljava/lang/Object;", "E", "(Ljava/lang/Object;)Ljava/lang/Object;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class u<T> extends ProtoAdapter<T> {
        final /* synthetic */ ProtoAdapter N;
        final /* synthetic */ String O;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(ProtoAdapter protoAdapter, String str, FieldEncoding fieldEncoding, KClass kClass, String str2, Syntax syntax, Object obj) {
            super(fieldEncoding, kClass, str2, syntax, obj);
            this.N = protoAdapter;
            this.O = str;
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public T E(@Nullable T t3) {
            if (t3 == null) {
                return null;
            }
            return (T) this.N.E(t3);
        }

        @Override // com.squareup.wire.ProtoAdapter
        @Nullable
        public T c(@NotNull com.squareup.wire.m reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            long e4 = reader.e();
            T t3 = null;
            while (true) {
                int i2 = reader.i();
                if (i2 == -1) {
                    reader.g(e4);
                    return t3;
                } else if (i2 != 1) {
                    reader.o(i2);
                } else {
                    t3 = (T) this.N.c(reader);
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void h(@NotNull com.squareup.wire.n writer, @Nullable T t3) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            if (t3 != null) {
                this.N.m(writer, 1, t3);
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int n(@Nullable T t3) {
            if (t3 == null) {
                return 0;
            }
            return this.N.o(1, t3);
        }
    }

    @NotNull
    public static final ProtoAdapter<String> A() {
        return new n(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(String.class), null, Syntax.PROTO_2, "");
    }

    @NotNull
    public static final ProtoAdapter<List<?>> B() {
        return new o(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Map.class), "type.googleapis.com/google.protobuf.ListValue", Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Map<String, ?>> C() {
        return new p(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Map.class), "type.googleapis.com/google.protobuf.Struct", Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter D() {
        return new q(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Void.class), "type.googleapis.com/google.protobuf.NullValue", Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Object> E() {
        return new r(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Object.class), "type.googleapis.com/google.protobuf.Value", Syntax.PROTO_3);
    }

    @NotNull
    public static final <E> String F(E e4) {
        return String.valueOf(e4);
    }

    @NotNull
    public static final ProtoAdapter<Integer> G() {
        return new s(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Integer.TYPE), null, Syntax.PROTO_2, 0);
    }

    @NotNull
    public static final ProtoAdapter<Long> H() {
        return new t(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Long.TYPE), null, Syntax.PROTO_2, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> ProtoAdapter<?> I(@NotNull ProtoAdapter<E> commonWithLabel, @NotNull WireField.Label label) {
        Intrinsics.checkNotNullParameter(commonWithLabel, "$this$commonWithLabel");
        Intrinsics.checkNotNullParameter(label, "label");
        return label.isRepeated() ? label.isPacked() ? commonWithLabel.a() : commonWithLabel.b() : commonWithLabel;
    }

    @NotNull
    public static final <T> ProtoAdapter<T> J(@NotNull ProtoAdapter<T> delegate, @NotNull String typeUrl) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
        return new u(delegate, typeUrl, FieldEncoding.LENGTH_DELIMITED, delegate.getType(), typeUrl, Syntax.PROTO_3, null);
    }

    @NotNull
    public static final ProtoAdapter<Boolean> a() {
        return new a(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Boolean.TYPE), null, Syntax.PROTO_2, Boolean.FALSE);
    }

    @NotNull
    public static final ProtoAdapter<ByteString> b() {
        return new b(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(ByteString.class), null, Syntax.PROTO_2, ByteString.EMPTY);
    }

    @NotNull
    public static final <E> ProtoAdapter<List<E>> c(@NotNull ProtoAdapter<E> commonCreatePacked) {
        Intrinsics.checkNotNullParameter(commonCreatePacked, "$this$commonCreatePacked");
        if (commonCreatePacked.s() != FieldEncoding.LENGTH_DELIMITED) {
            return new com.squareup.wire.k(commonCreatePacked);
        }
        throw new IllegalArgumentException("Unable to pack a length-delimited type.".toString());
    }

    @NotNull
    public static final <E> ProtoAdapter<List<E>> d(@NotNull ProtoAdapter<E> commonCreateRepeated) {
        Intrinsics.checkNotNullParameter(commonCreateRepeated, "$this$commonCreateRepeated");
        return new com.squareup.wire.o(commonCreateRepeated);
    }

    public static final <E> E e(@NotNull ProtoAdapter<E> commonDecode, @NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(commonDecode, "$this$commonDecode");
        Intrinsics.checkNotNullParameter(source, "source");
        return commonDecode.c(new com.squareup.wire.m(source));
    }

    public static final <E> E f(@NotNull ProtoAdapter<E> commonDecode, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(commonDecode, "$this$commonDecode");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return commonDecode.e(new Buffer().write(bytes));
    }

    public static final <E> E g(@NotNull ProtoAdapter<E> commonDecode, @NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(commonDecode, "$this$commonDecode");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return commonDecode.e(new Buffer().write(bytes));
    }

    @NotNull
    public static final ProtoAdapter<Double> h() {
        return new c(FieldEncoding.FIXED64, Reflection.getOrCreateKotlinClass(Double.TYPE), null, Syntax.PROTO_2, Double.valueOf(0.0d));
    }

    @NotNull
    public static final ProtoAdapter<Duration> i() {
        return new d(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Duration.class), "type.googleapis.com/google.protobuf.Duration", Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Unit> j() {
        return new e(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Unit.class), "type.googleapis.com/google.protobuf.Empty", Syntax.PROTO_3);
    }

    public static final <E> void k(@NotNull ProtoAdapter<E> commonEncode, @NotNull BufferedSink sink, E e4) {
        Intrinsics.checkNotNullParameter(commonEncode, "$this$commonEncode");
        Intrinsics.checkNotNullParameter(sink, "sink");
        commonEncode.h(new com.squareup.wire.n(sink), e4);
    }

    @NotNull
    public static final <E> byte[] l(@NotNull ProtoAdapter<E> commonEncode, E e4) {
        Intrinsics.checkNotNullParameter(commonEncode, "$this$commonEncode");
        Buffer buffer = new Buffer();
        commonEncode.j(buffer, e4);
        return buffer.readByteArray();
    }

    @NotNull
    public static final <E> ByteString m(@NotNull ProtoAdapter<E> commonEncodeByteString, E e4) {
        Intrinsics.checkNotNullParameter(commonEncodeByteString, "$this$commonEncodeByteString");
        Buffer buffer = new Buffer();
        commonEncodeByteString.j(buffer, e4);
        return buffer.readByteString();
    }

    public static final <E> void n(@NotNull ProtoAdapter<E> commonEncodeWithTag, @NotNull com.squareup.wire.n writer, int i2, @Nullable E e4) {
        Intrinsics.checkNotNullParameter(commonEncodeWithTag, "$this$commonEncodeWithTag");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (e4 == null) {
            return;
        }
        writer.f(i2, commonEncodeWithTag.s());
        if (commonEncodeWithTag.s() == FieldEncoding.LENGTH_DELIMITED) {
            writer.g(commonEncodeWithTag.n(e4));
        }
        commonEncodeWithTag.h(writer, e4);
    }

    public static final <E> int o(@NotNull ProtoAdapter<E> commonEncodedSizeWithTag, int i2, @Nullable E e4) {
        Intrinsics.checkNotNullParameter(commonEncodedSizeWithTag, "$this$commonEncodedSizeWithTag");
        if (e4 == null) {
            return 0;
        }
        int n4 = commonEncodedSizeWithTag.n(e4);
        if (commonEncodedSizeWithTag.s() == FieldEncoding.LENGTH_DELIMITED) {
            n4 += com.squareup.wire.n.f56869b.i(n4);
        }
        return n4 + com.squareup.wire.n.f56869b.h(i2);
    }

    @NotNull
    public static final ProtoAdapter<Integer> p() {
        return new f(FieldEncoding.FIXED32, Reflection.getOrCreateKotlinClass(Integer.TYPE), null, Syntax.PROTO_2, 0);
    }

    @NotNull
    public static final ProtoAdapter<Long> q() {
        return new g(FieldEncoding.FIXED64, Reflection.getOrCreateKotlinClass(Long.TYPE), null, Syntax.PROTO_2, 0L);
    }

    @NotNull
    public static final ProtoAdapter<Float> r() {
        return new h(FieldEncoding.FIXED32, Reflection.getOrCreateKotlinClass(Float.TYPE), null, Syntax.PROTO_2, Float.valueOf(0.0f));
    }

    @NotNull
    public static final ProtoAdapter<Instant> s() {
        return new i(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Instant.class), "type.googleapis.com/google.protobuf.Timestamp", Syntax.PROTO_3);
    }

    @NotNull
    public static final ProtoAdapter<Integer> t() {
        return new j(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Integer.TYPE), null, Syntax.PROTO_2, 0);
    }

    @NotNull
    public static final ProtoAdapter<Long> u() {
        return new k(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Long.TYPE), null, Syntax.PROTO_2, 0L);
    }

    @NotNull
    public static final <K, V> ProtoAdapter<Map<K, V>> v(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
        Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
        Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
        return new com.squareup.wire.g(keyAdapter, valueAdapter);
    }

    @NotNull
    public static final ProtoAdapter<Integer> w() {
        return p();
    }

    @NotNull
    public static final ProtoAdapter<Long> x() {
        return q();
    }

    @NotNull
    public static final ProtoAdapter<Integer> y() {
        return new C0288l(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Integer.TYPE), null, Syntax.PROTO_2, 0);
    }

    @NotNull
    public static final ProtoAdapter<Long> z() {
        return new m(FieldEncoding.VARINT, Reflection.getOrCreateKotlinClass(Long.TYPE), null, Syntax.PROTO_2, 0L);
    }
}
