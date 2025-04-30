.class public Lcom/join/mgps/activity/MGChooseIconActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MGChooseIconActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c03e6
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/adapter/d;

.field c:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/join/mgps/dialog/x0;

.field g:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/b;

.field i:Lcom/MApplication;

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field n:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/activity/MGChooseIconActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic D0(Lcom/join/mgps/activity/MGChooseIconActivity;)Lcom/join/mgps/adapter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->b:Lcom/join/mgps/adapter/d;

    return-object p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MGChooseIconActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method F0()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/HeadPicRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/HeadPicRequestBean;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->setUid(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->setSign(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->h:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/HeadPicRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->t(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserHeadPortrait;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserHeadPortrait;->isIs_success()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UserHeadPortrait;

    invoke-virtual {v0}, Lcom/join/mgps/dto/UserHeadPortrait;->getHead_portrait_pic()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->I0(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    if-nez v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    if-nez v0, :cond_3

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->H0()V

    goto :goto_2

    .line 15
    :goto_1
    iget-boolean v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    if-nez v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->H0()V

    .line 17
    :cond_1
    throw v0

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    if-nez v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->H0()V

    :cond_3
    :goto_2
    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->k:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    return-void
.end method

.method I0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 4
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object p1

    invoke-virtual {p1}, Lg1/b;->d()Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->b:Lcom/join/mgps/adapter/d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method J0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method K0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/listener/a;->c()V

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->k(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->F0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/16 p1, 0x2711

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLoading()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setGender(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAccount(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setUid(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->h:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->c(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->K0(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->showLodingDismis()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->h:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->i:Lcom/MApplication;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->a:Landroid/content/Context;

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->f:Lcom/join/mgps/dialog/x0;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u56fe\u50cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/join/mgps/activity/MGChooseIconActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGChooseIconActivity$a;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->m:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/join/mgps/adapter/d;

    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->g:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/join/mgps/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->b:Lcom/join/mgps/adapter/d;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    const v1, 0x7f0802aa

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setId(I)V

    const-string v1, "\u76f8\u673a"

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->b:Lcom/join/mgps/adapter/d;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->l:Z

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->J0()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->G0()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->f:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->f:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->J0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGChooseIconActivity;->G0()V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->f:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->f:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGChooseIconActivity;->f:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
