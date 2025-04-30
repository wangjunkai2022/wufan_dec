.class Lcom/mob/tools/a/i$65$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i$65;->a()Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/mob/tools/a/i$65;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i$65;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$65$1;->b:Lcom/mob/tools/a/i$65;

    iput-object p2, p0, Lcom/mob/tools/a/i$65$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/i$65$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
