.class Lcom/papa91/utils/AsyncImageLoader$1$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/utils/AsyncImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/utils/AsyncImageLoader$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/papa91/utils/AsyncImageLoader$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->this$1:Lcom/papa91/utils/AsyncImageLoader$1;

    iput-object p2, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->this$1:Lcom/papa91/utils/AsyncImageLoader$1;

    iget-object v1, v0, Lcom/papa91/utils/AsyncImageLoader$1;->val$callback:Lcom/papa91/utils/AsyncImageLoader$ImageCallback;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/papa91/utils/AsyncImageLoader$ImageCallback;->onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa91/utils/AsyncImageLoader;->access$100()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/utils/AsyncImageLoader$1$1;->this$1:Lcom/papa91/utils/AsyncImageLoader$1;

    iget-object v1, v1, Lcom/papa91/utils/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
