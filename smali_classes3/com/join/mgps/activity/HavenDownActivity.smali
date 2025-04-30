.class public Lcom/join/mgps/activity/HavenDownActivity;
.super Lcom/BaseAppCompatActivity;
.source "HavenDownActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HavenDownActivity$a;,
        Lcom/join/mgps/activity/HavenDownActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0049
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field k:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field l:I

.field m:Lcom/join/mgps/dialog/x0;

.field n:Lcom/join/mgps/rpc/h;

.field o:Landroid/content/Context;

.field p:Lcom/join/mgps/activity/HavenDownActivity$a;

.field q:Lcom/join/mgps/rpc/d;

.field r:Ljava/lang/String;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HavenForumListbean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->l:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method D0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->l:I

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->I0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method E0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->showLoding()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->q:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/HavenDownActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialmoreServer(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->Q0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->H0()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->H0()V

    .line 8
    throw v0
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/activity/HavenWishActivity_;->K0(Landroid/content/Context;)Lcom/join/mgps/activity/HavenWishActivity_$f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/HavenWishActivity_$f;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/HavenWishActivity_$f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method G0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method H0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->showLoding()V

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/posts/tags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->n:Lcom/join/mgps/rpc/h;

    iget-object v2, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/join/mgps/rpc/h;->R(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/HavenForumDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HavenForumDatabean;->getPosts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HavenDownActivity;->updateUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->H0()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->H0()V

    .line 9
    throw v0
.end method

.method afterviews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    const-string v0, "onFindSourceStart"

    .line 3
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->n:Lcom/join/mgps/rpc/h;

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->q:Lcom/join/mgps/rpc/d;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->m:Lcom/join/mgps/dialog/x0;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Lcom/join/mgps/activity/HavenDownActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HavenDownActivity$a;-><init>(Lcom/join/mgps/activity/HavenDownActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->p:Lcom/join/mgps/activity/HavenDownActivity$a;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    sget-object v0, Lcom/MApplication;->I:Lcom/join/mgps/dto/HomeViewSwich;

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeViewSwich;->getCommunity_entrance_title()Lcom/join/mgps/dto/BattaleSwitchBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BattaleSwitchBean;->getCfg_values()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->community_entrance_title()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/HavenDownActivity;->E0()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HavenDownActivity;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->m:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HavenForumListbean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity;->p:Lcom/join/mgps/activity/HavenDownActivity$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    const-string v0, "onSourceList"

    invoke-static {p1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
