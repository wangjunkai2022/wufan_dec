.class Lcom/papa91/view/DragProgressView$1$1;
.super Ljava/lang/Object;
.source "DragProgressView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/DragProgressView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/view/DragProgressView$1;


# direct methods
.method constructor <init>(Lcom/papa91/view/DragProgressView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/DragProgressView$1$1;->this$1:Lcom/papa91/view/DragProgressView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/DragProgressView$1$1;->this$1:Lcom/papa91/view/DragProgressView$1;

    iget-object v0, v0, Lcom/papa91/view/DragProgressView$1;->this$0:Lcom/papa91/view/DragProgressView;

    iget-object v0, v0, Lcom/papa91/view/DragProgressView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
