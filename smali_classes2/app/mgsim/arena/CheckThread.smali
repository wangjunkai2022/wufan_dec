.class public abstract Lapp/mgsim/arena/CheckThread;
.super Ljava/lang/Object;
.source "CheckThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile isContinue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    return-void
.end method


# virtual methods
.method public abstract check()Z
.end method

.method public abstract handle()V
.end method

.method public isContinue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    return v0
.end method

.method public abstract next()V
.end method

.method public run()V
    .locals 1

    .line 1
    :goto_0
    iget-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->isContinue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->check()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->handle()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setContinue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    return-void
.end method
