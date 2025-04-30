.class Lcom/papa91/arc/view/MenuView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->amplification()V
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
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$8;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$8;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
