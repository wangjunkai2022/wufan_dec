package com.psk.eventmodule.net.api;

import androidx.core.app.NotificationCompat;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.g;
import retrofit2.converter.gson.a;
/* compiled from: RpcEventFactory.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J!\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/psk/eventmodule/net/api/RpcEventFactory;", "", "Lokhttp3/OkHttpClient;", "initClient", "", "url", "", "resetUrl", "T", "Ljava/lang/Class;", NotificationCompat.CATEGORY_SERVICE, "create", "(Ljava/lang/Class;)Ljava/lang/Object;", "basUrl", "Ljava/lang/String;", "getBasUrl", "()Ljava/lang/String;", "setBasUrl", "(Ljava/lang/String;)V", "Lretrofit2/Retrofit;", "retrofit", "Lretrofit2/Retrofit;", "<init>", "()V", "Companion", "EventModule_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class RpcEventFactory {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Lazy instance$delegate;
    @NotNull
    private String basUrl = "http://datainterface.5fun.com";
    private Retrofit retrofit;

    /* compiled from: RpcEventFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u0007\u001a\u00020\u00028F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;", "", "Lcom/psk/eventmodule/net/api/RpcEventFactory;", "instance$delegate", "Lkotlin/Lazy;", "getInstance", "()Lcom/psk/eventmodule/net/api/RpcEventFactory;", "instance", "<init>", "()V", "EventModule_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final RpcEventFactory getInstance() {
            Lazy lazy = RpcEventFactory.instance$delegate;
            Companion companion = RpcEventFactory.Companion;
            return (RpcEventFactory) lazy.getValue();
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RpcEventFactory>() { // from class: com.psk.eventmodule.net.api.RpcEventFactory$Companion$instance$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RpcEventFactory invoke() {
                return new RpcEventFactory();
            }
        });
        instance$delegate = lazy;
    }

    public RpcEventFactory() {
        Retrofit build = new Retrofit.Builder().baseUrl(this.basUrl).addConverterFactory(a.a()).addCallAdapterFactory(g.a()).client(initClient()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Retrofit.Builder()\n     …t())\n            .build()");
        this.retrofit = build;
    }

    private final OkHttpClient initClient() {
        OkHttpClient.Builder addInterceptor = new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.psk.eventmodule.net.api.RpcEventFactory$initClient$interceptor$1
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                return chain.proceed(chain.request().newBuilder().addHeader("Content-Type", HttpHeaders.Values.APPLICATION_JSON).addHeader("charset", "UTF-8").build());
            }
        });
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient build = addInterceptor.connectTimeout(10L, timeUnit).readTimeout(10L, timeUnit).build();
        Intrinsics.checkNotNullExpressionValue(build, "OkHttpClient.Builder()\n/…NDS)\n            .build()");
        return build;
    }

    public final <T> T create(@NotNull Class<T> service) {
        Intrinsics.checkNotNullParameter(service, "service");
        return (T) this.retrofit.create(service);
    }

    @NotNull
    public final String getBasUrl() {
        return this.basUrl;
    }

    public final void resetUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.basUrl = url;
        Retrofit build = this.retrofit.newBuilder().baseUrl(url).addConverterFactory(a.a()).addCallAdapterFactory(g.a()).client(initClient()).build();
        Intrinsics.checkNotNullExpressionValue(build, "retrofit.newBuilder().ba…t())\n            .build()");
        this.retrofit = build;
    }

    public final void setBasUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.basUrl = str;
    }
}
