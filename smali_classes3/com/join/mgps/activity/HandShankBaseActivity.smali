.class public Lcom/join/mgps/activity/HandShankBaseActivity;
.super Lcom/BaseActivity;
.source "HandShankBaseActivity.java"

# interfaces
.implements Lcom/papa/controller/core/c;


# instance fields
.field private a:Z

.field b:Lcom/papa/controller/core/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0(FI)Landroid/view/KeyEvent;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x16

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    return-object v0
.end method

.method public F(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/HandShankBaseActivity;->M0(Lcom/papa/controller/core/PadMotionEvent;)Z

    return-void
.end method

.method F0(FI)Landroid/view/KeyEvent;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x14

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    return-object v0
.end method

.method public G(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/HandShankBaseActivity;->M0(Lcom/papa/controller/core/PadMotionEvent;)Z

    return-void
.end method

.method protected G0(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HandShankBaseActivity;->I0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected H0(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->G0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->G0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected I0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected J0()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K0(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected L0(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected M0(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method N0(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->e()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->d()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->f()F

    .line 4
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->a()I

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->b()J

    .line 6
    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    return-object p1
.end method

.method O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/activity/HandShankBaseActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HandShankBaseActivity$a;-><init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->v(Lcom/papa/controller/core/ControllerManager$d;)V

    :cond_0
    return-void
.end method

.method public P0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->a:Z

    return-void
.end method

.method public Q0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/core/d;->y(II)V

    :cond_0
    return-void
.end method

.method public R(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->L0(ILcom/papa/controller/core/PadKeyEvent;)Z

    return-void
.end method

.method R0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/core/d;

    invoke-direct {v0, p0}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/papa/controller/core/d;->w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->O0()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    iget-boolean v1, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->a:Z

    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->x(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    invoke-virtual {v0}, Lcom/papa/controller/core/d;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public S0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/EaseBreathInterpolator;

    invoke-direct {v0}, Lcom/join/mgps/joystick/EaseBreathInterpolator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x4b0

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v0, Lcom/join/mgps/activity/HandShankBaseActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankBaseActivity$b;-><init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method T0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->F()V

    :cond_0
    return-void
.end method

.method public c0(Lcom/papa/controller/core/PadStateEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->n(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->o(Landroid/view/KeyEvent;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method

.method public h(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->L0(ILcom/papa/controller/core/PadKeyEvent;)Z

    return-void
.end method

.method public k0(IFLcom/papa/controller/core/PadKeyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/activity/HandShankBaseActivity;->L0(ILcom/papa/controller/core/PadKeyEvent;)Z

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->R0()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->T0()V

    return-void
.end method
