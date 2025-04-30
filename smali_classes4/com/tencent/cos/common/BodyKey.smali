.class public final Lcom/tencent/cos/common/BodyKey;
.super Ljava/lang/Object;
.source "BodyKey.java"


# static fields
.field private static key:Lcom/tencent/cos/common/BodyKey;


# instance fields
.field public final AUTHORITY:Ljava/lang/String;

.field public final BIZ_ATTR:Ljava/lang/String;

.field public final CONTEXT:Ljava/lang/String;

.field public final CUSTOM_HEADERS:Ljava/lang/String;

.field public final DEST_FIELD:Ljava/lang/String;

.field public final FILE_CONTENT:Ljava/lang/String;

.field public final FILE_SIZE:Ljava/lang/String;

.field public final FLAG:Ljava/lang/String;

.field public final FORBID:Ljava/lang/String;

.field public final INSERT_ONLY:Ljava/lang/String;

.field public final NUM:Ljava/lang/String;

.field public final OFFSET:Ljava/lang/String;

.field public final OP:Ljava/lang/String;

.field public final SESSION:Ljava/lang/String;

.field public final SHA:Ljava/lang/String;

.field public final SLICE_SIZE:Ljava/lang/String;

.field public final TO_OVER_WRITE:Ljava/lang/String;

.field public final UPLOAD_PARTS:Ljava/lang/String;

.field public final uploadParts:Lcom/tencent/cos/common/UploadParts;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "op"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->OP:Ljava/lang/String;

    const-string v0, "biz_attr"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->BIZ_ATTR:Ljava/lang/String;

    const-string v0, "flag"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FLAG:Ljava/lang/String;

    const-string v0, "authority"

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->AUTHORITY:Ljava/lang/String;

    const-string v0, "custom_headers"

    .line 6
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->CUSTOM_HEADERS:Ljava/lang/String;

    const-string v0, "insertOnly"

    .line 7
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->INSERT_ONLY:Ljava/lang/String;

    const-string v0, "forbid"

    .line 8
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FORBID:Ljava/lang/String;

    const-string v0, "dest_fileid"

    .line 9
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->DEST_FIELD:Ljava/lang/String;

    const-string v0, "to_over_write"

    .line 10
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->TO_OVER_WRITE:Ljava/lang/String;

    const-string v0, "num"

    .line 11
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->NUM:Ljava/lang/String;

    const-string v0, "context"

    .line 12
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->CONTEXT:Ljava/lang/String;

    const-string v0, "sha"

    .line 13
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->SHA:Ljava/lang/String;

    const-string v0, "filecontent"

    .line 14
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FILE_CONTENT:Ljava/lang/String;

    const-string v0, "filesize"

    .line 15
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FILE_SIZE:Ljava/lang/String;

    const-string v0, "slice_size"

    .line 16
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->SLICE_SIZE:Ljava/lang/String;

    const-string v0, "session"

    .line 17
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->SESSION:Ljava/lang/String;

    const-string v0, "offset"

    .line 18
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->OFFSET:Ljava/lang/String;

    const-string v0, "uploadparts"

    .line 19
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->UPLOAD_PARTS:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/tencent/cos/common/UploadParts;->getInstance()Lcom/tencent/cos/common/UploadParts;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/BodyKey;
    .locals 2

    const-class v0, Lcom/tencent/cos/common/BodyKey;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/BodyKey;->key:Lcom/tencent/cos/common/BodyKey;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/cos/common/BodyKey;

    invoke-direct {v1}, Lcom/tencent/cos/common/BodyKey;-><init>()V

    sput-object v1, Lcom/tencent/cos/common/BodyKey;->key:Lcom/tencent/cos/common/BodyKey;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/BodyKey;->key:Lcom/tencent/cos/common/BodyKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
