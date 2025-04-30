.class public Lcom/join/mgps/activity/ForumIndexActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumIndexActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0035
.end annotation


# instance fields
.field a:Lcom/join/mgps/fragment/q0;

.field private b:Landroidx/fragment/app/FragmentManager;

.field c:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->d:Z

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->b:Landroidx/fragment/app/FragmentManager;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumIndexActivity;->a:Lcom/join/mgps/fragment/q0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/fragment/r0;

    invoke-direct {v1}, Lcom/join/mgps/fragment/r0;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumIndexActivity;->a:Lcom/join/mgps/fragment/q0;

    const v2, 0x7f090a50

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method clearOldCache(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RecomDatabean;

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method getHomePopupAd()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getHomePopupAd(ZI)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/c;->O1()Lq1/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lq1/c;->R1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResultMainBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PopupAdBean;

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumIndexActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumIndexActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumIndexActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumIndexActivity;->showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V

    :goto_0
    return-void
.end method

.method isHomePopupAdCached(Lcom/join/mgps/dto/PopupAdBean;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Lcom/join/mgps/Util/k0;->n(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumIndexActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5, p0, v6, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz p1, :cond_7

    .line 11
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/k0;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumIndexActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, p0, v1, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_6
    :goto_4
    and-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_1
    move-exception p1

    move v1, v2

    .line 20
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v2

    :goto_7
    return v1
.end method

.method isHomePopupAdLocalCached(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->a:Lcom/join/mgps/fragment/q0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "ForumPostsFragment"

    .line 1
    invoke-static {p0, v0}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->d:Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->a:Lcom/join/mgps/fragment/q0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/q0;->G0()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->a:Lcom/join/mgps/fragment/q0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/q0;->t0()V

    :cond_0
    return-void
.end method

.method preLoad(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumIndexActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v4, p0, v5, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumIndexActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, p0, v1, v0}, Lcom/join/mgps/Util/k0;->f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 18
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method showHomePopupAd(Lcom/join/mgps/dto/PopupAdBean;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLast()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v3, ""

    const/4 v2, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    const-class v0, Lcom/join/mgps/dto/PopupAdBean;

    invoke-virtual {p1, v3, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PopupAdBean;

    :cond_1
    if-eqz p1, :cond_7

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/PopupAdBean;->getStart_up_counts()I

    move-result v3

    if-ge v2, v3, :cond_2

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLast()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumIndexActivity;->clearOldCache(Lcom/join/mgps/dto/PopupAdBean;)V

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_6

    .line 14
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumIndexActivity;->preLoad(Lcom/join/mgps/dto/PopupAdBean;)V

    if-nez v2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumIndexActivity;->isHomePopupAdCached(Lcom/join/mgps/dto/PopupAdBean;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdLastTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    iget-boolean p1, p0, Lcom/join/mgps/activity/ForumIndexActivity;->d:Z

    if-nez p1, :cond_7

    .line 20
    invoke-static {p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_;->r(Landroid/content/Context;)Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;->a(Ljava/lang/String;)Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;

    move-result-object p1

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity_$f;->startForResult(I)Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method touristLogin()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x3e8L
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    .line 4
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v3, "2"

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumIndexActivity;->c:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 11
    invoke-static {v2}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
