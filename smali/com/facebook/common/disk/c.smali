.class public Lcom/facebook/common/disk/c;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lcom/facebook/common/disk/b;


# static fields
.field private static a:Lcom/facebook/common/disk/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/facebook/common/disk/c;
    .locals 2

    const-class v0, Lcom/facebook/common/disk/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/common/disk/c;->a:Lcom/facebook/common/disk/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/common/disk/c;

    invoke-direct {v1}, Lcom/facebook/common/disk/c;-><init>()V

    sput-object v1, Lcom/facebook/common/disk/c;->a:Lcom/facebook/common/disk/c;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/common/disk/c;->a:Lcom/facebook/common/disk/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/common/disk/a;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/facebook/common/disk/a;)V
    .locals 0

    return-void
.end method
