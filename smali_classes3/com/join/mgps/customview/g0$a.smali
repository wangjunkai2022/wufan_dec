.class Lcom/join/mgps/customview/g0$a;
.super Landroid/os/Handler;
.source "PopBattleArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object v0, v0, Lcom/join/mgps/customview/g0;->s:Landroid/content/Context;

    const v1, 0x7f01004d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object v1, v1, Lcom/join/mgps/customview/g0;->s:Landroid/content/Context;

    const v2, 0x7f01004f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0xc8

    const/4 v4, 0x4

    if-eqz p1, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq p1, v5, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v6, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->l:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->k:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/g0$a;->a()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    invoke-virtual {p0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/customview/g0$a;->a()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/g0$a;->a:Lcom/join/mgps/customview/g0;

    iget-object p1, p1, Lcom/join/mgps/customview/g0;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 16
    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
