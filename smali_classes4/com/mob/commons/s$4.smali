.class final Lcom/mob/commons/s$4;
.super Lcom/mob/tools/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/s;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/mob/commons/s$4;->a:Z

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->i:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mob/commons/s$4;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;I)V

    .line 2
    iget-boolean v0, p0, Lcom/mob/commons/s$4;->a:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mob/commons/s;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v1, "main"

    goto :goto_0

    :cond_0
    const-string v1, "sub"

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 7
    iget-boolean v0, p0, Lcom/mob/commons/s$4;->a:Z

    invoke-static {v0}, Lcom/mob/commons/s;->d(Z)V

    :cond_1
    return-void
.end method
