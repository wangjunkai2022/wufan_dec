.class public Lcom/join/mgps/activity/MyGameEditActivity;
.super Lcom/BaseActivity;
.source "MyGameEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyGameEditActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c005a
.end annotation


# instance fields
.field private a:Lcom/join/mgps/adapter/n3;

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private j:Lcom/join/mgps/dialog/x0;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/RecomDatabean;

.field m:Landroid/view/View;

.field private n:Z

.field o:Lcom/join/mgps/rpc/d;

.field p:Landroid/app/Dialog;

.field q:Z

.field r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->q:Z

    const-string v0, "\u5728\u7ebf\u73a9H5"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->r:Ljava/lang/String;

    return-void
.end method

.method private Q0(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gameTopAd()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method private T0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    iget-object v2, v2, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    .line 4
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MyGameEditActivity;->R0(Ljava/util/HashMap;)V

    return-void
.end method

.method private X0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->c:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->c:Landroid/widget/ListView;

    .line 2
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->m:Landroid/view/View;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->l:Lcom/join/mgps/dto/RecomDatabean;

    :cond_0
    return-void
.end method

.method F0()Z
    .locals 3

    const-string v0, "\u5168\u90e8"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "\u5168\u90e8\u6e38\u620f"

    const-string v2, "\u7f51\u6e38"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method H0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->T0()V

    return-void
.end method

.method I0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method J0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->W0()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->P0(I)V

    return-void
.end method

.method K0()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->gameTopAd()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/p;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyGameEditActivity;->N0(Lcom/join/mgps/dto/RecomDatabean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->n:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->n:Z

    .line 5
    throw v1
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->j:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method M0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->T0()V

    return-void
.end method

.method N0(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->l:Lcom/join/mgps/dto/RecomDatabean;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->l:Lcom/join/mgps/dto/RecomDatabean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->l:Lcom/join/mgps/dto/RecomDatabean;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    const-string v0, "h5"

    .line 7
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->l:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    const-string v0, "0.1"

    .line 12
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method O0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    iget-object v0, v0, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    const v2, 0x7f11024a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v1

    const-string v4, ""

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->X0()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method P0(I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    iget-object v0, v0, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->c0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const v3, 0x7f11024b

    .line 7
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/MyGameEditActivity;->S0(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "h5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->g:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v3}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x3e8

    .line 14
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->O0()V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->L0()V

    return-void
.end method

.method public R0(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget-object v5, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    iget-object v5, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    mul-double v5, v5, v7

    mul-double v5, v5, v7

    double-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    const/4 v3, 0x2

    const v5, 0x7f11024a

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "0"

    aput-object v5, v3, v0

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v7, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 8
    iget-object v7, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 9
    iget-object v7, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\uff0c"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v4, p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_2
    return-void
.end method

.method S0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->j:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/x0;->a(Ljava/lang/String;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method U0(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/MyGameEditActivity$a;-><init>(Lcom/join/mgps/activity/MyGameEditActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method V0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    const v1, 0x7f0c011f

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    const v1, 0x7f09036b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    const v2, 0x7f09100a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    const v3, 0x7f09036e

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u6e38\u620f"

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u609f\u996d\u5728\u7ebf\u73a9\uff1f"

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5220\u9664"

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    const v2, 0x7f090365

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 11
    new-instance v2, Lcom/join/mgps/activity/MyGameEditActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGameEditActivity$b;-><init>(Lcom/join/mgps/activity/MyGameEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Lcom/join/mgps/activity/MyGameEditActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyGameEditActivity$c;-><init>(Lcom/join/mgps/activity/MyGameEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method W0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->j:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->j:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->o:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->X0()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->F0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->K0()V

    .line 8
    :cond_1
    new-instance v0, Lcom/join/mgps/adapter/n3;

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/n3;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->a:Lcom/join/mgps/adapter/n3;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->d:Landroid/widget/Button;

    const v1, 0x7f11024a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v0, Lcom/join/mgps/dialog/x0;

    const v1, 0x7f120178

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->j:Lcom/join/mgps/dialog/x0;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->k:Ljava/util/List;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->j:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->W0()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->P0(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->L0()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->O0()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->L0()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->O0()V

    :cond_2
    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
