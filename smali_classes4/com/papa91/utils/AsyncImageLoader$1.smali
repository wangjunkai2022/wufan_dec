.class Lcom/papa91/utils/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/AsyncImageLoader;->downloadImage(Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/utils/AsyncImageLoader;

.field final synthetic val$cache2Memory:Z

.field final synthetic val$callback:Lcom/papa91/utils/AsyncImageLoader$ImageCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/utils/AsyncImageLoader;Ljava/lang/String;ZLcom/papa91/utils/AsyncImageLoader$ImageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/AsyncImageLoader$1;->this$0:Lcom/papa91/utils/AsyncImageLoader;

    iput-object p2, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$cache2Memory:Z

    iput-object p4, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$callback:Lcom/papa91/utils/AsyncImageLoader$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/utils/AsyncImageLoader;->access$000()Lcom/papa91/utils/LoaderImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/papa91/utils/AsyncImageLoader$1;->val$cache2Memory:Z

    invoke-virtual {v0, v1, v2}, Lcom/papa91/utils/LoaderImpl;->getBitmapFromUrl(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa91/utils/AsyncImageLoader$1;->this$0:Lcom/papa91/utils/AsyncImageLoader;

    invoke-static {v1}, Lcom/papa91/utils/AsyncImageLoader;->access$200(Lcom/papa91/utils/AsyncImageLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/papa91/utils/AsyncImageLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/papa91/utils/AsyncImageLoader$1$1;-><init>(Lcom/papa91/utils/AsyncImageLoader$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
