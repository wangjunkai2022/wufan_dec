.class public Lcom/join/mgps/activity/HandShankNoActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "HandShankNoActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02bd
.end annotation


# instance fields
.field private c:Lcom/join/mgps/dialog/u0;

.field d:Z

.field e:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/HandShankAdView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->d:Z

    return-void
.end method

.method private X0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 3
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    new-instance v1, Lcom/join/mgps/db/tables/HandShankTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/HandShankTable;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setAddress(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setTime(Ljava/lang/Long;)V

    .line 8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/HandShankTable;->setIsConnect(Ljava/lang/Boolean;)V

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->d:Z

    .line 10
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankNoActivity;->b1(Lcom/join/mgps/db/tables/HandShankTable;)V

    move-object v1, v2

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->d:Z

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HandShankNoActivity;->d1(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 14
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->H0(Ljava/util/List;)I

    move-result p1

    if-ge p1, v0, :cond_5

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    return-void
.end method

.method private c1(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_mac(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/JoyStickConfig;->setUpdate_time(J)V

    return-void
.end method


# virtual methods
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

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankNoActivity;->X0(Ljava/util/List;)V

    return-void
.end method

.method U0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->h:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankNoActivity;->Z0()V

    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->a0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method V0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public W0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method Y0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getHandShankAdList()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->h:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->r0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->g:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/HandShankAdBean;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/HandShankAdView;->m(Lcom/join/mgps/dto/HandShankAdBean;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->g:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->g:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->i()V

    :goto_0
    return-void
.end method

.method public Z0()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankNoActivity;->Y0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->g:Lcom/join/mgps/customview/HandShankAdView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/HandShankAdView;->l()V

    :goto_0
    return-void
.end method

.method a1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "http://h5.5fun.com/wf_shoubing.html"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method b1(Lcom/join/mgps/db/tables/HandShankTable;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/HandShankTable;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/x;->q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ln1/x;->n(Lcom/join/mgps/db/tables/HandShankTable;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HandShankNoActivity;->c1(Lcom/join/mgps/db/tables/HandShankTable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized d1(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/u0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/u0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/u0;->c(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity$a;-><init>(Lcom/join/mgps/activity/HandShankNoActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/u0;->a(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    new-instance v0, Lcom/join/mgps/activity/HandShankNoActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankNoActivity$b;-><init>(Lcom/join/mgps/activity/HandShankNoActivity;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/u0;->b(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankNoActivity;->c:Lcom/join/mgps/dialog/u0;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->P0(Z)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    return-void
.end method
