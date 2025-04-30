.class public Lcom/join/mgps/rpc/impl/n;
.super Ljava/lang/Object;
.source "RpcPayClientImpl.java"

# interfaces
.implements Lcom/join/mgps/rpc/o;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/n; = null

.field public static c:Ljava/lang/String; = ""


# instance fields
.field private final a:Lq1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lq1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/n;->a:Lq1/m;

    return-void
.end method

.method public static b()Lcom/join/mgps/rpc/impl/n;
    .locals 3

    .line 1
    const-class v0, Lq1/m;

    sget-object v1, Lcom/join/mgps/rpc/impl/n;->b:Lcom/join/mgps/rpc/impl/n;

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/join/mgps/rpc/g;->p:Ljava/lang/String;

    sput-object v1, Lcom/join/mgps/rpc/impl/n;->c:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/m;

    .line 4
    new-instance v1, Lcom/join/mgps/rpc/impl/n;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/n;-><init>(Lq1/m;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/n;->b:Lcom/join/mgps/rpc/impl/n;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/join/mgps/rpc/g;->p:Ljava/lang/String;

    sget-object v2, Lcom/join/mgps/rpc/impl/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/join/mgps/rpc/g;->p:Ljava/lang/String;

    sput-object v1, Lcom/join/mgps/rpc/impl/n;->c:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/m;

    .line 8
    new-instance v1, Lcom/join/mgps/rpc/impl/n;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/n;-><init>(Lq1/m;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/n;->b:Lcom/join/mgps/rpc/impl/n;

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/mgps/rpc/impl/n;->b:Lcom/join/mgps/rpc/impl/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UserPurchaseResponse;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/n;->a:Lq1/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lq1/m;->a(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/UserPurchaseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
