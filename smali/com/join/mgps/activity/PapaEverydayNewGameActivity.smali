.class public Lcom/join/mgps/activity/PapaEverydayNewGameActivity;
.super Lcom/BaseActivity;
.source "PapaEverydayNewGameActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0030
.end annotation


# static fields
.field private static final u:Ljava/lang/String; = "PapaEverydayNewGameActivity"


# instance fields
.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091033
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView4NewGame;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091030
    .end annotation
.end field

.field h:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field i:Landroid/os/Handler;

.field j:Lcom/join/mgps/customview/j;

.field k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

.field l:Lcom/join/mgps/rpc/d;

.field m:I

.field n:I

.field o:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field volatile p:Lcom/join/mgps/dto/EverydayNewGameResponse;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->i:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->S0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->O0()V

    return-void
.end method

.method private H0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    const-string v4, ""

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "\u6700\u65b0"

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v4, v0

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    return-object v4
.end method

.method private I0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->getDownloadTaskInfo()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u6bcf\u65e5\u4e0a\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasksiz     mapsize  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "infoo"

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    new-instance v1, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$a;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 15
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$b;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->j:Lcom/join/mgps/customview/j;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    .line 18
    new-instance v1, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$c;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->p(Lcom/join/mgps/adapter/EverydayNewGameAdapter$k;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private N0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->M0(I)V

    return-void
.end method

.method private O0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->N0()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    const v0, 0x7f110206

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private Q0()V
    .locals 10

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getHead_ad()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getHead_ad()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getHead_ad()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 6
    new-instance v5, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;

    sget-object v6, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_AD:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;

    invoke-direct {v7, v2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$a;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RecomDatabean;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 11
    new-instance v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-direct {v3, v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v7}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    invoke-virtual {v3, v5}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 15
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    new-instance v2, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;

    sget-object v5, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_EXPLOSION:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    new-instance v6, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;

    invoke-direct {v6, v3}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;-><init>(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    invoke-direct {v2, v5, v6}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;Ljava/lang/Object;)V

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    .line 19
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v3}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 20
    iget-object v3, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v3}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameBeanCollection;

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameBeanCollection;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-direct {p0, v5}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->L0(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 24
    :cond_5
    new-instance v5, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;

    sget-object v7, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_SECTION_TITLE:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$d;

    invoke-direct {v8, v6}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$d;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;Ljava/lang/Object;)V

    .line 25
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 27
    :goto_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameBeanCollection;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 28
    new-instance v7, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameBeanCollection;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-direct {v7, v8}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 29
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 30
    :cond_6
    iget-object v6, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->Z0(Ljava/util/List;Ljava/util/List;)V

    .line 31
    new-instance v6, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;

    sget-object v7, Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;->VIEW_GAME_LIST:Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameBeanCollection;->getType()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v5}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v6, v7, v8}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter$ViewType;Ljava/lang/Object;)V

    .line 32
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 33
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->P0(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private S0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v0}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v0}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {v0}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AppBean;->setResidual_time(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private T0(ILcom/join/mgps/dto/EverydayNewGameResponse;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getHead_ad()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x81

    invoke-direct {p0, v0, v1, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->V0(Ljava/util/List;II)V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getThe_explosion()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->V0(Ljava/util/List;II)V

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameBeanCollection;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameBeanCollection;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 7
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 9
    iput-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->p:Lcom/join/mgps/dto/EverydayNewGameResponse;

    invoke-virtual {p1}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->Q0()V

    return-void
.end method

.method private V0(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private W0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$d;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method G0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u66f4\u65b0\u54e6~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$f;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$f;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$e;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$g;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity$g;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method J0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->showToast(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method K0(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameBeanCollection;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    :cond_2
    return p1
.end method

.method L0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method M0(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->a1(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    if-eq p1, v1, :cond_1

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    return-void

    .line 8
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    sget v3, Lcom/join/mgps/Util/i0;->d:I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getEverdayNewGame(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->l:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->x(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result v3

    const/16 v4, 0x258

    if-ne v3, v4, :cond_6

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/EverydayNewGameResponse;

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->T0(ILcom/join/mgps/dto/EverydayNewGameResponse;)V

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/dto/EverydayNewGameResponse;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->K0(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    iput p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->m:I

    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    goto :goto_1

    .line 16
    :cond_4
    :goto_0
    iput v1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iget p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    if-eq p1, v1, :cond_5

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    .line 20
    :cond_5
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    return-void

    :cond_6
    const/4 p1, 0x4

    .line 21
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :goto_1
    iget p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    if-eq p1, v1, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    const/16 v2, 0x10

    .line 23
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    iget p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    if-eq p1, v1, :cond_7

    .line 26
    :goto_2
    iput v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    .line 27
    :cond_7
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    goto :goto_4

    .line 28
    :goto_3
    iget v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    if-eq v2, v1, :cond_8

    .line 29
    iput v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    .line 30
    :cond_8
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    .line 31
    throw p1

    :cond_9
    const p1, 0x7f110206

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 33
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    .line 34
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    :goto_4
    return-void
.end method

.method P0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->o(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/Map;I)V

    :cond_0
    return-void
.end method

.method U0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->k:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method X0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method Y0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->everdayNew:Lcom/papa/sim/statistic/Where;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method public Z0(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 7
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v7

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->q:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 10
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v5

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v6

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_9
    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 22
    :cond_a
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method a1(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->n:I

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->W0()V

    const/4 p1, 0x0

    return p1
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->l:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->I0()V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->O0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 p1, 0xb

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateDownloadView()V

    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->r()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateDownloadView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    const/4 v3, 0x7

    if-eq p1, v3, :cond_0

    const/16 v2, 0x30

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_2
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->Q0()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDownloadView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "::::\u5df2\u7ecf\u8fdb\u5165\u4e0b\u8f7d\u961f\u5217\u4e2d\u7684\u6570\u91cf:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :goto_0
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
