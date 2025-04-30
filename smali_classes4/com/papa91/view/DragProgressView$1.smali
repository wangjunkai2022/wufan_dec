.class Lcom/papa91/view/DragProgressView$1;
.super Ljava/lang/Object;
.source "DragProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    .line 2
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$000(Lcom/papa91/view/DragProgressView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    invoke-static {v0}, Lcom/papa91/view/DragProgressView;->access$000(Lcom/papa91/view/DragProgressView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/papa91/view/DragProgressView$1$1;

    invoke-direct {v1, p0}, Lcom/papa91/view/DragProgressView$1$1;-><init>(Lcom/papa91/view/DragProgressView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
