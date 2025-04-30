.class public abstract Lapp/mgsim/arena/SocketThread;
.super Ljava/lang/Object;
.source "SocketThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method protected printMessgae(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;->getTag()Ljava/lang/String;

    return-void
.end method

.method protected printMessgae(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread name ->  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  is Running----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lapp/mgsim/arena/SocketThread;->execute()V

    return-void
.end method
