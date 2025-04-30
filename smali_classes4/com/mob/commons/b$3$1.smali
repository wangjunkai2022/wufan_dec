.class Lcom/mob/commons/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$3;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 8

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/mob/commons/b;->a(Z)Z

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b lk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", proc st"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v4, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget-boolean v4, v4, Lcom/mob/commons/b$3;->b:Z

    invoke-static {v4}, Lcom/mob/commons/b;->b(Z)V

    .line 5
    iget-object v4, p0, Lcom/mob/commons/b$3$1;->a:Lcom/mob/commons/b$3;

    iget-boolean v5, v4, Lcom/mob/commons/b$3;->a:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/mob/commons/b$3;->c:Z

    if-eqz v5, :cond_1

    .line 6
    :cond_0
    iget v4, v4, Lcom/mob/commons/b$3;->d:I

    invoke-static {v4}, Lcom/mob/commons/b;->a(I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proc ed, dur: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", release: n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 8
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 9
    invoke-static {}, Landroid/os/Looper;->loop()V

    return p1
.end method
