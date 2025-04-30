package com.join.kotlin.http;

import com.join.kotlin.http.api.RpcJavaApiForKotlin;
import com.join.mgps.rpc.g;
import com.kotlin.base.data.net.RetrofitFactory;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RpcKotlinServiceFactory.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/http/RpcKotlinServiceFactory;", "", "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "getJavaRootAPI", "getJavaAccountAPI", "javaApi", "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "getJavaApi", "()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "setJavaApi", "(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V", "javaAccountApi", "getJavaAccountApi", "setJavaAccountApi", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class RpcKotlinServiceFactory {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Lazy instances$delegate;
    @Nullable
    private RpcJavaApiForKotlin javaAccountApi;
    @Nullable
    private RpcJavaApiForKotlin javaApi;

    /* compiled from: RpcKotlinServiceFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u0007\u001a\u00020\u00028F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;", "", "Lcom/join/kotlin/http/RpcKotlinServiceFactory;", "instances$delegate", "Lkotlin/Lazy;", "getInstances", "()Lcom/join/kotlin/http/RpcKotlinServiceFactory;", "instances", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final RpcKotlinServiceFactory getInstances() {
            Lazy lazy = RpcKotlinServiceFactory.instances$delegate;
            Companion companion = RpcKotlinServiceFactory.Companion;
            return (RpcKotlinServiceFactory) lazy.getValue();
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<RpcKotlinServiceFactory>() { // from class: com.join.kotlin.http.RpcKotlinServiceFactory$Companion$instances$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RpcKotlinServiceFactory invoke() {
                return new RpcKotlinServiceFactory(null);
            }
        });
        instances$delegate = lazy;
    }

    private RpcKotlinServiceFactory() {
    }

    @NotNull
    public final RpcJavaApiForKotlin getJavaAccountAPI() {
        if (this.javaAccountApi == null) {
            RetrofitFactory a4 = RetrofitFactory.f52596d.a();
            String str = g.F;
            Intrinsics.checkNotNullExpressionValue(str, "RpcConstant.accountV2");
            this.javaAccountApi = (RpcJavaApiForKotlin) a4.c(str).create(RpcJavaApiForKotlin.class);
        }
        RpcJavaApiForKotlin rpcJavaApiForKotlin = this.javaAccountApi;
        Intrinsics.checkNotNull(rpcJavaApiForKotlin);
        return rpcJavaApiForKotlin;
    }

    @Nullable
    public final RpcJavaApiForKotlin getJavaAccountApi() {
        return this.javaAccountApi;
    }

    @Nullable
    public final RpcJavaApiForKotlin getJavaApi() {
        return this.javaApi;
    }

    @NotNull
    public final RpcJavaApiForKotlin getJavaRootAPI() {
        if (this.javaApi == null) {
            RetrofitFactory a4 = RetrofitFactory.f52596d.a();
            String str = g.B;
            Intrinsics.checkNotNullExpressionValue(str, "RpcConstant.gameUrl");
            this.javaApi = (RpcJavaApiForKotlin) a4.c(str).create(RpcJavaApiForKotlin.class);
        }
        RpcJavaApiForKotlin rpcJavaApiForKotlin = this.javaApi;
        Intrinsics.checkNotNull(rpcJavaApiForKotlin);
        return rpcJavaApiForKotlin;
    }

    public final void setJavaAccountApi(@Nullable RpcJavaApiForKotlin rpcJavaApiForKotlin) {
        this.javaAccountApi = rpcJavaApiForKotlin;
    }

    public final void setJavaApi(@Nullable RpcJavaApiForKotlin rpcJavaApiForKotlin) {
        this.javaApi = rpcJavaApiForKotlin;
    }

    public /* synthetic */ RpcKotlinServiceFactory(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
