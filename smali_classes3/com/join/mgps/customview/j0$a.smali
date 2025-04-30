.class Lcom/join/mgps/customview/j0$a;
.super Landroid/os/Handler;
.source "RewardToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/j0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    move-object/from16 v1, p1

    .line 2
    iget v1, v1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/customview/j0;->g(J)J

    .line 4
    invoke-static {}, Lcom/join/mgps/customview/j0;->f()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 6
    new-instance v2, Lcom/join/mgps/customview/j0$a$f;

    invoke-direct {v2, v0}, Lcom/join/mgps/customview/j0$a$f;-><init>(Lcom/join/mgps/customview/j0$a;)V

    const-wide/16 v4, 0xdac

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 7
    iget-object v1, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    iget-object v1, v1, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/join/mgps/customview/j0;->f()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 9
    :cond_2
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 10
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v3, 0xa

    .line 13
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14
    new-instance v12, Landroid/view/animation/RotateAnimation;

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 15
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 16
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 17
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 18
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/4 v14, 0x0

    const/high16 v15, -0x3de00000    # -40.0f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 19
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 20
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 21
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 22
    new-instance v6, Landroid/view/animation/RotateAnimation;

    const/high16 v21, -0x3de00000    # -40.0f

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/high16 v24, 0x3f000000    # 0.5f

    const/16 v25, 0x1

    const/high16 v26, 0x3f000000    # 0.5f

    move-object/from16 v20, v6

    invoke-direct/range {v20 .. v26}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 23
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 24
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 25
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    new-instance v2, Lcom/join/mgps/customview/j0$a$b;

    invoke-direct {v2, v0, v12}, Lcom/join/mgps/customview/j0$a$b;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    new-instance v2, Lcom/join/mgps/customview/j0$a$c;

    invoke-direct {v2, v0, v5}, Lcom/join/mgps/customview/j0$a$c;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    new-instance v2, Lcom/join/mgps/customview/j0$a$d;

    invoke-direct {v2, v0, v6}, Lcom/join/mgps/customview/j0$a$d;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    new-instance v2, Lcom/join/mgps/customview/j0$a$e;

    invoke-direct {v2, v0, v1}, Lcom/join/mgps/customview/j0$a$e;-><init>(Lcom/join/mgps/customview/j0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 30
    iget-object v2, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/join/mgps/customview/j0;->e(Lcom/join/mgps/customview/j0;J)J

    .line 31
    invoke-static {}, Lcom/join/mgps/customview/j0;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-static {}, Lcom/join/mgps/customview/j0;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010046

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 33
    invoke-static {}, Lcom/join/mgps/customview/j0;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    new-instance v2, Lcom/join/mgps/customview/j0$a$a;

    invoke-direct {v2, v0}, Lcom/join/mgps/customview/j0$a$a;-><init>(Lcom/join/mgps/customview/j0$a;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 35
    :cond_4
    invoke-static {}, Lcom/join/mgps/customview/j0;->b()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {}, Lcom/join/mgps/customview/j0;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010047

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
