.class public Lcom/papa91/arc/ext/DaemonThread;
.super Ljava/lang/Thread;
.source "DaemonThread.java"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method
