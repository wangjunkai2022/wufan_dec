.class public final Lcom/tencent/cos/common/HeadValue;
.super Ljava/lang/Object;
.source "HeadValue.java"


# static fields
.field private static value:Lcom/tencent/cos/common/HeadValue;


# instance fields
.field public final ACCPET_ALL:Ljava/lang/String;

.field public final FORM_DATA:Ljava/lang/String;

.field public final JSON:Ljava/lang/String;

.field public final KEEP_ALIVE:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/json"

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->JSON:Ljava/lang/String;

    const-string v0, "multipart/form-data"

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->FORM_DATA:Ljava/lang/String;

    const-string v0, "*/*"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->ACCPET_ALL:Ljava/lang/String;

    const-string v0, "Keep-Alive"

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->KEEP_ALIVE:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/HeadValue;
    .locals 2

    const-class v0, Lcom/tencent/cos/common/HeadValue;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/HeadValue;->value:Lcom/tencent/cos/common/HeadValue;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/cos/common/HeadValue;

    invoke-direct {v1}, Lcom/tencent/cos/common/HeadValue;-><init>()V

    sput-object v1, Lcom/tencent/cos/common/HeadValue;->value:Lcom/tencent/cos/common/HeadValue;

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/HeadValue;->value:Lcom/tencent/cos/common/HeadValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
