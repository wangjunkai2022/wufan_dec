.class public final Lcom/tencent/cos/common/BodyValue;
.super Ljava/lang/Object;
.source "BodyValue.java"


# static fields
.field private static value:Lcom/tencent/cos/common/BodyValue;


# instance fields
.field public final CREATE:Ljava/lang/String;

.field public final DELETE:Ljava/lang/String;

.field public final LIST:Ljava/lang/String;

.field public final MOVE:Ljava/lang/String;

.field public final STAT:Ljava/lang/String;

.field public final UPDATE:Ljava/lang/String;

.field public final UPLOAD:Ljava/lang/String;

.field public final UPLOAD_SLICE:Ljava/lang/String;

.field public final UPLOAD_SLICE_DATA:Ljava/lang/String;

.field public final UPLOAD_SLICE_FINISH:Ljava/lang/String;

.field public final UPLOAD_SLICE_INIT:Ljava/lang/String;

.field public final UPLOAD_SLICE__LIST:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "create"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->CREATE:Ljava/lang/String;

    const-string v0, "list"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->LIST:Ljava/lang/String;

    const-string v0, "update"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPDATE:Ljava/lang/String;

    const-string v0, "stat"

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->STAT:Ljava/lang/String;

    const-string v0, "move"

    .line 6
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->MOVE:Ljava/lang/String;

    const-string v0, "delete"

    .line 7
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->DELETE:Ljava/lang/String;

    const-string v0, "upload"

    .line 8
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD:Ljava/lang/String;

    const-string v0, "upload_slice"

    .line 9
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE:Ljava/lang/String;

    const-string v0, "upload_slice_init"

    .line 10
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE_INIT:Ljava/lang/String;

    const-string v0, "upload_slice_data"

    .line 11
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE_DATA:Ljava/lang/String;

    const-string v0, "upload_slice_finish"

    .line 12
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE_FINISH:Ljava/lang/String;

    const-string v0, "upload_slice_list"

    .line 13
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE__LIST:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/BodyValue;
    .locals 2

    const-class v0, Lcom/tencent/cos/common/BodyValue;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/BodyValue;->value:Lcom/tencent/cos/common/BodyValue;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/cos/common/BodyValue;

    invoke-direct {v1}, Lcom/tencent/cos/common/BodyValue;-><init>()V

    sput-object v1, Lcom/tencent/cos/common/BodyValue;->value:Lcom/tencent/cos/common/BodyValue;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/BodyValue;->value:Lcom/tencent/cos/common/BodyValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
