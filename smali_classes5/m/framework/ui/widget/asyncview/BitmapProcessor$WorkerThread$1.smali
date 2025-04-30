.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"

# interfaces
.implements Lm/framework/network/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iput-object p2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;

    invoke-direct {v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {v0}, Lm/framework/utils/Utils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    invoke-static {v1, p1, v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 5
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;

    move-result-object v1

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v1, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 7
    iget-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    return-void
.end method
