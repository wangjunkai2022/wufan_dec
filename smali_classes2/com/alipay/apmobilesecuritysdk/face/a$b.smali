.class final Lcom/alipay/apmobilesecuritysdk/face/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/face/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/alipay/apmobilesecuritysdk/face/a$a;

.field final synthetic f:Lcom/alipay/apmobilesecuritysdk/face/a;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->a:I

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/d/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->b:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->e:Lcom/alipay/apmobilesecuritysdk/face/a$a;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->i(Lcom/alipay/apmobilesecuritysdk/face/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->e(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->c()Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tid"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "utdid"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "umid"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/apmobilesecuritysdk/face/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->e:Lcom/alipay/apmobilesecuritysdk/face/a$a;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/a$c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->e(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z

    return-void
.end method
