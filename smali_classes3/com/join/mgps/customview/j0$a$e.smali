.class Lcom/join/mgps/customview/j0$a$e;
.super Ljava/lang/Object;
.source "RewardToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/j0$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/join/mgps/customview/j0$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->b:Lcom/join/mgps/customview/j0$a;

    iput-object p2, p0, Lcom/join/mgps/customview/j0$a$e;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->b:Lcom/join/mgps/customview/j0$a;

    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    invoke-static {p1}, Lcom/join/mgps/customview/j0;->d(Lcom/join/mgps/customview/j0;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/customview/j0;->f()Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->b:Lcom/join/mgps/customview/j0$a;

    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    iget-object p1, p1, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/j0$a$e;->b:Lcom/join/mgps/customview/j0$a;

    iget-object p1, p1, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    iget-object p1, p1, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/customview/j0;->c()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/j0$a$e;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
