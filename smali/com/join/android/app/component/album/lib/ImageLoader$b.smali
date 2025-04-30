.class Lcom/join/android/app/component/album/lib/ImageLoader$b;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    new-instance v1, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/lib/ImageLoader$b$a;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader$b;)V

    invoke-static {v0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader;->a(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$b;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->e(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
