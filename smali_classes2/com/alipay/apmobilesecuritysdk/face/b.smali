.class final Lcom/alipay/apmobilesecuritysdk/face/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/face/a;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->i(Lcom/alipay/apmobilesecuritysdk/face/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->e(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->c()Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "tid"

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "utdid"

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "umid"

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "userId"

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/apmobilesecuritysdk/face/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->e:Lcom/alipay/apmobilesecuritysdk/face/a$a;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/face/a$c;

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {v2, v3}, Lcom/alipay/apmobilesecuritysdk/face/a$c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/apmobilesecuritysdk/face/a$c;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/apmobilesecuritysdk/face/a$c;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/apmobilesecuritysdk/face/a$c;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->h(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/apmobilesecuritysdk/face/a$c;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    :try_start_2
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->e(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    :cond_2
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->g(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;

    return-void
.end method
