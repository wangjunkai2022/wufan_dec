.class public Lcom/mob/apc/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/apc/a/c;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mob/apc/a/b;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:[B

.field private f:Lcom/mob/apc/b$c;

.field private g:Landroid/os/Bundle;

.field private h:Lcom/mob/apc/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/apc/a/c;

    invoke-direct {v0}, Lcom/mob/apc/a/c;-><init>()V

    sput-object v0, Lcom/mob/apc/a/c;->a:Lcom/mob/apc/a/c;

    const-string v0, "com.mob.service.action.MOB_AC_SERVICE"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/apc/a/c;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/mob/apc/a/b;

    invoke-direct {v0}, Lcom/mob/apc/a/b;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->c:Lcom/mob/apc/a/b;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lcom/mob/apc/a/c;->e:[B

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/mob/apc/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/apc/a/c;->a:Lcom/mob/apc/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/mob/apc/a/c;->b:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/apc/b$b;

    .line 22
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v3

    const-string v4, "[onAIDLMessageReceive] innerMessage: %s, listener: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    .line 23
    iget-object v3, p1, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    iget-wide v5, p1, Lcom/mob/apc/a/e;->e:J

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/mob/apc/b$b;->a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v3

    const-string v4, "[onAIDLMessageReceive] listener apcMessage: %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v3, Lcom/mob/apc/a/e;

    iget-object v4, p1, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    iget-wide v5, p1, Lcom/mob/apc/a/e;->e:J

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/mob/apc/a/e;-><init>(Lcom/mob/apc/a;Ljava/lang/String;J)V

    return-object v3

    .line 26
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    const-string v3, "[onAIDLMessageReceive] No listener detected, buffer this msg"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v2, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 28
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "[onAIDLMessageReceive] exception %s"

    invoke-virtual {v2, v1, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move v0, p1

    .line 10
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->isClear()Z

    move-result v1

    .line 11
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EC] isClear snd mg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    .line 13
    iget-object v5, v1, Lcom/mob/apc/a/c;->c:Lcom/mob/apc/a/b;

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-wide/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/mob/apc/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p0

    .line 14
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not support."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    new-instance v2, Lcom/mob/apc/APCException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, p0

    .line 16
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[sendMessage] param not allowed null."

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v2, "param not allowed null."

    invoke-direct {v0, v2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, p0

    .line 18
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[sendMessage] pkg not allowed null."

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v2, "pkg not allowed null."

    invoke-direct {v0, v2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v1, p0

    .line 20
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v2, "ec is not clear"

    invoke-direct {v0, v2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "[onACServiceAct] %s"

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "listener detected, callback"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    invoke-interface {v0, p1}, Lcom/mob/apc/b$c;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "no listener detected, cache"

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/mob/apc/a/c;->g:Landroid/os/Bundle;

    :goto_0
    return-void
.end method

.method public a(Lcom/mob/apc/b$a;)V
    .locals 4

    .line 38
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "done"

    aput-object v3, v1, v2

    const-string v2, "[addMgsRequestListener] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/mob/apc/a/c;->h:Lcom/mob/apc/b$a;

    return-void
.end method

.method public a(Lcom/mob/apc/b$c;)V
    .locals 5

    .line 30
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "done"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[addOnACServiceListener] %s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    .line 32
    iget-object p1, p0, Lcom/mob/apc/a/c;->g:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 33
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "bufBundle detected, callback"

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/mob/apc/a/c;->g:Landroid/os/Bundle;

    invoke-direct {p1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    invoke-interface {v0, p1}, Lcom/mob/apc/b$c;->a(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/mob/apc/a/c;->f:Lcom/mob/apc/b$c;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no bufBundle, nothing to do"

    aput-object v1, v0, v4

    invoke-virtual {p1, v3, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mob/apc/b$b;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const-string v1, "[addMobIpcMsgListener] %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mob/apc/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/mob/apc/a/c;->e:[B

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    const-string v3, "[addMobIpcMsgListener] %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "buf msg found, callback right now"

    aput-object v5, v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/mob/apc/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/apc/a/e;

    .line 8
    iget-object v1, p1, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    iget-wide v3, p1, Lcom/mob/apc/a/e;->e:J

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/mob/apc/b$b;->a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mob/commons/authorize/DeviceAuthorizer;->isClear()Z

    move-result v3

    .line 3
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EC] isClear apcsvcl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    const-string v3, "android.content.Intent"

    .line 4
    invoke-static {v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "Intent"

    new-array v4, v1, [Ljava/lang/Object;

    .line 5
    sget-object v5, Lcom/mob/apc/a/c;->i:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/mob/apc/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/mob/tools/utils/DeviceHelper;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 9
    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/mob/apc/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v2, "[getMAPCServiceList] list: %s"

    invoke-virtual {v3, v2, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Lcom/mob/apc/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/apc/a/c;->h:Lcom/mob/apc/b$a;

    return-object v0
.end method
