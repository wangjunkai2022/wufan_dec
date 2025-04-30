.class public Lm/framework/ui/widget/asyncview/BitmapProcessor;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x5

.field private static final MAX_REQ_TIME:I = 0xc8

.field private static final MAX_SIZE:I = 0x28

.field private static final OVERFLOW_SIZE:I = 0x32

.field private static instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private cacheMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private netReqTPS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private reqList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private work:Z

.field private workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    const/4 v0, 0x5

    new-array v0, v0, [Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 4
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_0
    new-instance p1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    invoke-direct {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    return p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    return-object p0
.end method

.method public static getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized prepare(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;-><init>(Ljava/lang/String;)V

    sput-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static process(Ljava/lang/String;Lm/framework/ui/widget/asyncview/BitmapCallback;)V
    .locals 1

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-direct {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;-><init>()V

    .line 3
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapCallback;)V

    .line 5
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    const/16 p1, 0x32

    if-le p0, p1, :cond_2

    .line 7
    :goto_0
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    const/16 p1, 0x28

    if-gt p0, p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-static {}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->start()V

    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static start()V
    .locals 2

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stop()V
    .locals 3

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    .line 3
    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 4
    :goto_0
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    goto :goto_1

    .line 6
    :cond_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 7
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
