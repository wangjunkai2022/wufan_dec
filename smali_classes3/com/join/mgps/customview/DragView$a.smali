.class Lcom/join/mgps/customview/DragView$a;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/DragView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/DragView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/DragView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/DragView;->b(Lcom/join/mgps/customview/DragView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-static {v1}, Lcom/join/mgps/customview/DragView;->c(Lcom/join/mgps/customview/DragView;)I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-static {v1}, Lcom/join/mgps/customview/DragView;->d(Lcom/join/mgps/customview/DragView;)I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->a:Lcom/join/mgps/customview/DragView;

    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
