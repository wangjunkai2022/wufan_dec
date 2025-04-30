.class final Lcom/mob/commons/w$1;
.super Lcom/mob/tools/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/w;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 1
    sget-object v0, Lcom/mob/commons/l;->h:Ljava/lang/Object;

    monitor-enter v0

    const-wide/32 v1, 0x927c0

    const/4 v3, 0x3

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 3
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/mob/commons/f;->a(I)V

    .line 4
    invoke-static {}, Lcom/mob/commons/b;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/mob/commons/f;->a(I)V

    const-string v2, "h"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "k"

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "001Xeb"

    .line 9
    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "s"

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "002Rcfcj"

    .line 11
    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "002*egcj"

    .line 12
    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    aput-object v6, v1, v3

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    .line 14
    invoke-static {v1}, Lcom/mob/commons/d;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
