.class public Lcom/mob/mcl/a/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mcl/a/a;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/mcl/a/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mcl/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mcl/a/a;

    invoke-direct {v1}, Lcom/mob/mcl/a/a;-><init>()V

    sput-object v1, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/a/a;->a:Lcom/mob/mcl/a/a;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/a;
    .locals 6

    .line 12
    :try_start_0
    new-instance v3, Lcom/mob/apc/a;

    invoke-direct {v3}, Lcom/mob/apc/a;-><init>()V

    .line 13
    iput p1, v3, Lcom/mob/apc/a;->a:I

    .line 14
    iput-object p2, v3, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 15
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apc fw mg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mob/apc/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to ->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    iget-object v2, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    int-to-long v4, p4

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/mob/apc/a;)Lcom/mob/apc/a;
    .locals 3

    .line 33
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apc received mg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 34
    new-instance p1, Lcom/mob/apc/a;

    invoke-direct {p1}, Lcom/mob/apc/a;-><init>()V

    .line 35
    iget v0, p2, Lcom/mob/apc/a;->a:I

    iput v0, p1, Lcom/mob/apc/a;->a:I

    .line 36
    iget v0, p2, Lcom/mob/apc/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->e()Z

    move-result v0

    const-string v1, "isTcpAvailable"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iput-object p2, p1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 40
    iget-object p2, p2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 41
    invoke-static {p2}, Lcom/mob/mcl/a/b;->a(Landroid/os/Bundle;)Lcom/mob/mcl/a/b;

    move-result-object p2

    .line 42
    iput-object p2, p1, Lcom/mob/apc/a;->d:Ljava/lang/Object;

    return-object p1

    :cond_1
    const/16 p2, 0x232c

    if-ne v0, p2, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "data"

    .line 18
    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 22
    new-instance v6, Lcom/mob/apc/a;

    invoke-direct {v6}, Lcom/mob/apc/a;-><init>()V

    const/4 v2, 0x2

    .line 23
    iput v2, v6, Lcom/mob/apc/a;->a:I

    .line 24
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v6, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    .line 25
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apc sd mg : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mob/apc/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to ->"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 26
    iget-object v5, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    iget v7, p6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    int-to-long v7, v7

    invoke-static/range {v3 .. v8}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 27
    iget v4, v3, Lcom/mob/apc/a;->a:I

    if-ne v4, v2, :cond_0

    iget-object v2, v3, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 28
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apc receive rp mg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apc receive rp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    .line 31
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "apc list is null"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/mob/apc/b$b;)V
    .locals 3

    const-string v0, "MobMCL"

    .line 7
    iput-object v0, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/mob/apc/b;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result p1

    .line 10
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init apc, main p: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mob/apc/b;->a(Ljava/lang/String;Lcom/mob/apc/b$b;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mob/apc/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object v0, p2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v1

    .line 4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qy tp svc, main p: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/mob/apc/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    new-instance v5, Lcom/mob/apc/a;

    invoke-direct {v5}, Lcom/mob/apc/a;-><init>()V

    const/4 v8, 0x1

    .line 11
    iput v8, v5, Lcom/mob/apc/a;->a:I

    .line 12
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sd apc mg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mob/apc/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 13
    iget-object v4, p0, Lcom/mob/mcl/a/a;->c:Ljava/lang/String;

    const-wide/16 v6, 0x1388

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/mob/apc/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    iget-object v3, v2, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget v2, v2, Lcom/mob/apc/a;->a:I

    if-ne v2, v8, :cond_2

    const-string v2, "isTcpAvailable"

    .line 15
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 17
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query tcp exp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apc available pg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mob/mcl/a/a;->b:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method
