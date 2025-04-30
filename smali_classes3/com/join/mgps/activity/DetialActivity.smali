.class public Lcom/join/mgps/activity/DetialActivity;
.super Lcom/BaseActivity;
.source "DetialActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c013f
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        resName = "loding_layout"
    .end annotation
.end field

.field c:Lcom/join/mgps/rpc/d;

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/dto/AccountBean;

.field f:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field g:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/DetialActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialActivity$a;-><init>(Lcom/join/mgps/activity/DetialActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->h:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialActivity;->i:Z

    return-void
.end method

.method private G0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    const-string p1, "detial  startActivitydetial"

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialActivity;->i:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "detial  backbutn"

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method F0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->e:Lcom/join/mgps/dto/AccountBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/DetialActivity;->f:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/DetialActivity;->g:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/DetialActivity;->c:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DetialActivity;->G0(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->showLodingFailed()V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->showLodingFailed()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 15
    :goto_1
    throw v0

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->showLodingFailed()V

    :goto_2
    return-void
.end method

.method afterviews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->c:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/DetialActivity;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->F0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    const-string v0, "detial  onDestroy"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialActivity;->i:Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/DetialActivity;->d:Landroid/content/Context;

    const-class v0, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "detial  keyDown Back"

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    const-string v0, "detial  onPause"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    const-string v0, "detial  onresume"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    const-string v0, "detial  onStop"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialActivity;->F0()V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DetialActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
