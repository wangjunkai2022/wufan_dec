.class public Lcom/tencent/stat/a/h;
.super Lcom/tencent/stat/a/e;


# static fields
.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;


# instance fields
.field private a:Lcom/tencent/stat/StatAppMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/stat/StatAppMonitor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {p3}, Lcom/tencent/stat/StatAppMonitor;->clone()Lcom/tencent/stat/StatAppMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/stat/a/f;->f:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "na"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getReqSize()J

    move-result-wide v0

    const-string v2, "rq"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getRespSize()J

    move-result-wide v0

    const-string v2, "rp"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getResultType()I

    move-result v0

    const-string v1, "rt"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getMillisecondsConsume()J

    move-result-wide v0

    const-string v2, "tm"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getReturnCode()I

    move-result v0

    const-string v1, "rc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v0}, Lcom/tencent/stat/StatAppMonitor;->getSampling()I

    move-result v0

    const-string v1, "sp"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/stat/a/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    const-string v1, "av"

    invoke-static {p1, v1, v0}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/stat/a/h;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/stat/a/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/a/h;->l:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/tencent/stat/a/h;->l:Ljava/lang/String;

    const-string v1, "op"

    invoke-static {p1, v1, v0}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/stat/a/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
