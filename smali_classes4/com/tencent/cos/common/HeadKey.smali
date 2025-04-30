.class public final Lcom/tencent/cos/common/HeadKey;
.super Ljava/lang/Object;
.source "HeadKey.java"


# static fields
.field private static key:Lcom/tencent/cos/common/HeadKey;


# instance fields
.field public final ACCEPT:Ljava/lang/String;

.field public final AUTHORIZATION:Ljava/lang/String;

.field public final CONNECTION:Ljava/lang/String;

.field public final CONTENT_TYPE:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Authorization"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/common/HeadKey;->AUTHORIZATION:Ljava/lang/String;

    const-string v0, "Content-Type"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/common/HeadKey;->CONTENT_TYPE:Ljava/lang/String;

    const-string v0, "Accept"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/common/HeadKey;->ACCEPT:Ljava/lang/String;

    const-string v0, "Connection"

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/common/HeadKey;->CONNECTION:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/HeadKey;
    .locals 2

    const-class v0, Lcom/tencent/cos/common/HeadKey;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/HeadKey;->key:Lcom/tencent/cos/common/HeadKey;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/cos/common/HeadKey;

    invoke-direct {v1}, Lcom/tencent/cos/common/HeadKey;-><init>()V

    sput-object v1, Lcom/tencent/cos/common/HeadKey;->key:Lcom/tencent/cos/common/HeadKey;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/HeadKey;->key:Lcom/tencent/cos/common/HeadKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
