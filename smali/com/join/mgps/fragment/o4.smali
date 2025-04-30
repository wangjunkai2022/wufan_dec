.class public Lcom/join/mgps/fragment/o4;
.super Landroidx/fragment/app/Fragment;
.source "RecommedFragment.java"

# interfaces
.implements Lcom/join/mgps/listener/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/o4$i;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c032f
.end annotation


# instance fields
.field private A:Z

.field B:I

.field C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field a:Z

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/content/IntentFilter;

.field l:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private m:Lcom/join/mgps/dto/AccountBean;

.field n:I

.field o:I

.field p:Ljava/lang/String;

.field q:I

.field r:I

.field s:Lcom/join/mgps/rpc/c;

.field t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field u:Lcom/join/mgps/fragment/o4$i;

.field private v:Lcom/join/mgps/dialog/x;

.field w:Lcom/join/mgps/activity/DocumentManageActivity;

.field x:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o4;->a:Z

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/join/mgps/fragment/o4;->q:I

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o4;->y:Z

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o4;->A:Z

    .line 7
    iput v0, p0, Lcom/join/mgps/fragment/o4;->B:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/join/mgps/fragment/o4;->C:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/join/mgps/fragment/o4;->D:Ljava/util/List;

    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/o4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/o4;->A:Z

    return p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/o4;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/o4;->A:Z

    return p1
.end method

.method private V(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/u;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/join/mgps/Util/u;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_download_emulator:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.cloud.downCloud"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "downCloud"

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private W()Lcom/join/mgps/dto/ArchiveBuyArgs;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    iget v4, p0, Lcom/join/mgps/fragment/o4;->q:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveBuyArgs;

    move-result-object v0

    return-object v0
.end method

.method private X(Lcom/join/mgps/dto/CloudListDataBean;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/o4;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveEvaluate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;

    move-result-object p1

    return-object p1
.end method

.method private Z()Lcom/join/mgps/dto/ArchiveshopArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/fragment/o4;->r:I

    iget v6, p0, Lcom/join/mgps/fragment/o4;->q:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    const-string v2, ""

    const-string v3, ""

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveshop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ArchiveshopArgs;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/fragment/o4;->r:I

    iget v6, p0, Lcom/join/mgps/fragment/o4;->q:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveshop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ArchiveshopArgs;

    move-result-object v0

    return-object v0
.end method

.method private b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLoding()V

    .line 3
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o4;->c0(I)V

    return-void
.end method

.method private d0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public E(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/o4;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V

    return-void
.end method

.method M(Lcom/join/mgps/dto/ArchiveShopDataBean;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getCode()I

    move-result v0

    const/16 v1, 0x258

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->n0()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o4;->U(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLodingFailed()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method N()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method O(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x4

    const-string v1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    const-string v2, "701"

    const/16 v3, 0x258

    if-eq p2, v0, :cond_2

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/o4;->X(Lcom/join/mgps/dto/CloudListDataBean;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveevaluateArgs;->getArgs()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/c;->a(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveEvaluteDataBean;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getCode()I

    move-result p2

    if-ne p2, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveEvaluteDataBean$DataInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean$DataInfoBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->j0()V

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->l0()V

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "id"

    if-eqz v0, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "uid"

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 16
    iget-object v4, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-interface {v0, p2}, Lcom/join/mgps/rpc/c;->e(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveResponseMain;->getCode()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 21
    :cond_4
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ln1/i;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->q0(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_9

    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->l0()V

    .line 28
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method P()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/MApplication;->E:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/MApplication;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 6
    new-instance v1, Lcom/join/mgps/fragment/o4$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o4$d;-><init>(Lcom/join/mgps/fragment/o4;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method S(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "id"

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->b(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->r0(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string v1, "701"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->l0()V

    const-string p1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method T()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/fragment/o4;->B:I

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLoding()V

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o4;->p0(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method U(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->v0()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->m0()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->g0()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->v0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLodingFailed()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method a0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget v2, p0, Lcom/join/mgps/fragment/o4;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    const-string v4, "id"

    if-ne v2, v3, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v2, "uid"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->d(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDownDataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFile(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFileName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/o4;->V(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    const-string p1, "701"

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->l0()V

    const-string p1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u8d2d\u4e70\u5931\u8d25"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/o4;->n:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "typeIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/o4;->o:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/DocumentManageActivity;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->w:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->x:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->k()Lcom/join/mgps/rpc/impl/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/join/mgps/fragment/o4$i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/o4$i;-><init>(Lcom/join/mgps/fragment/o4;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->u:Lcom/join/mgps/fragment/o4$i;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget v0, p0, Lcom/join/mgps/fragment/o4;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/join/mgps/fragment/o4;->r:I

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->b0()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 15
    iput v3, p0, Lcom/join/mgps/fragment/o4;->r:I

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->b0()V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 17
    iput v1, p0, Lcom/join/mgps/fragment/o4;->r:I

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->b0()V

    goto :goto_0

    .line 19
    :cond_2
    iput v2, p0, Lcom/join/mgps/fragment/o4;->r:I

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->b0()V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/fragment/o4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o4$a;-><init>(Lcom/join/mgps/fragment/o4;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o4$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o4$b;-><init>(Lcom/join/mgps/fragment/o4;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->P()V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o4$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o4$c;-><init>(Lcom/join/mgps/fragment/o4;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    return-void
.end method

.method c0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/join/mgps/fragment/o4;->z:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 3
    iget p1, p0, Lcom/join/mgps/fragment/o4;->o:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->Z()Lcom/join/mgps/dto/ArchiveshopArgs;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveshopArgs;->getArgs()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/c;->g(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->t0()V

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    if-ne v0, v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->M(Lcom/join/mgps/dto/ArchiveShopDataBean;)V

    goto/16 :goto_1

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->W()Lcom/join/mgps/dto/ArchiveBuyArgs;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBuyArgs;->getArgs()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/c;->i(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->t0()V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "701"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->l0()V

    return-void

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 22
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    if-ne v0, v1, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    return-void

    .line 24
    :cond_5
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->M(Lcom/join/mgps/dto/ArchiveShopDataBean;)V

    goto :goto_1

    .line 25
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLodingFailed()V

    :cond_7
    :goto_1
    return-void
.end method

.method e0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method g0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->j0()V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLoding()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->v0()V

    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/o4;->q:I

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->N()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->h0()V

    .line 8
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o4;->c0(I)V

    goto :goto_0

    .line 9
    :cond_0
    iput v1, p0, Lcom/join/mgps/fragment/o4;->q:I

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->N()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->h0()V

    .line 12
    iget v0, p0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o4;->c0(I)V

    :goto_0
    return-void
.end method

.method public k0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->P()V

    return-void
.end method

.method l0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method public m(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    return-void
.end method

.method m0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method n0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 3
    iget v1, p0, Lcom/join/mgps/fragment/o4;->q:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/o4;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->e:Landroid/widget/TextView;

    const-string v1, "\u4ece\u672c\u5730\u6311\u4e00\u4e2a\u5206\u4eab\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->e:Landroid/widget/TextView;

    const-string v1, "\u53bb\u63a8\u8350\u4e0b\u8f7d\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method o0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o4;->z:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/o4;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->e:Landroid/widget/TextView;

    const-string v1, "\u4ece\u672c\u5730\u6311\u4e00\u4e2a\u5206\u4eab\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->e:Landroid/widget/TextView;

    const-string v1, "\u53bb\u63a8\u8350\u4e0b\u8f7d\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o4;->a:Z

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMain(Lcom/join/mgps/event/g;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/o4;->n:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o4;->y:Z

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/join/mgps/fragment/o4;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->C:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/event/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->v0()V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/e;)V
    .locals 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/e;->a()Lcom/join/mgps/dto/CloudListDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/e;->e()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    if-lt v1, v2, :cond_2

    if-gt v1, v3, :cond_2

    .line 8
    iget-object v3, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/fragment/o4$i$a;

    if-eqz v2, :cond_2

    .line 10
    iget-object v3, v2, Lcom/join/mgps/fragment/o4$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    if-eqz v3, :cond_2

    .line 11
    iget-object v4, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/fragment/o4;->o:I

    iget v7, p0, Lcom/join/mgps/fragment/o4;->n:I

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 12
    :cond_4
    :goto_2
    iget p1, p0, Lcom/join/mgps/fragment/o4;->n:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    :cond_5
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->T()Z

    .line 3
    iget p1, p0, Lcom/join/mgps/fragment/o4;->o:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->i0()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->m:Lcom/join/mgps/dto/AccountBean;

    return-void
.end method

.method public p(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_startover_emulator:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o4;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/DocumentManageActivity;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/DocumentManageActivity;->Q0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method p0(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->Z()Lcom/join/mgps/dto/ArchiveshopArgs;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ArchiveshopArgs;->setPn(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->s:Lcom/join/mgps/rpc/c;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveshopArgs;->getArgs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->g(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    return-void

    :cond_1
    add-int/2addr p1, v1

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/o4;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget v0, p0, Lcom/join/mgps/fragment/o4;->B:I

    if-gt p1, v0, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->p0(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->D:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->v0()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->showLodingFailed()V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->D:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->l:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method q0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 2
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/event/e;-><init>(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->u:Lcom/join/mgps/fragment/o4$i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->j0()V

    :goto_0
    return-void
.end method

.method r0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->u0()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->j0()V

    .line 10
    :goto_0
    new-instance v0, Lcom/join/mgps/event/g;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/join/mgps/event/g;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public s(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;->d0()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5269\u4f59\u94dc\u677f\u4e0d\u8db3\uff0c\u53bb\u7b7e\u5230\u9886\u53d6\u66f4\u591a\u94dc\u677f\u5427"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/o4;->l:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNoticeMarcket()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    .line 9
    :cond_4
    new-instance p2, Lcom/join/mgps/dialog/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f120176

    invoke-direct {p2, v0, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    const-string v0, "\u83b7\u53d6\u987b\u77e5"

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u609f\u996d\u5e73\u53f0\u4f1a\u5458\u53ef\u514d\u8d39\u4e0b\u8f7d\u8be5\u5b58\u6863\u3002\u5982\u679c\u4f60\u4e0d\u60f3\u6210\u4e3a\u4f1a\u5458\uff0c\u53ef\u4ee5\u9009\u62e9\u6263\u9664"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u94dc\u677f\u7684\u65b9\u5f0f\u8fdb\u884c\u4e0b\u8f7d\uff0c\u94dc\u677f\u5c06\u8fd4\u8fd8\u81f3\u5b58\u6863\u4f5c\u8005\u3002"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d(\u6263\u9664"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object p2

    const-string v0, "\u4f1a\u5458\u514d\u8d39\u4e0b\u8f7d"

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/fragment/o4$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/o4$h;-><init>(Lcom/join/mgps/fragment/o4;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/fragment/o4$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/o4$g;-><init>(Lcom/join/mgps/fragment/o4;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/fragment/o4$f;

    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/o4$f;-><init>(Lcom/join/mgps/fragment/o4;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/join/mgps/dialog/w;->h(Z)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/fragment/o4$e;

    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/o4$e;-><init>(Lcom/join/mgps/fragment/o4;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->i(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 14
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->a0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->a0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public t(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o4;->S(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.join.android.app.mgsim.wufun.com.cloud.delete"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "cloud"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method t0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method u0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/o4;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->u:Lcom/join/mgps/fragment/o4$i;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method v0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/o4;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4;->u:Lcom/join/mgps/fragment/o4$i;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public y(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    return-void
.end method
