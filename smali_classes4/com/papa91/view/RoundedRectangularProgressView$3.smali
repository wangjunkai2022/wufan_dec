.class Lcom/papa91/view/RoundedRectangularProgressView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RoundedRectangularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V
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
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$3;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$3;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$202(Lcom/papa91/view/RoundedRectangularProgressView;J)J

    return-void
.end method
