package com.squareup.wire.internal;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.umeng.analytics.pro.ai;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JsonIntegration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\b\u0019\u000e!\t\u0011\u0015\n\u0017B\u0007¢\u0006\u0004\b#\u0010$J\"\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002J\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\b2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002J\u001f\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00028\u0001H&¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0015\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00028\u00002\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\u0014\u001a\u00028\u0001H&¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00028\u0000H&¢\u0006\u0004\b\u0017\u0010\u0012J\u001b\u0010\u0019\u001a\u00028\u00012\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\bH&¢\u0006\u0004\b\u0019\u0010\u001aJ]\u0010!\u001a\u00028\u0001\"\u0014\b\u0002\u0010\u001c*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u001b\"\u0014\b\u0003\u0010\u001e*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u001d2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u001f¢\u0006\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/squareup/wire/internal/j;", "F", "A", "", "Lcom/squareup/wire/Syntax;", "syntax", "Lcom/squareup/wire/ProtoAdapter;", "protoAdapter", "Lcom/squareup/wire/internal/i;", com.xinzhu.overmind.utils.helpers.d.f64708a, com.sdk.a.g.f56552a, "framework", "Ljava/lang/reflect/Type;", "type", "b", "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;", "elementAdapter", "e", "(Ljava/lang/Object;)Ljava/lang/Object;", "keyFormatter", "valueAdapter", "f", "(Ljava/lang/Object;Lcom/squareup/wire/internal/i;Ljava/lang/Object;)Ljava/lang/Object;", "h", "jsonStringAdapter", "a", "(Lcom/squareup/wire/internal/i;)Ljava/lang/Object;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Lcom/squareup/wire/internal/d;", "field", ai.aD, "(Ljava/lang/Object;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/internal/d;)Ljava/lang/Object;", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class j<F, A> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/squareup/wire/internal/j$a", "Lcom/squareup/wire/internal/i;", "Lokio/ByteString;", "value", "", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a implements i<ByteString> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f56821a = new a();

        private a() {
        }

        @Override // com.squareup.wire.internal.i
        @Nullable
        /* renamed from: c */
        public ByteString a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return ByteString.Companion.decodeBase64(value);
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: d */
        public String b(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value.base64();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0007\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"com/squareup/wire/internal/j$b", "Lcom/squareup/wire/internal/i;", "", "", "value", ai.aD, "(Ljava/lang/String;)Ljava/lang/Integer;", com.xinzhu.overmind.utils.helpers.d.f64708a, "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class b implements i<Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f56822a = new b();

        private b() {
        }

        @Override // com.squareup.wire.internal.i
        public /* bridge */ /* synthetic */ Object b(Integer num) {
            return d(num.intValue());
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public Integer a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return Integer.valueOf(Integer.parseInt(value));
        }

        @NotNull
        public String d(int i2) {
            return String.valueOf(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"com/squareup/wire/internal/j$c", "Lcom/squareup/wire/internal/i;", "", "value", "", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "(Ljava/lang/String;)Ljava/lang/Long;", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class c implements i<Long> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f56823a = new c();

        private c() {
        }

        @Override // com.squareup.wire.internal.i
        public /* bridge */ /* synthetic */ Object b(Long l4) {
            return d(l4.longValue());
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public Long a(@NotNull String value) {
            long longValueExact;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                longValueExact = Long.parseLong(value);
            } catch (Exception unused) {
                longValueExact = new BigDecimal(value).longValueExact();
            }
            return Long.valueOf(longValueExact);
        }

        @NotNull
        public String d(long j4) {
            return String.valueOf(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/squareup/wire/internal/j$d", "Lcom/squareup/wire/internal/i;", "", "value", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class d implements i<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f56824a = new d();

        private d() {
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public String a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: d */
        public String b(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\b\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000b¨\u0006\u0011"}, d2 = {"com/squareup/wire/internal/j$e", "Lcom/squareup/wire/internal/i;", "", "", "value", ai.aD, "(Ljava/lang/String;)Ljava/lang/Integer;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "b", "J", "maxInt", "a", "power32", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class e implements i<Integer> {

        /* renamed from: a  reason: collision with root package name */
        private static final long f56825a = 4294967296L;

        /* renamed from: b  reason: collision with root package name */
        private static final long f56826b = 2147483647L;

        /* renamed from: c  reason: collision with root package name */
        public static final e f56827c = new e();

        private e() {
        }

        @Override // com.squareup.wire.internal.i
        public /* bridge */ /* synthetic */ Object b(Integer num) {
            return d(num.intValue());
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public Integer a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            long parseDouble = (long) Double.parseDouble(value);
            if (parseDouble >= f56826b) {
                parseDouble -= 4294967296L;
            }
            return Integer.valueOf((int) parseDouble);
        }

        @NotNull
        public Object d(int i2) {
            if (i2 < 0) {
                return Long.valueOf(i2 + 4294967296L);
            }
            return Integer.valueOf(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"com/squareup/wire/internal/j$f", "Lcom/squareup/wire/internal/i;", "", "", "value", ai.aD, "(Ljava/lang/String;)Ljava/lang/Integer;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "a", "J", "power32", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class f implements i<Integer> {

        /* renamed from: a  reason: collision with root package name */
        private static final long f56828a = 4294967296L;

        /* renamed from: b  reason: collision with root package name */
        public static final f f56829b = new f();

        private f() {
        }

        @Override // com.squareup.wire.internal.i
        public /* bridge */ /* synthetic */ Object b(Integer num) {
            return d(num.intValue());
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public Integer a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return Integer.valueOf((int) Long.parseLong(value));
        }

        @NotNull
        public Object d(int i2) {
            if (i2 < 0) {
                return String.valueOf(i2 + 4294967296L);
            }
            return String.valueOf(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001e\u0010\u000f\u001a\n \r*\u0004\u0018\u00010\t0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000b¨\u0006\u0012"}, d2 = {"com/squareup/wire/internal/j$g", "Lcom/squareup/wire/internal/i;", "", "", "value", ai.aD, "(Ljava/lang/String;)Ljava/lang/Long;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/math/BigInteger;", "a", "Ljava/math/BigInteger;", "power64", "kotlin.jvm.PlatformType", "b", "maxLong", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class g implements i<Long> {

        /* renamed from: c  reason: collision with root package name */
        public static final g f56832c = new g();

        /* renamed from: a  reason: collision with root package name */
        private static final BigInteger f56830a = new BigInteger("18446744073709551616");

        /* renamed from: b  reason: collision with root package name */
        private static final BigInteger f56831b = BigInteger.valueOf(Long.MAX_VALUE);

        private g() {
        }

        @Override // com.squareup.wire.internal.i
        public /* bridge */ /* synthetic */ Object b(Long l4) {
            return d(l4.longValue());
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public Long a(@NotNull String value) {
            BigInteger bigInteger;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                bigInteger = new BigInteger(value);
            } catch (Exception unused) {
                bigInteger = new BigDecimal(value).toBigInteger();
            }
            return Long.valueOf(bigInteger.compareTo(f56831b) > 0 ? bigInteger.subtract(f56830a).longValue() : bigInteger.longValue());
        }

        @NotNull
        public Object d(long j4) {
            Object valueOf;
            if (j4 < 0) {
                valueOf = f56830a.add(BigInteger.valueOf(j4));
            } else {
                valueOf = Long.valueOf(j4);
            }
            Intrinsics.checkNotNullExpressionValue(valueOf, "when {\n        value < 0…    else -> value\n      }");
            return valueOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonIntegration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"com/squareup/wire/internal/j$h", "Lcom/squareup/wire/internal/i;", "", "value", "", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.aD, "(Ljava/lang/String;)Ljava/lang/Long;", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class h implements i<Long> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f56833a = new h();

        private h() {
        }

        @Override // com.squareup.wire.internal.i
        public /* bridge */ /* synthetic */ Object b(Long l4) {
            return d(l4.longValue());
        }

        @Override // com.squareup.wire.internal.i
        @NotNull
        /* renamed from: c */
        public Long a(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return g.f56832c.a(value);
        }

        @NotNull
        public String d(long j4) {
            return g.f56832c.d(j4).toString();
        }
    }

    private final i<?> d(Syntax syntax, ProtoAdapter<?> protoAdapter) {
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56785u) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.J)) {
            return a.f56821a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.K)) {
            return com.squareup.wire.internal.a.f56802a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.L)) {
            return com.squareup.wire.internal.e.f56819a;
        }
        if (protoAdapter instanceof com.squareup.wire.b) {
            return new com.squareup.wire.internal.b((com.squareup.wire.b) protoAdapter);
        }
        if (syntax == Syntax.PROTO_2) {
            if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56779o) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.E)) {
                return g.f56832c;
            }
            return null;
        } else if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56774j) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56776l) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.G)) {
            return e.f56827c;
        } else {
            if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56778n) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56782r) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56780p) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.D)) {
                return c.f56823a;
            }
            if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56781q) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56779o) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.E)) {
                return h.f56833a;
            }
            return null;
        }
    }

    private final i<?> g(ProtoAdapter<?> protoAdapter) {
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56786v)) {
            return d.f56824a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56773i) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56775k) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56777m)) {
            return b.f56822a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56776l) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56774j)) {
            return f.f56829b;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56778n) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56782r) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56780p)) {
            return c.f56823a;
        }
        if (Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56781q) || Intrinsics.areEqual(protoAdapter, ProtoAdapter.f56779o)) {
            return h.f56833a;
        }
        throw new IllegalStateException(("Unexpected map key type: " + protoAdapter.getType()).toString());
    }

    public abstract A a(@NotNull i<?> iVar);

    public abstract A b(F f4, @NotNull Type type);

    public final <M extends Message<M, B>, B extends Message.a<M, B>> A c(F f4, @NotNull Syntax syntax, @NotNull com.squareup.wire.internal.d<M, B> field) {
        A b4;
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        Intrinsics.checkNotNullParameter(field, "field");
        if (field.a().y()) {
            return h(f4);
        }
        i<?> d4 = d(syntax, field.a());
        if (d4 != null) {
            b4 = a(d4);
        } else {
            KClass<?> type = field.a().getType();
            Class javaObjectType = type != null ? JvmClassMappingKt.getJavaObjectType(type) : null;
            Objects.requireNonNull(javaObjectType, "null cannot be cast to non-null type java.lang.reflect.Type");
            b4 = b(f4, javaObjectType);
        }
        return field.getLabel().isRepeated() ? e(b4) : field.j() ? f(f4, g(field.keyAdapter()), b4) : b4;
    }

    public abstract A e(A a4);

    public abstract A f(F f4, @NotNull i<?> iVar, A a4);

    public abstract A h(F f4);
}
