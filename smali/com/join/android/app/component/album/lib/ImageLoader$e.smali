.class Lcom/join/android/app/component/album/lib/ImageLoader$e;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    iput-object p2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader;->p(Landroid/widget/ImageView;)Lcom/join/android/app/component/album/lib/ImageLoader$f;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->a:I

    .line 3
    iget v0, v0, Lcom/join/android/app/component/album/lib/ImageLoader$f;->b:I

    .line 4
    iget-object v2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    iget-object v3, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->l(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    iget-object v2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->f(Lcom/join/android/app/component/album/lib/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 6
    new-instance v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;

    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader$g;-><init>(Lcom/join/android/app/component/album/lib/ImageLoader;Lcom/join/android/app/component/album/lib/ImageLoader$a;)V

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    iget-object v2, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;->a:Landroid/graphics/Bitmap;

    .line 8
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->a:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;->b:Landroid/widget/ImageView;

    .line 9
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/android/app/component/album/lib/ImageLoader$g;->c:Ljava/lang/String;

    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 11
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->g(Lcom/join/android/app/component/album/lib/ImageLoader;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/ImageLoader$e;->c:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->d(Lcom/join/android/app/component/album/lib/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
