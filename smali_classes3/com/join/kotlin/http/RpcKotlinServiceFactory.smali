.class public final Lcom/join/kotlin/http/RpcKotlinServiceFactory;
.super Ljava/lang/Object;
.source "RpcKotlinServiceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/join/kotlin/http/RpcKotlinServiceFactory;",
        "",
        "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;",
        "getJavaRootAPI",
        "getJavaAccountAPI",
        "javaApi",
        "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;",
        "getJavaApi",
        "()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;",
        "setJavaApi",
        "(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V",
        "javaAccountApi",
        "getJavaAccountApi",
        "setJavaAccountApi",
        "<init>",
        "()V",
        "Companion",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instances$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->Companion:Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion$instances$2;->INSTANCE:Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion$instances$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->instances$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/http/RpcKotlinServiceFactory;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstances$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->instances$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getJavaAccountAPI()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/kotlin/base/data/net/RetrofitFactory;->d:Lcom/kotlin/base/data/net/RetrofitFactory$b;

    invoke-virtual {v0}, Lcom/kotlin/base/data/net/RetrofitFactory$b;->a()Lcom/kotlin/base/data/net/RetrofitFactory;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/rpc/g;->F:Ljava/lang/String;

    const-string v2, "RpcConstant.accountV2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/base/data/net/RetrofitFactory;->c(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    .line 3
    const-class v1, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    iput-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getJavaAccountApi()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    return-object v0
.end method

.method public final getJavaApi()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    return-object v0
.end method

.method public final getJavaRootAPI()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/kotlin/base/data/net/RetrofitFactory;->d:Lcom/kotlin/base/data/net/RetrofitFactory$b;

    invoke-virtual {v0}, Lcom/kotlin/base/data/net/RetrofitFactory$b;->a()Lcom/kotlin/base/data/net/RetrofitFactory;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/rpc/g;->B:Ljava/lang/String;

    const-string v2, "RpcConstant.gameUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/base/data/net/RetrofitFactory;->c(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    .line 3
    const-class v1, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    iput-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final setJavaAccountApi(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    return-void
.end method

.method public final setJavaApi(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    return-void
.end method
