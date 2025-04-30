.class Lcom/papa91/view/RoundedRectangularProgressView$1;
.super Landroid/os/Handler;
.source "RoundedRectangularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/RoundedRectangularProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RoundedRectangularProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/RoundedRectangularProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$1;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$1;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    iget-object v0, p1, Lcom/papa91/view/RoundedRectangularProgressView;->mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$000(Lcom/papa91/view/RoundedRectangularProgressView;)F

    move-result p1

    iget-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView$1;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-virtual {v1}, Lcom/papa91/view/RoundedRectangularProgressView;->getCoordinate()[F

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;->onProgress(F[F)V

    :cond_1
    :goto_0
    return-void
.end method
