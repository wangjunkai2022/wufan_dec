.class public Lcom/join/mgps/rpc/impl/i;
.super Ljava/lang/Object;
.source "RpcLoginImpl.java"


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/i;


# instance fields
.field private final a:Lq1/i;


# direct methods
.method public constructor <init>(Lq1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/i;->a:Lq1/i;

    return-void
.end method

.method public static b()Lcom/join/mgps/rpc/impl/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/i;->b:Lcom/join/mgps/rpc/impl/i;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->F:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/i;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/i;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/i;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/i;-><init>(Lq1/i;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/i;->b:Lcom/join/mgps/rpc/impl/i;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/i;->b:Lcom/join/mgps/rpc/impl/i;

    return-object v0
.end method


# virtual methods
.method public a()Lq1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/i;->a:Lq1/i;

    return-object v0
.end method
