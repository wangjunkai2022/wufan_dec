.class public Lcom/bytedance/pangle/download/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/bytedance/pangle/download/b;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/download/b;->a:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/bytedance/pangle/download/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/download/b$1;-><init>(Lcom/bytedance/pangle/download/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a()Lcom/bytedance/pangle/download/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/pangle/download/b;->b:Lcom/bytedance/pangle/download/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/bytedance/pangle/download/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/pangle/download/b;->b:Lcom/bytedance/pangle/download/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/bytedance/pangle/download/b;

    invoke-direct {v1}, Lcom/bytedance/pangle/download/b;-><init>()V

    sput-object v1, Lcom/bytedance/pangle/download/b;->b:Lcom/bytedance/pangle/download/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/download/b;->b:Lcom/bytedance/pangle/download/b;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/pangle/download/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/pangle/download/b;->a:Ljava/util/List;

    return-object p0
.end method
