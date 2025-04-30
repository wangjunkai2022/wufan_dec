.class public Lcom/join/mgps/activity/MYAccountReginFinishActivity;
.super Lcom/BaseActivity;
.source "MYAccountReginFinishActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04c3
.end annotation


# static fields
.field private static final u:Ljava/lang/String; = "MYAccountReginFinishActivity"


# instance fields
.field a:Lcom/MApplication;

.field b:Lcom/join/mgps/customview/MyGridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/b;

.field private i:Lcom/join/mgps/adapter/d;

.field private j:I

.field private k:Lcom/join/mgps/dialog/x0;

.field l:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private n:J

.field private o:Z

.field private p:Landroid/content/Context;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/HeadPortraitTable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->j:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->o:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->r:Ljava/util/List;

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->s:Z

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->p:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Lcom/join/mgps/adapter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->i:Lcom/join/mgps/adapter/d;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic H0(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/HeadPicRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/HeadPicRequestBean;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/HeadPicRequestBean;->setUid(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/HeadPicRequestBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/HeadPicRequestBean;->setSign(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->h:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/HeadPicRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->t(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/UserHeadPortrait;

    invoke-virtual {v2}, Lcom/join/mgps/dto/UserHeadPortrait;->isIs_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserHeadPortrait;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserHeadPortrait;->getHead_portrait_pic()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->M0(Ljava/util/List;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->J0()V

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/UserHeadPortrait;

    invoke-virtual {v1}, Lcom/join/mgps/dto/UserHeadPortrait;->getError_msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->J0()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 14
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->J0()V

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    .line 18
    throw v0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->J0()V

    :goto_2
    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->f:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->i:Lcom/join/mgps/adapter/d;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method K0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->n:J

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->P0(Ljava/lang/String;)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method M0(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->b:Lcom/join/mgps/customview/MyGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->a()I

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object p1

    invoke-virtual {p1}, Lg1/b;->d()Ljava/util/List;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->i:Lcom/join/mgps/adapter/d;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method N0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->s:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->a:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->l()V

    return-void
.end method

.method P0(Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setGender(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAccount(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setUid(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->h:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->c(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->O0()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->showLodingDismis()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->h:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->a:Lcom/MApplication;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->e:Landroid/widget/TextView;

    const-string v2, "\u4fee\u6539\u5934\u50cf"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->e:Landroid/widget/TextView;

    const-string v2, "\u6ce8\u518c\u6210\u529f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->k:Lcom/join/mgps/dialog/x0;

    .line 8
    iput-object p0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->p:Landroid/content/Context;

    .line 9
    new-instance v0, Lcom/join/mgps/adapter/d;

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->l:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/join/mgps/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->i:Lcom/join/mgps/adapter/d;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->b:Lcom/join/mgps/customview/MyGridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->b:Lcom/join/mgps/customview/MyGridView;

    new-instance v2, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity$a;-><init>(Lcom/join/mgps/activity/MYAccountReginFinishActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    invoke-static {}, Ln1/y;->n()Ln1/y;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->r:Ljava/util/List;

    .line 14
    new-instance v0, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/HeadPortraitTable;-><init>()V

    const v2, 0x7f0802aa

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setId(I)V

    const-string v2, "\u76f8\u673a"

    .line 16
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->setHead_portrait_pic(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->q:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->i:Lcom/join/mgps/adapter/d;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 21
    iput-boolean v1, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->s:Z

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->N0()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->I0()V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->o:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->k:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginFinishActivity;->k:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
