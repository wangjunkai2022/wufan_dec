.class public final Lcom/tencent/cos/common/UploadParts;
.super Ljava/lang/Object;
.source "UploadParts.java"


# static fields
.field private static key:Lcom/tencent/cos/common/UploadParts;


# instance fields
.field public final DATA_LEN:Ljava/lang/String;

.field public final DATA_SHA:Ljava/lang/String;

.field public final OFFSET:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "offset"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/common/UploadParts;->OFFSET:Ljava/lang/String;

    const-string v0, "datalen"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/common/UploadParts;->DATA_LEN:Ljava/lang/String;

    const-string v0, "datasha"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/common/UploadParts;->DATA_SHA:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/UploadParts;
    .locals 2

    const-class v0, Lcom/tencent/cos/common/UploadParts;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/UploadParts;->key:Lcom/tencent/cos/common/UploadParts;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/cos/common/UploadParts;

    invoke-direct {v1}, Lcom/tencent/cos/common/UploadParts;-><init>()V

    sput-object v1, Lcom/tencent/cos/common/UploadParts;->key:Lcom/tencent/cos/common/UploadParts;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/UploadParts;->key:Lcom/tencent/cos/common/UploadParts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
