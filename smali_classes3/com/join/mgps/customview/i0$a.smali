.class Lcom/join/mgps/customview/i0$a;
.super Landroid/os/Handler;
.source "RewardPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/i0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

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

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 4
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v3, 0xa

    .line 7
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    new-instance v12, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 9
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 10
    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 11
    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/4 v14, 0x0

    const/high16 v15, -0x3de00000    # -40.0f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 13
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 14
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 15
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    new-instance v6, Landroid/view/animation/RotateAnimation;

    const/high16 v21, -0x3de00000    # -40.0f

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/high16 v24, 0x3f000000    # 0.5f

    const/16 v25, 0x1

    const/high16 v26, 0x3f000000    # 0.5f

    move-object/from16 v20, v6

    invoke-direct/range {v20 .. v26}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 17
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 18
    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 19
    invoke-virtual {v6, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 20
    new-instance v2, Lcom/join/mgps/customview/i0$a$b;

    invoke-direct {v2, v0, v12}, Lcom/join/mgps/customview/i0$a$b;-><init>(Lcom/join/mgps/customview/i0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 21
    new-instance v2, Lcom/join/mgps/customview/i0$a$c;

    invoke-direct {v2, v0, v5}, Lcom/join/mgps/customview/i0$a$c;-><init>(Lcom/join/mgps/customview/i0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 22
    new-instance v2, Lcom/join/mgps/customview/i0$a$d;

    invoke-direct {v2, v0, v6}, Lcom/join/mgps/customview/i0$a$d;-><init>(Lcom/join/mgps/customview/i0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23
    new-instance v2, Lcom/join/mgps/customview/i0$a$e;

    invoke-direct {v2, v0, v1}, Lcom/join/mgps/customview/i0$a$e;-><init>(Lcom/join/mgps/customview/i0$a;Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 24
    iget-object v2, v0, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/join/mgps/customview/i0;->b(Lcom/join/mgps/customview/i0;J)J

    .line 25
    iget-object v2, v0, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

    iget-object v2, v2, Lcom/join/mgps/customview/i0;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

    iget-object v1, v1, Lcom/join/mgps/customview/i0;->a:Landroid/content/Context;

    const v2, 0x7f01004f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

    iget-object v2, v2, Lcom/join/mgps/customview/i0;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    new-instance v2, Lcom/join/mgps/customview/i0$a$a;

    invoke-direct {v2, v0}, Lcom/join/mgps/customview/i0$a$a;-><init>(Lcom/join/mgps/customview/i0$a;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

    iget-object v2, v1, Lcom/join/mgps/customview/i0;->c:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/join/mgps/customview/i0;->a:Landroid/content/Context;

    const v3, 0x7f01005a

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
