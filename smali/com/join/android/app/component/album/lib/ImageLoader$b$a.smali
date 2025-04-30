.class Lcom/join/android/app/component/album/lib/ImageLoader$b$a;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/ImageLoader$b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    iget-object p1, p1, Lcom/join/android/app/component/album/lib/ImageLoader$b;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-static {p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->c(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    iget-object v0, v0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->b(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;->a:Lcom/join/android/app/component/album/lib/ImageLoader$b;

    iget-object p1, p1, Lcom/join/android/app/component/album/lib/ImageLoader$b;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-static {p1}, Lcom/join/android/app/component/album/lib/ImageLoader;->d(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
