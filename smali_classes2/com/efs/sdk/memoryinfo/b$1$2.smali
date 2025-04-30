.class final Lcom/efs/sdk/memoryinfo/b$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/memoryinfo/b$1;->onChange(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/efs/sdk/memoryinfo/b$1;

.field final synthetic f:Landroid/os/Handler;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/efs/sdk/memoryinfo/b$1;Landroid/os/Handler;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->e:Lcom/efs/sdk/memoryinfo/b$1;

    iput-object p2, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->f:Landroid/os/Handler;

    iput p3, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->g:I

    iput p4, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 4
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->e:Lcom/efs/sdk/memoryinfo/b$1;

    iget-object v2, v0, Lcom/efs/sdk/memoryinfo/b$1;->c:Lcom/efs/sdk/memoryinfo/b;

    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->f:Landroid/os/Handler;

    iget v9, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->g:I

    iget v5, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->h:I

    .line 5
    new-instance v7, Lcom/efs/sdk/memoryinfo/e;

    iget-object v1, v2, Lcom/efs/sdk/memoryinfo/b;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/efs/sdk/memoryinfo/b;->a:Lcom/efs/sdk/base/EfsReporter;

    invoke-direct {v7, v1, v3}, Lcom/efs/sdk/memoryinfo/e;-><init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 7
    new-instance v10, Lcom/efs/sdk/memoryinfo/b$2;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/efs/sdk/memoryinfo/b$2;-><init>(Lcom/efs/sdk/memoryinfo/b;JILandroid/os/Handler;Lcom/efs/sdk/memoryinfo/e;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :catchall_0
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/b$1$2;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
