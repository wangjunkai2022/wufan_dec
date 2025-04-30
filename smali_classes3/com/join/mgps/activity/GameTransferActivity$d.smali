.class Lcom/join/mgps/activity/GameTransferActivity$d;
.super Ljava/lang/Thread;
.source "GameTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field b:Ljava/io/File;

.field c:J

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/activity/GameTransferActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameTransferActivity;Ljava/io/File;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->e:Lcom/join/mgps/activity/GameTransferActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->b:Ljava/io/File;

    .line 4
    iput-wide p3, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->c:J

    .line 5
    iput-object p5, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->a:Z

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->a:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->b:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->n1(Ljava/io/File;)J

    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip currentSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x2

    .line 6
    iget-wide v4, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->c:J

    mul-long v4, v4, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 7
    div-long v2, v0, v4

    .line 8
    :cond_2
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->d:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void

    .line 11
    :goto_2
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
