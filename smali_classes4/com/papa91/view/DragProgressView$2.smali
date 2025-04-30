.class Lcom/papa91/view/DragProgressView$2;
.super Ljava/lang/Object;
.source "DragProgressView.java"

# interfaces
.implements Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/DragProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/DragProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/DragProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F[F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$200(Lcom/papa91/view/DragProgressView;)Lcom/papa91/view/RoundedRectangularProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    aget v1, p2, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v1}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v1}, Lcom/papa91/view/DragProgressView;->access$200(Lcom/papa91/view/DragProgressView;)Lcom/papa91/view/RoundedRectangularProgressView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget p2, p2, v2

    add-float/2addr v1, p2

    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {p2}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    .line 4
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v1}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$100(Lcom/papa91/view/DragProgressView;)Landroid/widget/ImageView;

    move-result-object v0

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 6
    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    iget-object p1, p1, Lcom/papa91/view/DragProgressView;->mOnProduceListener:Lcom/papa91/view/DragProgressView$OnProduceListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/papa91/view/DragProgressView$OnProduceListener;->onProduce()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {p1}, Lcom/papa91/view/DragProgressView;->access$300(Lcom/papa91/view/DragProgressView;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/papa91/view/DragProgressView;->setSignal(I)V

    .line 13
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {p1}, Lcom/papa91/view/DragProgressView;->access$300(Lcom/papa91/view/DragProgressView;)I

    move-result p1

    iget-object p2, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {p2}, Lcom/papa91/view/DragProgressView;->access$400(Lcom/papa91/view/DragProgressView;)I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->start()V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 15
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/view/DragProgressView$2;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method
