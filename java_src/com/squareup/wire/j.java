package com.squareup.wire;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.TagGameListActivity_;
import com.squareup.wire.j.a;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OneOf.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u0000*\u0010\b\u0000\u0010\u0002 \u0001*\b\u0012\u0004\u0012\u00028\u00010\u0001*\u0004\b\u0001\u0010\u00032\u00020\u0004:\u0001\u0011B\u0017\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0015\u001a\u00028\u0001¢\u0006\u0004\b \u0010!J#\u0010\u0007\u001a\u0004\u0018\u00018\u0002\"\u0004\b\u0002\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0011\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00028\u0001HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J0\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0006\u001a\u00028\u00002\b\b\u0002\u0010\u0015\u001a\u00028\u0001HÆ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0018\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0004HÖ\u0003R\u0019\u0010\u0015\u001a\u00028\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001c\u001a\u0004\b\u001d\u0010\u0014R\u0019\u0010\u0006\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001e\u001a\u0004\b\u001f\u0010\u0012¨\u0006\""}, d2 = {"Lcom/squareup/wire/j;", "Lcom/squareup/wire/j$a;", "K", "T", "", "X", "key", "h", "(Lcom/squareup/wire/j$a;)Ljava/lang/Object;", "", "toString", "", "f", "Lcom/squareup/wire/n;", "writer", "", "e", "a", "()Lcom/squareup/wire/j$a;", "b", "()Ljava/lang/Object;", "value", ai.aD, "(Lcom/squareup/wire/j$a;Ljava/lang/Object;)Lcom/squareup/wire/j;", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/Object;", ai.aA, "Lcom/squareup/wire/j$a;", com.sdk.a.g.f56552a, "<init>", "(Lcom/squareup/wire/j$a;Ljava/lang/Object;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class j<K extends a<T>, T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final K f56838a;

    /* renamed from: b  reason: collision with root package name */
    private final T f56839b;

    /* compiled from: OneOf.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\b&\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002B9\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u001aR\u0019\u0010\u0007\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0004\u0010\u0006R\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0019\u0010\u0018\u001a\u00020\u00158\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0016\u001a\u0004\b\t\u0010\u0017¨\u0006\u001b"}, d2 = {"com/squareup/wire/j$a", "T", "", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "Z", "()Z", "redacted", "", "e", "Ljava/lang/String;", ai.aD, "()Ljava/lang/String;", "jsonName", "Lcom/squareup/wire/ProtoAdapter;", "b", "Lcom/squareup/wire/ProtoAdapter;", "a", "()Lcom/squareup/wire/ProtoAdapter;", "adapter", "declaredName", "", "I", "()I", TagGameListActivity_.f35885q0, "<init>", "(ILcom/squareup/wire/ProtoAdapter;Ljava/lang/String;ZLjava/lang/String;)V", "wire-runtime"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static abstract class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f56840a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ProtoAdapter<T> f56841b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f56842c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f56843d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f56844e;

        public a(int i2, @NotNull ProtoAdapter<T> adapter, @NotNull String declaredName, boolean z3, @NotNull String jsonName) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(declaredName, "declaredName");
            Intrinsics.checkNotNullParameter(jsonName, "jsonName");
            this.f56840a = i2;
            this.f56841b = adapter;
            this.f56842c = declaredName;
            this.f56843d = z3;
            this.f56844e = jsonName;
        }

        @NotNull
        public final ProtoAdapter<T> a() {
            return this.f56841b;
        }

        @NotNull
        public final String b() {
            return this.f56842c;
        }

        @NotNull
        public final String c() {
            return this.f56844e;
        }

        public final boolean d() {
            return this.f56843d;
        }

        public final int e() {
            return this.f56840a;
        }

        public /* synthetic */ a(int i2, ProtoAdapter protoAdapter, String str, boolean z3, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, protoAdapter, str, (i4 & 8) != 0 ? false : z3, (i4 & 16) != 0 ? "" : str2);
        }
    }

    public j(@NotNull K key, T t3) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f56838a = key;
        this.f56839b = t3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ j d(j jVar, a aVar, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            aVar = jVar.f56838a;
        }
        if ((i2 & 2) != 0) {
            obj = jVar.f56839b;
        }
        return jVar.c(aVar, obj);
    }

    @NotNull
    public final K a() {
        return this.f56838a;
    }

    public final T b() {
        return this.f56839b;
    }

    @NotNull
    public final j<K, T> c(@NotNull K key, T t3) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new j<>(key, t3);
    }

    public final void e(@NotNull n writer) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.f56838a.a().m(writer, this.f56838a.e(), this.f56839b);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                return Intrinsics.areEqual(this.f56838a, jVar.f56838a) && Intrinsics.areEqual(this.f56839b, jVar.f56839b);
            }
            return false;
        }
        return true;
    }

    public final int f() {
        return this.f56838a.a().o(this.f56838a.e(), this.f56839b);
    }

    @NotNull
    public final K g() {
        return this.f56838a;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [T, X] */
    @Nullable
    public final <X> X h(@NotNull a<X> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (Intrinsics.areEqual(this.f56838a, key)) {
            return this.f56839b;
        }
        return null;
    }

    public int hashCode() {
        K k4 = this.f56838a;
        int hashCode = (k4 != null ? k4.hashCode() : 0) * 31;
        T t3 = this.f56839b;
        return hashCode + (t3 != null ? t3.hashCode() : 0);
    }

    public final T i() {
        return this.f56839b;
    }

    @NotNull
    public String toString() {
        String x3;
        ProtoAdapter<T> a4 = this.f56838a.a();
        if (Intrinsics.areEqual(a4, ProtoAdapter.f56786v) || Intrinsics.areEqual(a4, ProtoAdapter.I)) {
            x3 = com.squareup.wire.internal.f.x(String.valueOf(this.f56839b));
        } else {
            x3 = String.valueOf(this.f56839b);
        }
        return this.f56838a.b() + '=' + x3;
    }
}
