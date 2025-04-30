.class Lcom/mob/commons/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$1;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/b$1$1;->a:Lcom/mob/commons/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->k()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/mob/commons/b$1$1;->a:Lcom/mob/commons/b$1;

    iget-object v0, v0, Lcom/mob/commons/b$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/b;->b(Ljava/lang/String;)V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mob/commons/f;->a(ILjava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
