.class public final Lcom/psk/eventmodule/net/api/RpcEventFactory;
.super Ljava/lang/Object;
.source "RpcEventFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J!\u0010\u000b\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/psk/eventmodule/net/api/RpcEventFactory;",
        "",
        "Lokhttp3/OkHttpClient;",
        "initClient",
        "",
        "url",
        "",
        "resetUrl",
        "T",
        "Ljava/lang/Class;",
        "service",
        "create",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "basUrl",
        "Ljava/lang/String;",
        "getBasUrl",
        "()Ljava/lang/String;",
        "setBasUrl",
        "(Ljava/lang/String;)V",
        "Lretrofit2/Retrofit;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "<init>",
        "()V",
        "Companion",
        "EventModule_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private basUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->Companion:Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion;

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion$instance$2;->INSTANCE:Lcom/psk/eventmodule/net/api/RpcEventFactory$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://datainterface.5fun.com"

    .line 2
    iput-object v0, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->basUrl:Ljava/lang/String;

    .line 3
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->basUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 5
    invoke-static {}, Lretrofit2/converter/gson/a;->a()Lretrofit2/converter/gson/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 6
    invoke-static {}, Lretrofit2/adapter/rxjava2/g;->a()Lretrofit2/adapter/rxjava2/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/psk/eventmodule/net/api/RpcEventFactory;->initClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Retrofit.Builder()\n     \u2026t())\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final initClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 1
    sget-object v0, Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;->INSTANCE:Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;

    .line 2
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "OkHttpClient.Builder()\n/\u2026NDS)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getBasUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->basUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final resetUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->basUrl:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 3
    invoke-static {}, Lretrofit2/converter/gson/a;->a()Lretrofit2/converter/gson/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lretrofit2/adapter/rxjava2/g;->a()Lretrofit2/adapter/rxjava2/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/psk/eventmodule/net/api/RpcEventFactory;->initClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-string v0, "retrofit.newBuilder().ba\u2026t())\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public final setBasUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/psk/eventmodule/net/api/RpcEventFactory;->basUrl:Ljava/lang/String;

    return-void
.end method
