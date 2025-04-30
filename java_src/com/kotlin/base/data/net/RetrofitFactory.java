package com.kotlin.base.data.net;

import androidx.core.app.NotificationCompat;
import com.join.mgps.rpc.g;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
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
/* compiled from: RetrofitFactory.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00032\u00020\u0001:\u0001\tB\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J!\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/kotlin/base/data/net/RetrofitFactory;", "", "Lokhttp3/OkHttpClient;", d.f64708a, "Lokhttp3/Interceptor;", "e", "T", "Ljava/lang/Class;", NotificationCompat.CATEGORY_SERVICE, "b", "(Ljava/lang/Class;)Ljava/lang/Object;", "", "basUrl", "Lretrofit2/Retrofit;", ai.aD, "Lretrofit2/Retrofit;", "retrofit", "a", "Lokhttp3/Interceptor;", "interceptor", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class RetrofitFactory {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Lazy f52595c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final b f52596d = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Interceptor f52597a;

    /* renamed from: b  reason: collision with root package name */
    private final Retrofit f52598b;

    /* compiled from: RetrofitFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\n \u0001*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lokhttp3/Interceptor$Chain;", "kotlin.jvm.PlatformType", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "<anonymous>"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    static final class a implements Interceptor {

        /* renamed from: a  reason: collision with root package name */
        public static final a f52600a = new a();

        a() {
        }

        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            return chain.proceed(chain.request().newBuilder().addHeader("Content_Type", HttpHeaders.Values.APPLICATION_JSON).addHeader("charset", "UTF-8").build());
        }
    }

    /* compiled from: RetrofitFactory.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u0007\u001a\u00020\u00028F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"com/kotlin/base/data/net/RetrofitFactory$b", "", "Lcom/kotlin/base/data/net/RetrofitFactory;", "instance$delegate", "Lkotlin/Lazy;", "a", "()Lcom/kotlin/base/data/net/RetrofitFactory;", "instance", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes4.dex */
    public static final class b {
        private b() {
        }

        @NotNull
        public final RetrofitFactory a() {
            Lazy lazy = RetrofitFactory.f52595c;
            b bVar = RetrofitFactory.f52596d;
            return (RetrofitFactory) lazy.getValue();
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RetrofitFactory>() { // from class: com.kotlin.base.data.net.RetrofitFactory$Companion$instance$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: a */
            public final RetrofitFactory invoke() {
                return new RetrofitFactory(null);
            }
        });
        f52595c = lazy;
    }

    private RetrofitFactory() {
        this.f52597a = a.f52600a;
        Retrofit build = new Retrofit.Builder().baseUrl(g.f51518i).addConverterFactory(retrofit2.converter.gson.a.a()).addCallAdapterFactory(retrofit2.adapter.rxjava2.g.a()).client(d()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Retrofit.Builder()\n     …t())\n            .build()");
        this.f52598b = build;
    }

    private final OkHttpClient d() {
        OkHttpClient.Builder addInterceptor = new OkHttpClient.Builder().addInterceptor(new com.join.mgps.rpc.retrofit2.a());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient build = addInterceptor.connectTimeout(10L, timeUnit).connectTimeout(10L, timeUnit).readTimeout(10L, timeUnit).writeTimeout(10L, timeUnit).build();
        Intrinsics.checkNotNullExpressionValue(build, "OkHttpClient.Builder()\n …NDS)\n            .build()");
        return build;
    }

    private final Interceptor e() {
        return new com.join.mgps.rpc.retrofit2.a();
    }

    public final <T> T b(@NotNull Class<T> service) {
        Intrinsics.checkNotNullParameter(service, "service");
        return (T) this.f52598b.create(service);
    }

    @NotNull
    public final Retrofit c(@NotNull String basUrl) {
        Intrinsics.checkNotNullParameter(basUrl, "basUrl");
        Retrofit build = new Retrofit.Builder().baseUrl(basUrl).addConverterFactory(retrofit2.converter.gson.a.a()).addCallAdapterFactory(retrofit2.adapter.rxjava2.g.a()).client(d()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Retrofit.Builder()\n     …t())\n            .build()");
        return build;
    }

    public /* synthetic */ RetrofitFactory(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
