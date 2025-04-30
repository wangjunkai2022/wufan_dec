.class public Lcom/join/android/app/component/album/lib/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/lib/ImageLoader$f;,
        Lcom/join/android/app/component/album/lib/ImageLoader$g;,
        Lcom/join/android/app/component/album/lib/ImageLoader$Type;
    }
.end annotation


# static fields
.field private static k:I = 0xa00000

.field private static l:Lcom/join/android/app/component/album/lib/ImageLoader;


# instance fields
.field private a:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:I

.field private d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Thread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/os/Handler;

.field private volatile i:Ljava/util/concurrent/Semaphore;

.field private volatile j:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->c:I

    .line 3
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->i:Ljava/util/concurrent/Semaphore;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;->t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->g:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic b(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/album/lib/ImageLoader;->s()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic d(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->j:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->i:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/component/album/lib/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic g(Lcom/join/android/app/component/album/lib/ImageLoader;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private declared-synchronized j(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->g:Landroid/os/Handler;

    const/16 v0, 0x110

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private static n(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 7

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/cache/q;

    sget v3, Lcom/join/android/app/component/album/lib/ImageLoader;->k:I

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object v0, v6

    move v1, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/q;-><init>(IIIII)V

    .line 2
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$a;

    invoke-direct {v0, v6}, Lcom/join/android/app/component/album/lib/ImageLoader$a;-><init>(Lcom/facebook/imagepipeline/cache/q;)V

    .line 3
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/k;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p0

    return-object p0
.end method

.method private static o(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p0, :cond_0

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_0

    .line 4
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move v0, p0

    :catch_1
    :cond_0
    return v0
.end method

.method public static q()Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 4

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/android/app/component/album/lib/ImageLoader;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader;

    const/4 v2, 0x1

    sget-object v3, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/component/album/lib/ImageLoader;-><init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    sput-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    return-object v0
.end method

.method public static r(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)Lcom/join/android/app/component/album/lib/ImageLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/android/app/component/album/lib/ImageLoader;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;-><init>(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V

    sput-object v1, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/join/android/app/component/album/lib/ImageLoader;->l:Lcom/join/android/app/component/album/lib/ImageLoader;

    return-object p0
.end method

.method private declared-synchronized s()Ljava/lang/Runnable;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->FIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/ImageLoader$b;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->f:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x8

    .line 5
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$c;

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader$c;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;I)V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    .line 6
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->j:Ljava/util/concurrent/Semaphore;

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->e:Ljava/util/LinkedList;

    if-nez p2, :cond_0

    .line 9
    sget-object p2, Lcom/join/android/app/component/album/lib/ImageLoader$Type;->LIFO:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    :cond_0
    iput-object p2, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->d:Lcom/join/android/app/component/album/lib/ImageLoader$Type;

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x28

    .line 1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/k0;->m(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public k(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, p2, :cond_0

    if-le p1, p3, :cond_0

    int-to-float p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 5
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public l(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Lcom/join/android/app/component/album/lib/ImageLoader;->k(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public p(Landroid/widget/ImageView;)Lcom/join/android/app/component/album/lib/ImageLoader$f;
    .locals 7

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader$f;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Lcom/join/android/app/component/album/lib/ImageLoader$a;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    :goto_0
    if-gtz v3, :cond_1

    .line 5
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    if-gtz v3, :cond_2

    const-string v3, "mMaxWidth"

    .line 6
    invoke-static {p1, v3}, Lcom/join/android/app/component/album/lib/ImageLoader;->o(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-gtz v3, :cond_3

    .line 7
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 8
    :cond_3
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    :goto_1
    if-gtz v4, :cond_5

    .line 9
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    if-gtz v4, :cond_6

    const-string v2, "mMaxHeight"

    .line 10
    invoke-static {p1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader;->o(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    :cond_6
    if-gtz v4, :cond_7

    .line 11
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    :cond_7
    iput v3, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->a:I

    .line 13
    iput v4, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->b:I

    return-object v0
.end method

.method public v(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/ImageLoader$d;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V

    iput-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/join/android/app/component/album/lib/ImageLoader$g;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Lcom/join/android/app/component/album/lib/ImageLoader$a;)V

    .line 6
    iput-object v0, v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->a:Landroid/graphics/Bitmap;

    .line 7
    iput-object p2, v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->b:Landroid/widget/ImageView;

    .line 8
    iput-object p1, v1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->c:Ljava/lang/String;

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 10
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p2, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$e;

    invoke-direct {v0, p0, p2, p1}, Lcom/join/android/app/component/album/lib/ImageLoader$e;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->j(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader;->a:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
