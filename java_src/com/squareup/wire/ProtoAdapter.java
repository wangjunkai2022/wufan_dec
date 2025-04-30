package com.squareup.wire;

import com.join.mgps.activity.TagGameListActivity_;
import com.squareup.wire.Message;
import com.squareup.wire.WireField;
import com.umeng.analytics.pro.ai;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.time.Duration;
import java.time.Instant;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtoAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000 e*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u00028fB;\u0012\u0006\u0010O\u001a\u00020K\u0012\f\u0010X\u001a\b\u0012\u0002\b\u0003\u0018\u00010T\u0012\b\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b[\u0010\\B\u001d\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\b\u00030]¢\u0006\u0004\b[\u0010^B'\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\b\u00030]\u0012\b\u0010B\u001a\u0004\u0018\u000100¢\u0006\u0004\b[\u0010_B/\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\b\u00030]\u0012\b\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:¢\u0006\u0004\b[\u0010`B\u001f\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\f\u0010X\u001a\b\u0012\u0002\b\u0003\u0018\u00010T¢\u0006\u0004\b[\u0010aB)\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\f\u0010X\u001a\b\u0012\u0002\b\u0003\u0018\u00010T\u0012\b\u0010B\u001a\u0004\u0018\u000100¢\u0006\u0004\b[\u0010bB1\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\f\u0010X\u001a\b\u0012\u0002\b\u0003\u0018\u00010T\u0012\b\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:¢\u0006\u0004\b[\u0010cB9\b\u0016\u0012\u0006\u0010O\u001a\u00020K\u0012\n\u0010X\u001a\u0006\u0012\u0002\b\u00030]\u0012\b\u0010B\u001a\u0004\u0018\u000100\u0012\u0006\u0010>\u001a\u00020:\u0012\b\u0010J\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b[\u0010dJ\u0017\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0001\u0010\u0004J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00028\u00002\u0006\u0010!\u001a\u00020 H&¢\u0006\u0004\b\"\u0010#J\u0015\u0010%\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0016¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0019¢\u0006\u0004\b'\u0010(J\u0015\u0010+\u001a\u00028\u00002\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u0015\u0010.\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020-¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u0002002\u0006\u0010\u0003\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u00102J\u001b\u00105\u001a\u0006\u0012\u0002\b\u00030\u00002\u0006\u00104\u001a\u000203H\u0000¢\u0006\u0004\b5\u00106J\u0012\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u0000070\u0000J\u0012\u00109\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u0000070\u0000R\u0019\u0010>\u001a\u00020:8\u0006@\u0006¢\u0006\f\n\u0004\b'\u0010;\u001a\u0004\b<\u0010=R\u001b\u0010B\u001a\u0004\u0018\u0001008\u0006@\u0006¢\u0006\f\n\u0004\b+\u0010?\u001a\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u001b\u0010J\u001a\u0004\u0018\u00018\u00008\u0006@\u0006¢\u0006\f\n\u0004\b%\u0010G\u001a\u0004\bH\u0010IR\u001c\u0010O\u001a\u00020K8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\"\u0010L\u001a\u0004\bM\u0010NR*\u0010S\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000007\u0018\u00010\u00008\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b8\u0010P\u001a\u0004\bQ\u0010RR\u001f\u0010X\u001a\b\u0012\u0002\b\u0003\u0018\u00010T8\u0006@\u0006¢\u0006\f\n\u0004\b.\u0010U\u001a\u0004\bV\u0010WR*\u0010Z\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000007\u0018\u00010\u00008\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010P\u001a\u0004\bY\u0010R¨\u0006g"}, d2 = {"Lcom/squareup/wire/ProtoAdapter;", "E", "", "value", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "n", "(Ljava/lang/Object;)I", TagGameListActivity_.f35885q0, "o", "(ILjava/lang/Object;)I", "Lcom/squareup/wire/n;", "writer", "", "h", "(Lcom/squareup/wire/n;Ljava/lang/Object;)V", "m", "(Lcom/squareup/wire/n;ILjava/lang/Object;)V", "Lokio/BufferedSink;", "sink", "j", "(Lokio/BufferedSink;Ljava/lang/Object;)V", "", "k", "(Ljava/lang/Object;)[B", "Lokio/ByteString;", "l", "(Ljava/lang/Object;)Lokio/ByteString;", "Ljava/io/OutputStream;", "stream", ai.aA, "(Ljava/io/OutputStream;Ljava/lang/Object;)V", "Lcom/squareup/wire/m;", "reader", ai.aD, "(Lcom/squareup/wire/m;)Ljava/lang/Object;", "bytes", com.sdk.a.g.f56552a, "([B)Ljava/lang/Object;", "f", "(Lokio/ByteString;)Ljava/lang/Object;", "Lokio/BufferedSource;", "source", "e", "(Lokio/BufferedSource;)Ljava/lang/Object;", "Ljava/io/InputStream;", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/io/InputStream;)Ljava/lang/Object;", "", "F", "(Ljava/lang/Object;)Ljava/lang/String;", "Lcom/squareup/wire/WireField$Label;", "label", "G", "(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;", "", "a", "b", "Lcom/squareup/wire/Syntax;", "Lcom/squareup/wire/Syntax;", "w", "()Lcom/squareup/wire/Syntax;", "syntax", "Ljava/lang/String;", "x", "()Ljava/lang/String;", "typeUrl", "", "y", "()Z", "isStruct", "Ljava/lang/Object;", ai.aF, "()Ljava/lang/Object;", "identity", "Lcom/squareup/wire/FieldEncoding;", "Lcom/squareup/wire/FieldEncoding;", ai.az, "()Lcom/squareup/wire/FieldEncoding;", "fieldEncoding", "Lcom/squareup/wire/ProtoAdapter;", ai.aE, "()Lcom/squareup/wire/ProtoAdapter;", "packedAdapter", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/KClass;", "getType", "()Lkotlin/reflect/KClass;", "type", "v", "repeatedAdapter", "<init>", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V", "Ljava/lang/Class;", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;)V", "(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V", "(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V", "M", "EnumConstantNotFoundException", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class ProtoAdapter<E> {
    @JvmField
    @NotNull
    public static final ProtoAdapter<Object> A;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Double> B;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Float> C;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> D;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Long> E;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> F;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Integer> G;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Boolean> H;
    @JvmField
    @NotNull
    public static final ProtoAdapter<String> I;
    @JvmField
    @NotNull
    public static final ProtoAdapter<ByteString> J;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Duration> K;
    @JvmField
    @NotNull
    public static final ProtoAdapter<Instant> L;
    public static final a M = new a(null);
    @JvmField
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final ProtoAdapter<Boolean> f56772h;
    @JvmField
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final ProtoAdapter<Integer> f56773i;
    @JvmField
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final ProtoAdapter<Integer> f56774j;
    @JvmField
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final ProtoAdapter<Integer> f56775k;
    @JvmField
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final ProtoAdapter<Integer> f56776l;
    @JvmField
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final ProtoAdapter<Integer> f56777m;
    @JvmField
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final ProtoAdapter<Long> f56778n;
    @JvmField
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final ProtoAdapter<Long> f56779o;
    @JvmField
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final ProtoAdapter<Long> f56780p;
    @JvmField
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final ProtoAdapter<Long> f56781q;
    @JvmField
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final ProtoAdapter<Long> f56782r;
    @JvmField
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final ProtoAdapter<Float> f56783s;
    @JvmField
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final ProtoAdapter<Double> f56784t;
    @JvmField
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final ProtoAdapter<ByteString> f56785u;
    @JvmField
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final ProtoAdapter<String> f56786v;
    @JvmField
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final ProtoAdapter<Unit> f56787w;
    @JvmField
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final ProtoAdapter<Map<String, ?>> f56788x;
    @JvmField
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final ProtoAdapter<List<?>> f56789y;
    @JvmField
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final ProtoAdapter f56790z;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final ProtoAdapter<List<E>> f56791a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ProtoAdapter<List<E>> f56792b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final FieldEncoding f56793c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final KClass<?> f56794d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f56795e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Syntax f56796f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final E f56797g;

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nB\u001d\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u000b¢\u0006\u0004\b\t\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\r"}, d2 = {"Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "", "a", "I", "value", "Lkotlin/reflect/KClass;", "type", "<init>", "(ILkotlin/reflect/KClass;)V", "Ljava/lang/Class;", "(ILjava/lang/Class;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class EnumConstantNotFoundException extends IllegalArgumentException {
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public final int f56798a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public EnumConstantNotFoundException(int r3, @org.jetbrains.annotations.Nullable kotlin.reflect.KClass<?> r4) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Unknown enum tag "
                r0.append(r1)
                r0.append(r3)
                java.lang.String r1 = " for "
                r0.append(r1)
                if (r4 == 0) goto L1f
                java.lang.Class r4 = kotlin.jvm.JvmClassMappingKt.getJavaClass(r4)
                if (r4 == 0) goto L1f
                java.lang.String r4 = r4.getName()
                goto L20
            L1f:
                r4 = 0
            L20:
                r0.append(r4)
                java.lang.String r4 = r0.toString()
                r2.<init>(r4)
                r2.f56798a = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException.<init>(int, kotlin.reflect.KClass):void");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public EnumConstantNotFoundException(int i2, @NotNull Class<?> type) {
            this(i2, JvmClassMappingKt.getKotlinClass(type));
            Intrinsics.checkNotNullParameter(type, "type");
        }
    }

    /* compiled from: ProtoAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000¢\u0001\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u001bB\t\b\u0002¢\u0006\u0004\bM\u0010NJB\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00070\u0004\"\u0004\b\u0001\u0010\u0002\"\u0004\b\u0002\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004H\u0007JH\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0014\b\u0001\u0010\n*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t\"\u0014\b\u0002\u0010\f*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0007JP\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0014\b\u0001\u0010\n*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t\"\u0014\b\u0002\u0010\f*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007JX\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0014\b\u0001\u0010\n*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t\"\u0014\b\u0002\u0010\f*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0007J&\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018\"\b\b\u0001\u0010\u0017*\u00020\u00162\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0007J/\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0010\b\u0001\u0010\n*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\t2\u0006\u0010\u001a\u001a\u00028\u0001H\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\"\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0007J\u0014\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u001e\u001a\u00020\u0010H\u0007R\u001c\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010\"R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010\"R\u001e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010\"R\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020'0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b(\u0010\"R\u001e\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010\"R \u0010,\u001a\f\u0012\b\u0012\u00060*j\u0002`+0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u0010\"R\u001c\u0010.\u001a\b\u0012\u0004\u0012\u00020-0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b.\u0010\"R\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u0010\"R\u001c\u00102\u001a\b\u0012\u0004\u0012\u0002010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b2\u0010\"R\u001c\u00104\u001a\b\u0012\u0004\u0012\u0002030\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b4\u0010\"R\u001e\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u0010\"R \u00108\u001a\f\u0012\b\u0012\u000606j\u0002`70\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u0010\"R\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b9\u0010\"R\u001e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010\"R\u001c\u0010;\u001a\b\u0012\u0004\u0012\u0002010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b;\u0010\"R\u001e\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b<\u0010\"R\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b=\u0010\"R\u001c\u0010>\u001a\b\u0012\u0004\u0012\u0002010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b>\u0010\"R\u001c\u0010?\u001a\b\u0012\u0004\u0012\u00020/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b?\u0010\"R\u001c\u0010@\u001a\b\u0012\u0004\u0012\u0002010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b@\u0010\"R\u001c\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00100\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bA\u0010\"R\u001e\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bB\u0010\"R\"\u0010D\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010C0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bD\u0010\"R(\u0010E\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0002\b\u0003\u0018\u00010\u00070\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bE\u0010\"R\u001e\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010F0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bG\u0010\"R\u001e\u0010H\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bH\u0010\"R\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00020/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bI\u0010\"R\u001e\u0010J\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bJ\u0010\"R\u001c\u0010K\u001a\b\u0012\u0004\u0012\u0002010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bK\u0010\"R\u001e\u0010L\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bL\u0010\"¨\u0006O"}, d2 = {"com/squareup/wire/ProtoAdapter$a", "", "K", "V", "Lcom/squareup/wire/ProtoAdapter;", "keyAdapter", "valueAdapter", "", "e", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Ljava/lang/Class;", "type", "f", "", "typeUrl", com.sdk.a.g.f56552a, "Lcom/squareup/wire/Syntax;", "syntax", "h", "Lcom/squareup/wire/s;", "E", "Lcom/squareup/wire/b;", com.xinzhu.overmind.utils.helpers.d.f64708a, "message", "a", "(Lcom/squareup/wire/Message;)Lcom/squareup/wire/ProtoAdapter;", "b", "adapterString", ai.aD, "", "BOOL", "Lcom/squareup/wire/ProtoAdapter;", "BOOL_VALUE", "Lokio/ByteString;", "BYTES", "BYTES_VALUE", "", "DOUBLE", "DOUBLE_VALUE", "Ljava/time/Duration;", "Lcom/squareup/wire/Duration;", "DURATION", "", "EMPTY", "", "FIXED32", "", "FIXED64", "", "FLOAT", "FLOAT_VALUE", "Ljava/time/Instant;", "Lcom/squareup/wire/Instant;", "INSTANT", "INT32", "INT32_VALUE", "INT64", "INT64_VALUE", "SFIXED32", "SFIXED64", "SINT32", "SINT64", "STRING", "STRING_VALUE", "", "STRUCT_LIST", "STRUCT_MAP", "", "STRUCT_NULL", "STRUCT_VALUE", "UINT32", "UINT32_VALUE", "UINT64", "UINT64_VALUE", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {

        /* compiled from: ProtoAdapter.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"com/squareup/wire/ProtoAdapter$a$a", "Lcom/squareup/wire/ProtoAdapter;", "", "value", "K", "J", "Lcom/squareup/wire/n;", "writer", "I", "Lcom/squareup/wire/m;", "reader", "H", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
        /* renamed from: com.squareup.wire.ProtoAdapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0287a extends ProtoAdapter {
            public C0287a() {
                super(FieldEncoding.LENGTH_DELIMITED, Reflection.getOrCreateKotlinClass(Void.class));
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* renamed from: H */
            public Void c(@NotNull m reader) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* renamed from: I */
            public Void h(@NotNull n writer, @NotNull Void value) {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @NotNull
            public Void J(@NotNull Void value) {
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            @NotNull
            /* renamed from: K */
            public Void E(@NotNull Void value) {
                Intrinsics.checkNotNullParameter(value, "value");
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public /* bridge */ /* synthetic */ int n(Object obj) {
                return ((Number) J((Void) obj)).intValue();
            }
        }

        private a() {
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<?, ?>> ProtoAdapter<M> a(@NotNull M message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return b(message.getClass());
        }

        @JvmStatic
        @NotNull
        public final <M> ProtoAdapter<M> b(@NotNull Class<M> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            try {
                Object obj = type.getField("ADAPTER").get(null);
                if (obj != null) {
                    return (ProtoAdapter) obj;
                }
                throw new NullPointerException("null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<M>");
            } catch (IllegalAccessException e4) {
                throw new IllegalArgumentException("failed to access " + type.getName() + "#ADAPTER", e4);
            } catch (NoSuchFieldException e5) {
                throw new IllegalArgumentException("failed to access " + type.getName() + "#ADAPTER", e5);
            }
        }

        @JvmStatic
        @NotNull
        public final ProtoAdapter<?> c(@NotNull String adapterString) {
            int indexOf$default;
            Intrinsics.checkNotNullParameter(adapterString, "adapterString");
            try {
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) adapterString, '#', 0, false, 6, (Object) null);
                String substring = adapterString.substring(0, indexOf$default);
                Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String substring2 = adapterString.substring(indexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.String).substring(startIndex)");
                Object obj = Class.forName(substring).getField(substring2).get(null);
                if (obj != null) {
                    return (ProtoAdapter) obj;
                }
                throw new NullPointerException("null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
            } catch (ClassNotFoundException e4) {
                throw new IllegalArgumentException("failed to access " + adapterString, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalArgumentException("failed to access " + adapterString, e5);
            } catch (NoSuchFieldException e6) {
                throw new IllegalArgumentException("failed to access " + adapterString, e6);
            }
        }

        @JvmStatic
        @NotNull
        public final <E extends s> b<E> d(@NotNull Class<E> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new p(type);
        }

        @JvmStatic
        @NotNull
        public final <K, V> ProtoAdapter<Map<K, V>> e(@NotNull ProtoAdapter<K> keyAdapter, @NotNull ProtoAdapter<V> valueAdapter) {
            Intrinsics.checkNotNullParameter(keyAdapter, "keyAdapter");
            Intrinsics.checkNotNullParameter(valueAdapter, "valueAdapter");
            return new g(keyAdapter, valueAdapter);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> f(@NotNull Class<M> type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return com.squareup.wire.internal.m.U.b(type, null, Syntax.PROTO_2);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> g(@NotNull Class<M> type, @NotNull String typeUrl) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
            return com.squareup.wire.internal.m.U.b(type, typeUrl, Syntax.PROTO_2);
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> h(@NotNull Class<M> type, @NotNull String typeUrl, @NotNull Syntax syntax) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(typeUrl, "typeUrl");
            Intrinsics.checkNotNullParameter(syntax, "syntax");
            return com.squareup.wire.internal.m.U.b(type, typeUrl, syntax);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        ProtoAdapter<Duration> c0287a;
        ProtoAdapter<Instant> c0287a2;
        ProtoAdapter<Boolean> a4 = l.a();
        f56772h = a4;
        ProtoAdapter<Integer> t3 = l.t();
        f56773i = t3;
        ProtoAdapter<Integer> G2 = l.G();
        f56774j = G2;
        f56775k = l.y();
        f56776l = l.p();
        f56777m = l.w();
        ProtoAdapter<Long> u3 = l.u();
        f56778n = u3;
        ProtoAdapter<Long> H2 = l.H();
        f56779o = H2;
        f56780p = l.z();
        f56781q = l.q();
        f56782r = l.x();
        ProtoAdapter<Float> r3 = l.r();
        f56783s = r3;
        ProtoAdapter<Double> h4 = l.h();
        f56784t = h4;
        ProtoAdapter<ByteString> b4 = l.b();
        f56785u = b4;
        ProtoAdapter<String> A2 = l.A();
        f56786v = A2;
        f56787w = l.j();
        f56788x = l.C();
        f56789y = l.B();
        f56790z = l.D();
        A = l.E();
        B = l.J(h4, "type.googleapis.com/google.protobuf.DoubleValue");
        C = l.J(r3, "type.googleapis.com/google.protobuf.FloatValue");
        D = l.J(u3, "type.googleapis.com/google.protobuf.Int64Value");
        E = l.J(H2, "type.googleapis.com/google.protobuf.UInt64Value");
        F = l.J(t3, "type.googleapis.com/google.protobuf.Int32Value");
        G = l.J(G2, "type.googleapis.com/google.protobuf.UInt32Value");
        H = l.J(a4, "type.googleapis.com/google.protobuf.BoolValue");
        I = l.J(A2, "type.googleapis.com/google.protobuf.StringValue");
        J = l.J(b4, "type.googleapis.com/google.protobuf.BytesValue");
        try {
            c0287a = l.i();
        } catch (NoClassDefFoundError unused) {
            c0287a = new a.C0287a();
        }
        K = c0287a;
        try {
            c0287a2 = l.s();
        } catch (NoClassDefFoundError unused2) {
            c0287a2 = new a.C0287a();
        }
        L = c0287a2;
    }

    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str, @NotNull Syntax syntax, @Nullable E e4) {
        k kVar;
        FieldEncoding fieldEncoding2;
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        this.f56793c = fieldEncoding;
        this.f56794d = kClass;
        this.f56795e = str;
        this.f56796f = syntax;
        this.f56797g = e4;
        boolean z3 = this instanceof k;
        o oVar = null;
        if (z3 || (this instanceof o) || fieldEncoding == (fieldEncoding2 = FieldEncoding.LENGTH_DELIMITED)) {
            kVar = null;
        } else {
            if (s() != fieldEncoding2) {
                kVar = new k(this);
            } else {
                throw new IllegalArgumentException("Unable to pack a length-delimited type.".toString());
            }
        }
        this.f56791a = kVar;
        if (!(this instanceof o) && !z3) {
            oVar = new o(this);
        }
        this.f56792b = oVar;
    }

    public /* synthetic */ ProtoAdapter(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(fieldEncoding, kClass, str, syntax, (i2 & 16) != 0 ? null : obj);
    }

    @JvmStatic
    @NotNull
    public static final <K, V> ProtoAdapter<Map<K, V>> A(@NotNull ProtoAdapter<K> protoAdapter, @NotNull ProtoAdapter<V> protoAdapter2) {
        return M.e(protoAdapter, protoAdapter2);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> B(@NotNull Class<M> cls) {
        return M.f(cls);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> C(@NotNull Class<M> cls, @NotNull String str) {
        return M.g(cls, str);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> ProtoAdapter<M> D(@NotNull Class<M> cls, @NotNull String str, @NotNull Syntax syntax) {
        return M.h(cls, str, syntax);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<?, ?>> ProtoAdapter<M> p(@NotNull M m4) {
        return M.a(m4);
    }

    @JvmStatic
    @NotNull
    public static final <M> ProtoAdapter<M> q(@NotNull Class<M> cls) {
        return M.b(cls);
    }

    @JvmStatic
    @NotNull
    public static final ProtoAdapter<?> r(@NotNull String str) {
        return M.c(str);
    }

    @JvmStatic
    @NotNull
    public static final <E extends s> b<E> z(@NotNull Class<E> cls) {
        return M.d(cls);
    }

    public abstract E E(E e4);

    @NotNull
    public String F(E e4) {
        return String.valueOf(e4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final ProtoAdapter<?> G(@NotNull WireField.Label label) {
        Intrinsics.checkNotNullParameter(label, "label");
        return label.isRepeated() ? label.isPacked() ? a() : b() : this;
    }

    @NotNull
    public final ProtoAdapter<List<E>> a() {
        if (this.f56793c != FieldEncoding.LENGTH_DELIMITED) {
            ProtoAdapter<List<E>> protoAdapter = this.f56791a;
            if (protoAdapter != null) {
                return protoAdapter;
            }
            throw new UnsupportedOperationException("Can't create a packed adapter from a packed or repeated adapter.");
        }
        throw new IllegalArgumentException("Unable to pack a length-delimited type.".toString());
    }

    @NotNull
    public final ProtoAdapter<List<E>> b() {
        ProtoAdapter<List<E>> protoAdapter = this.f56792b;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        throw new UnsupportedOperationException("Can't create a repeated adapter from a repeated or packed adapter.");
    }

    public abstract E c(@NotNull m mVar) throws IOException;

    public final E d(@NotNull InputStream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        return e(Okio.buffer(Okio.source(stream)));
    }

    public final E e(@NotNull BufferedSource source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        return c(new m(source));
    }

    public final E f(@NotNull ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return e(new Buffer().write(bytes));
    }

    public final E g(@NotNull byte[] bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return e(new Buffer().write(bytes));
    }

    @Nullable
    public final KClass<?> getType() {
        return this.f56794d;
    }

    public abstract void h(@NotNull n nVar, E e4) throws IOException;

    public final void i(@NotNull OutputStream stream, E e4) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        BufferedSink buffer = Okio.buffer(Okio.sink(stream));
        j(buffer, e4);
        buffer.emit();
    }

    public final void j(@NotNull BufferedSink sink, E e4) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        h(new n(sink), e4);
    }

    @NotNull
    public final byte[] k(E e4) {
        Buffer buffer = new Buffer();
        j(buffer, e4);
        return buffer.readByteArray();
    }

    @NotNull
    public final ByteString l(E e4) {
        Buffer buffer = new Buffer();
        j(buffer, e4);
        return buffer.readByteString();
    }

    public void m(@NotNull n writer, int i2, @Nullable E e4) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (e4 == null) {
            return;
        }
        writer.f(i2, s());
        if (s() == FieldEncoding.LENGTH_DELIMITED) {
            writer.g(n(e4));
        }
        h(writer, e4);
    }

    public abstract int n(E e4);

    public int o(int i2, @Nullable E e4) {
        if (e4 == null) {
            return 0;
        }
        int n4 = n(e4);
        if (s() == FieldEncoding.LENGTH_DELIMITED) {
            n4 += n.f56869b.i(n4);
        }
        return n.f56869b.h(i2) + n4;
    }

    @NotNull
    public final FieldEncoding s() {
        return this.f56793c;
    }

    @Nullable
    public final E t() {
        return this.f56797g;
    }

    @Nullable
    public final ProtoAdapter<List<E>> u() {
        return this.f56791a;
    }

    @Nullable
    public final ProtoAdapter<List<E>> v() {
        return this.f56792b;
    }

    @NotNull
    public final Syntax w() {
        return this.f56796f;
    }

    @Nullable
    public final String x() {
        return this.f56795e;
    }

    public final boolean y() {
        return Intrinsics.areEqual(this, f56788x) || Intrinsics.areEqual(this, f56789y) || Intrinsics.areEqual(this, A) || Intrinsics.areEqual(this, f56790z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type) {
        this(fieldEncoding, JvmClassMappingKt.getKotlinClass(type));
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str) {
        this(fieldEncoding, JvmClassMappingKt.getKotlinClass(type), str, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str, @NotNull Syntax syntax) {
        this(fieldEncoding, JvmClassMappingKt.getKotlinClass(type), str, syntax);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass) {
        this(fieldEncoding, kClass, (String) null, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str) {
        this(fieldEncoding, kClass, str, Syntax.PROTO_2);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @Nullable KClass<?> kClass, @Nullable String str, @NotNull Syntax syntax) {
        this(fieldEncoding, kClass, str, syntax, (Object) null);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProtoAdapter(@NotNull FieldEncoding fieldEncoding, @NotNull Class<?> type, @Nullable String str, @NotNull Syntax syntax, @Nullable E e4) {
        this(fieldEncoding, JvmClassMappingKt.getKotlinClass(type), str, syntax, e4);
        Intrinsics.checkNotNullParameter(fieldEncoding, "fieldEncoding");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
    }
}
