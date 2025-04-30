.class public Lcom/tencent/stat/a/j;
.super Lcom/tencent/stat/a/e;


# instance fields
.field a:Ljava/lang/Long;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/stat/a/j;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/tencent/stat/a/j;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/stat/a/j;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/stat/a/j;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/stat/a/f;->a:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/stat/a/j;->l:Ljava/lang/String;

    const-string v1, "pi"

    invoke-static {p1, v1, v0}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/stat/a/j;->m:Ljava/lang/String;

    const-string v1, "rf"

    invoke-static {p1, v1, v0}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/stat/a/j;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v1, "du"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
