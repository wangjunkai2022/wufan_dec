.class Lcom/join/mgps/customview/LightningView$b;
.super Ljava/lang/Object;
.source "LightningView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LightningView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/LightningView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LightningView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LightningView$b;->a:Lcom/join/mgps/customview/LightningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->a:Lcom/join/mgps/customview/LightningView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->a:Lcom/join/mgps/customview/LightningView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/LightningView;->i(Lcom/join/mgps/customview/LightningView;Z)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->j(Lcom/join/mgps/customview/LightningView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->a:Lcom/join/mgps/customview/LightningView;

    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->j(Lcom/join/mgps/customview/LightningView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
