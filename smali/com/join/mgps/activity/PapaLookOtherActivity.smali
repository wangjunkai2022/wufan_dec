.class public Lcom/join/mgps/activity/PapaLookOtherActivity;
.super Lcom/BaseFragmentActivity;
.source "PapaLookOtherActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0527
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "PapaLookOtherActivity"


# instance fields
.field private a:Landroidx/fragment/app/FragmentManager;

.field private b:I

.field c:Lcom/join/mgps/rpc/d;

.field d:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private g:I

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091030
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field private m:Z

.field n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->m:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method D0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goCollectionCommentActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method E0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->b:I

    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    const-string v3, "home"

    const-string v4, "5-0"

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/dto/ExtBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getLookOther(ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->c:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->s(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionDataBean;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getTpl_type()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getTpl_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->H0(ILcom/join/mgps/dto/CollectionDataBean;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/BreakBeanMain;->getCrc_collection_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getComment_switch()I

    move-result v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBean;->getComment_count()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->J0(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->I0()V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLodingFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLodingFailed()V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method F0()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->m:Z

    return v0
.end method

.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method H0(ILcom/join/mgps/dto/CollectionDataBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->a:Landroidx/fragment/app/FragmentManager;

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/BreakBeanMain;->getCrc_collection_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "collection_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f090535

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/join/mgps/fragment/r;

    invoke-direct {p1}, Lcom/join/mgps/fragment/r;-><init>()V

    .line 7
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/q;->b0(Lcom/join/mgps/dto/CollectionDataBean;)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v1, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lcom/join/mgps/fragment/t;

    invoke-direct {p1}, Lcom/join/mgps/fragment/t;-><init>()V

    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/s;->c0(Lcom/join/mgps/dto/CollectionDataBean;)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {v1, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->F0()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    :goto_1
    return-void
.end method

.method I0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->j:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method J0(II)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->p:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->r:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->p:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method L0()V
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

    sget-object v1, Lcom/papa/sim/statistic/Where;->lookOther:Lcom/papa/sim/statistic/Where;

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->c:Lcom/join/mgps/rpc/d;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u5927\u5bb6\u90fd\u5728\u73a9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->E0()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLoding()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->getDownloadTaskInfo()V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->updateDownloadView()V

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
    iget-object v3, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->updateDownloadView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->m:Z

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/PapaLookOtherActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->showLoding()V

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->g:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u5927\u5bb6\u90fd\u5728\u73a9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaLookOtherActivity;->E0()V

    :goto_0
    return-void
.end method

.method serverConnectionException()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

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

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaLookOtherActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :goto_0
    return-void
.end method
