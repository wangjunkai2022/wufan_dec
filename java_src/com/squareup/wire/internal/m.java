package com.squareup.wire.internal;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.j;
import com.umeng.analytics.pro.ai;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RuntimeMessageAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u0019*\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\b\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\b\u0012\u0004\u0012\u00028\u00000\u0005:\u0001JBU\u0012\f\u0010C\u001a\b\u0012\u0004\u0012\u00028\u000003\u0012\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u000103\u0012\u001e\u0010A\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001070>\u0012\b\u0010E\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010G\u001a\u00020F¢\u0006\u0004\bH\u0010IJ\r\u0010\u0006\u001a\u00028\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00028\u00002\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0017\u001a\u00020\tH\u0016J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ;\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00030$\"\u0004\b\u0002\u0010\u001f\"\u0004\b\u0003\u0010 2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030!2\u0006\u0010#\u001a\u00028\u0002¢\u0006\u0004\b%\u0010&JW\u0010,\u001a\u00020\u000e\"\u0004\b\u0002\u0010 2\b\u0010'\u001a\u0004\u0018\u00018\u00002\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00020$2\b\u0010)\u001a\u0004\u0018\u00018\u00022 \u0010+\u001a\u001c\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000e0*¢\u0006\u0004\b,\u0010-R!\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180$8\u0006@\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u001c\u00105\u001a\b\u0012\u0004\u0012\u00028\u0001038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u00104R+\u0010;\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000107068\u0006@\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b8\u0010:R\u001f\u0010=\u001a\u00020\u0018*\n\u0012\u0002\b\u0003\u0012\u0002\b\u0003078F@\u0006¢\u0006\u0006\u001a\u0004\b.\u0010<R1\u0010A\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001070>8\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010?\u001a\u0004\b\u0002\u0010@R\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00028\u0000038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u00104R\u001f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00180$8\u0006@\u0006¢\u0006\f\n\u0004\b0\u0010/\u001a\u0004\bB\u00101¨\u0006K"}, d2 = {"Lcom/squareup/wire/internal/m;", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Lcom/squareup/wire/ProtoAdapter;", "S", "()Lcom/squareup/wire/Message$a;", "value", "", "L", "(Lcom/squareup/wire/Message;)I", "Lcom/squareup/wire/n;", "writer", "", "K", "(Lcom/squareup/wire/n;Lcom/squareup/wire/Message;)V", "T", "(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;", "", "other", "", "equals", TTDownloadField.TT_HASHCODE, "", "U", "(Lcom/squareup/wire/Message;)Ljava/lang/String;", "Lcom/squareup/wire/m;", "reader", "J", "(Lcom/squareup/wire/m;)Lcom/squareup/wire/Message;", "F", "A", "Lcom/squareup/wire/internal/j;", "jsonIntegration", "framework", "", "R", "(Lcom/squareup/wire/internal/j;Ljava/lang/Object;)Ljava/util/List;", "message", "jsonAdapters", "redactedFieldsAdapter", "Lkotlin/Function3;", "encodeValue", "V", "(Lcom/squareup/wire/Message;Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "P", "Ljava/util/List;", "O", "()Ljava/util/List;", "jsonAlternateNames", "Ljava/lang/Class;", "Ljava/lang/Class;", "builderType", "", "Lcom/squareup/wire/internal/d;", "N", "[Lcom/squareup/wire/internal/d;", "()[Lcom/squareup/wire/internal/d;", "fieldBindingsArray", "(Lcom/squareup/wire/internal/d;)Ljava/lang/String;", "jsonName", "", "Ljava/util/Map;", "()Ljava/util/Map;", "fieldBindings", "Q", "messageType", "jsonNames", "typeUrl", "Lcom/squareup/wire/Syntax;", "syntax", "<init>", "(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V", "a", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class m<M extends Message<M, B>, B extends Message.a<M, B>> extends ProtoAdapter<M> {
    private static final String T = "██";
    public static final a U = new a(null);
    @NotNull
    private final d<M, B>[] N;
    @NotNull
    private final List<String> O;
    @NotNull
    private final List<String> P;
    private final Class<M> Q;
    private final Class<B> R;
    @NotNull
    private final Map<Integer, d<M, B>> S;

    /* compiled from: RuntimeMessageAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018JF\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\b\"\u0014\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0002\"\u0014\b\u0003\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002JH\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00030\u000b\"\u0014\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0002\"\u0014\b\u0003\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00020\u000bH\u0002J`\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0012\"\u0014\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0002\"\u0014\b\u0003\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007JN\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0012\"\u0014\b\u0002\u0010\u0003*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0002\"\u0014\b\u0003\u0010\u0005*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00020\u000bH\u0007R\u0016\u0010\u0015\u001a\u00020\u000e8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"com/squareup/wire/internal/m$a", "", "Lcom/squareup/wire/Message;", "M", "Lcom/squareup/wire/Message$a;", "B", "Ljava/lang/reflect/Field;", "messageField", "", "Lcom/squareup/wire/j$a;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Class;", "messageType", ai.aD, "", "typeUrl", "Lcom/squareup/wire/Syntax;", "syntax", "Lcom/squareup/wire/internal/m;", "b", "a", "REDACTED", "Ljava/lang/String;", "<init>", "()V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        private final <M extends Message<M, B>, B extends Message.a<M, B>> Class<B> c(Class<M> cls) {
            try {
                return (Class<B>) Class.forName(cls.getName() + "$Builder");
            } catch (ClassNotFoundException unused) {
                throw new IllegalArgumentException("No builder class found for message type " + cls.getName());
            }
        }

        private final <M extends Message<M, B>, B extends Message.a<M, B>> Set<j.a<?>> d(Field field) {
            Class<?> declaringClass = field.getDeclaringClass();
            String name = field.getName();
            Intrinsics.checkNotNullExpressionValue(name, "messageField.name");
            Field keysField = declaringClass.getDeclaredField(f.c(name));
            Intrinsics.checkNotNullExpressionValue(keysField, "keysField");
            keysField.setAccessible(true);
            Object obj = keysField.get(null);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.Set<com.squareup.wire.OneOf.Key<*>>");
            return (Set) obj;
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> m<M, B> a(@NotNull Class<M> messageType) {
            Intrinsics.checkNotNullParameter(messageType, "messageType");
            ProtoAdapter b4 = ProtoAdapter.M.b(messageType);
            return b(messageType, b4.x(), b4.w());
        }

        @JvmStatic
        @NotNull
        public final <M extends Message<M, B>, B extends Message.a<M, B>> m<M, B> b(@NotNull Class<M> messageType, @Nullable String str, @NotNull Syntax syntax) {
            Field[] declaredFields;
            Intrinsics.checkNotNullParameter(messageType, "messageType");
            Intrinsics.checkNotNullParameter(syntax, "syntax");
            Class<B> c4 = c(messageType);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Field messageField : messageType.getDeclaredFields()) {
                WireField wireField = (WireField) messageField.getAnnotation(WireField.class);
                if (wireField != null) {
                    Integer valueOf = Integer.valueOf(wireField.tag());
                    Intrinsics.checkNotNullExpressionValue(messageField, "messageField");
                    linkedHashMap.put(valueOf, new c(wireField, messageField, c4));
                } else {
                    Intrinsics.checkNotNullExpressionValue(messageField, "messageField");
                    if (Intrinsics.areEqual(messageField.getType(), com.squareup.wire.j.class)) {
                        for (j.a<?> aVar : d(messageField)) {
                            linkedHashMap.put(Integer.valueOf(aVar.e()), new l(messageField, c4, aVar));
                        }
                    }
                }
            }
            Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(fieldBindings)");
            return new m<>(messageType, c4, unmodifiableMap, str, syntax);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public m(@NotNull Class<M> messageType, @NotNull Class<B> builderType, @NotNull Map<Integer, ? extends d<M, B>> fieldBindings, @Nullable String str, @NotNull Syntax syntax) {
        super(FieldEncoding.LENGTH_DELIMITED, JvmClassMappingKt.getKotlinClass(messageType), str, syntax);
        String name;
        Intrinsics.checkNotNullParameter(messageType, "messageType");
        Intrinsics.checkNotNullParameter(builderType, "builderType");
        Intrinsics.checkNotNullParameter(fieldBindings, "fieldBindings");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        this.Q = messageType;
        this.R = builderType;
        this.S = fieldBindings;
        Object[] array = fieldBindings.values().toArray(new d[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        d<M, B>[] dVarArr = (d[]) array;
        this.N = dVarArr;
        ArrayList arrayList = new ArrayList(dVarArr.length);
        for (d<M, B> dVar : dVarArr) {
            arrayList.add(P(dVar));
        }
        this.O = arrayList;
        d<M, B>[] dVarArr2 = this.N;
        ArrayList arrayList2 = new ArrayList(dVarArr2.length);
        for (d<M, B> dVar2 : dVarArr2) {
            if (!Intrinsics.areEqual(P(dVar2), dVar2.b())) {
                name = dVar2.b();
            } else {
                name = Intrinsics.areEqual(P(dVar2), dVar2.getName()) ^ true ? dVar2.getName() : null;
            }
            arrayList2.add(name);
        }
        this.P = arrayList2;
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> m<M, B> H(@NotNull Class<M> cls) {
        return U.a(cls);
    }

    @JvmStatic
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> m<M, B> I(@NotNull Class<M> cls, @Nullable String str, @NotNull Syntax syntax) {
        return U.b(cls, str, syntax);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: J */
    public M c(@NotNull com.squareup.wire.m reader) throws IOException {
        ProtoAdapter<?> a4;
        Intrinsics.checkNotNullParameter(reader, "reader");
        B S = S();
        long e4 = reader.e();
        while (true) {
            int i2 = reader.i();
            if (i2 == -1) {
                reader.g(e4);
                return (M) S.c();
            }
            d<M, B> dVar = this.S.get(Integer.valueOf(i2));
            if (dVar != null) {
                try {
                    if (dVar.j()) {
                        a4 = dVar.adapter();
                    } else {
                        a4 = dVar.a();
                    }
                    Object c4 = a4.c(reader);
                    Intrinsics.checkNotNull(c4);
                    dVar.c(S, c4);
                } catch (ProtoAdapter.EnumConstantNotFoundException e5) {
                    S.a(i2, FieldEncoding.VARINT, Long.valueOf(e5.f56798a));
                }
            } else {
                FieldEncoding j4 = reader.j();
                Intrinsics.checkNotNull(j4);
                S.a(i2, j4, j4.rawProtoAdapter().c(reader));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: K */
    public void h(@NotNull com.squareup.wire.n writer, @NotNull M value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        for (d<M, B> dVar : this.S.values()) {
            Object d4 = dVar.d(value);
            if (d4 != null) {
                dVar.adapter().m(writer, dVar.getTag(), d4);
            }
        }
        writer.a(value.i());
    }

    @Override // com.squareup.wire.ProtoAdapter
    /* renamed from: L */
    public int n(@NotNull M value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int f4 = value.f();
        if (f4 != 0) {
            return f4;
        }
        int i2 = 0;
        for (d<M, B> dVar : this.S.values()) {
            Object d4 = dVar.d(value);
            if (d4 != null) {
                i2 += dVar.adapter().o(dVar.getTag(), d4);
            }
        }
        int size = i2 + value.i().size();
        value.h(size);
        return size;
    }

    @NotNull
    public final Map<Integer, d<M, B>> M() {
        return this.S;
    }

    @NotNull
    public final d<M, B>[] N() {
        return this.N;
    }

    @NotNull
    public final List<String> O() {
        return this.P;
    }

    @NotNull
    public final String P(@NotNull d<?, ?> jsonName) {
        Intrinsics.checkNotNullParameter(jsonName, "$this$jsonName");
        return jsonName.g().length() == 0 ? jsonName.b() : jsonName.g();
    }

    @NotNull
    public final List<String> Q() {
        return this.O;
    }

    @NotNull
    public final <F, A> List<A> R(@NotNull j<F, A> jsonIntegration, F f4) {
        Intrinsics.checkNotNullParameter(jsonIntegration, "jsonIntegration");
        Object[] array = this.S.values().toArray(new d[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        d<M, B>[] dVarArr = (d[]) array;
        ArrayList arrayList = new ArrayList(dVarArr.length);
        for (d<M, B> dVar : dVarArr) {
            arrayList.add(jsonIntegration.c(f4, w(), dVar));
        }
        return arrayList;
    }

    @NotNull
    public final B S() {
        B newInstance = this.R.newInstance();
        Intrinsics.checkNotNullExpressionValue(newInstance, "builderType.newInstance()");
        return newInstance;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: T */
    public M E(@NotNull M value) {
        Class javaObjectType;
        Intrinsics.checkNotNullParameter(value, "value");
        Message.a g4 = value.g();
        for (d<M, B> dVar : this.S.values()) {
            r3 = null;
            String str = null;
            if (dVar.e() && dVar.getLabel() == WireField.Label.REQUIRED) {
                StringBuilder sb = new StringBuilder();
                sb.append("Field '");
                sb.append(dVar.getName());
                sb.append("' in ");
                KClass<?> type = getType();
                if (type != null && (javaObjectType = JvmClassMappingKt.getJavaObjectType(type)) != null) {
                    str = javaObjectType.getName();
                }
                sb.append(str);
                sb.append(" is required and ");
                sb.append("cannot be redacted.");
                throw new UnsupportedOperationException(sb.toString());
            }
            KClass<?> type2 = dVar.a().getType();
            boolean isAssignableFrom = Message.class.isAssignableFrom(type2 != null ? JvmClassMappingKt.getJavaObjectType(type2) : null);
            if (!dVar.e() && (!isAssignableFrom || dVar.getLabel().isRepeated())) {
                if (isAssignableFrom && dVar.getLabel().isRepeated()) {
                    Object i2 = dVar.i(g4);
                    Objects.requireNonNull(i2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
                    ProtoAdapter<?> a4 = dVar.a();
                    Objects.requireNonNull(a4, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
                    dVar.h(g4, f.a((List) i2, a4));
                }
            } else {
                Object i4 = dVar.i(g4);
                if (i4 != null) {
                    dVar.h(g4, dVar.adapter().E(i4));
                }
            }
        }
        g4.e();
        return (M) g4.c();
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    /* renamed from: U */
    public String F(@NotNull M value) {
        Intrinsics.checkNotNullParameter(value, "value");
        StringBuilder sb = new StringBuilder();
        for (d<M, B> dVar : this.S.values()) {
            Object d4 = dVar.d(value);
            if (d4 != null) {
                sb.append(", ");
                sb.append(dVar.getName());
                sb.append('=');
                if (dVar.e()) {
                    d4 = T;
                }
                sb.append(d4);
            }
        }
        sb.replace(0, 2, this.Q.getSimpleName() + '{');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final <A> void V(@Nullable M m4, @NotNull List<? extends A> jsonAdapters, @Nullable A a4, @NotNull Function3<? super String, Object, ? super A, Unit> encodeValue) {
        Intrinsics.checkNotNullParameter(jsonAdapters, "jsonAdapters");
        Intrinsics.checkNotNullParameter(encodeValue, "encodeValue");
        int length = this.N.length;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < length; i2++) {
            d<M, B> dVar = this.N[i2];
            Intrinsics.checkNotNull(m4);
            Object d4 = dVar.d(m4);
            if (!dVar.f(w(), d4)) {
                if (dVar.e() && a4 != null && d4 != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(this.O.get(i2));
                } else {
                    encodeValue.invoke(this.O.get(i2), d4, jsonAdapters.get(i2));
                }
            }
        }
        if (arrayList == null || !(!arrayList.isEmpty())) {
            return;
        }
        Intrinsics.checkNotNull(a4);
        encodeValue.invoke("__redacted_fields", arrayList, a4);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof m) && Intrinsics.areEqual(((m) obj).Q, this.Q);
    }

    public int hashCode() {
        return this.Q.hashCode();
    }
}
