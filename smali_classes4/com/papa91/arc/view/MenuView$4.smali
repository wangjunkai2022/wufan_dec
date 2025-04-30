.class Lcom/papa91/arc/view/MenuView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->dismissMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/papa91/arc/view/MenuView;->access$002(Lcom/papa91/arc/view/MenuView;Z)Z

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->saveGameConfig()V

    :cond_0
    return-void
.end method
