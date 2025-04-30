.class public Lcom/join/mgps/activity/f2;
.super Lcom/join/mgps/Util/o0$a;
.source "PapaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/f2$m;,
        Lcom/join/mgps/activity/f2$l;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0484
.end annotation


# static fields
.field private static final U0:Ljava/lang/String; = "MGPapaMainFragmentNew"


# instance fields
.field private A:[Landroid/widget/ImageView;

.field A0:I

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field B0:Z

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field C0:Landroid/os/Handler;

.field D:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private D0:Ljava/lang/String;

.field private E:Landroid/widget/LinearLayout;

.field E0:Lcom/join/mgps/customview/t;

.field private F:Landroid/widget/LinearLayout;

.field private F0:I

.field private G:Lcom/join/mgps/adapter/h4;

.field private G0:I

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private H0:I

.field private I:I

.field private I0:I

.field private J:I

.field private J0:Lcom/join/mgps/dto/RecomDatabean;

.field private K:J

.field private K0:Lcom/join/mgps/dto/RecomDatabean;

.field private L0:Ljava/lang/String;

.field M0:J

.field N0:J

.field O0:Landroid/os/Handler;

.field P0:Ljava/lang/Runnable;

.field Q0:Z

.field private R0:Z

.field private S0:Landroid/util/SparseArray;

.field T0:Landroid/view/GestureDetector;

.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

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

.field f:Lcom/join/mgps/rpc/d;

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n0:Z

.field o:Landroid/widget/ViewFlipper;

.field private o0:Landroid/widget/FrameLayout;

.field private p:Landroid/content/Context;

.field p0:Lcom/join/mgps/pref/f;

.field private q:Lcom/join/mgps/adapter/a;

.field q0:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field r0:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s:Landroid/widget/LinearLayout;

.field private s0:Z

.field private t:Landroid/widget/LinearLayout;

.field private t0:Z

.field private u:Landroid/widget/LinearLayout;

.field private u0:Ljava/lang/String;

.field private v:Landroid/widget/LinearLayout;

.field private v0:I

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private w0:I

.field private x:Z

.field x0:Lcom/join/android/app/component/video/c;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BannerImage;",
            ">;"
        }
    .end annotation
.end field

.field y0:Lcom/join/mgps/activity/MGMainActivity;

.field private z:Landroid/view/ViewGroup;

.field z0:Lcom/join/kotlin/presenter/HomeViewModle;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/o0$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->n0:Z

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->p0:Lcom/join/mgps/pref/f;

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->s0:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->t0:Z

    const-string v0, "m1"

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/f2;->v0:I

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/f2;->w0:I

    .line 12
    iput v1, p0, Lcom/join/mgps/activity/f2;->A0:I

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->B0:Z

    .line 14
    new-instance v2, Lcom/join/mgps/activity/f2$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/f2$e;-><init>(Lcom/join/mgps/activity/f2;)V

    iput-object v2, p0, Lcom/join/mgps/activity/f2;->C0:Landroid/os/Handler;

    const-string v2, "28"

    .line 15
    iput-object v2, p0, Lcom/join/mgps/activity/f2;->D0:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/join/mgps/activity/f2;->F0:I

    .line 17
    iput v1, p0, Lcom/join/mgps/activity/f2;->G0:I

    const-string v2, ""

    .line 18
    iput-object v2, p0, Lcom/join/mgps/activity/f2;->L0:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/join/mgps/activity/f2;->M0:J

    .line 20
    iput-wide v2, p0, Lcom/join/mgps/activity/f2;->N0:J

    .line 21
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/f2;->O0:Landroid/os/Handler;

    .line 22
    new-instance v2, Lcom/join/mgps/activity/e2;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/e2;-><init>(Lcom/join/mgps/activity/f2;)V

    iput-object v2, p0, Lcom/join/mgps/activity/f2;->P0:Ljava/lang/Runnable;

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->Q0:Z

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->R0:Z

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->S0:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/join/mgps/activity/f2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/f2$b;-><init>(Lcom/join/mgps/activity/f2;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->T0:Landroid/view/GestureDetector;

    return-void
.end method

.method private J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-direct {v0, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 4
    new-instance v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-direct {v1, v0}, Lcom/join/mgps/business/RecomDatabeanBusiness;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    .line 5
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method private L0(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dataFrom"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ln1/f0;->p()Ln1/f0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/RecomDatabeanTable;

    .line 7
    new-instance v3, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v3}, Lcom/join/mgps/dto/RecomDatabean;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->getDataFrom()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RecomDatabean;->setDataFrom(I)V

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->getMain()Lcom/join/mgps/db/tables/ModleBeanTable;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/ModleBeanTable;->getModleBean()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    .line 11
    :cond_0
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/RecomDatabean;->setMain(Lcom/join/mgps/dto/ModleBean;)V

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->getMore()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 15
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/db/tables/AppMoreBeanTable;

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/AppMoreBeanTable;->getAppMoreBean()Lcom/join/mgps/dto/AppMoreBean;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/RecomDatabean;->setMore(Ljava/util/List;)V

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->getSub()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v2

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 23
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/AppBeanMainTable;

    .line 25
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanMainTable;->getAppbeanMain()Lcom/join/mgps/dto/AppBeanMain;

    move-result-object v6

    .line 26
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanMainTable;->getGame_info()Lcom/join/mgps/db/tables/AppBeanTable;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanTable;->getAppBean()Lcom/join/mgps/dto/AppBean;

    move-result-object v7

    .line 29
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanTable;->getTag_info()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanTable;->getTag_info()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v8

    invoke-interface {v8}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v8

    .line 31
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 34
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/db/tables/TipBeanTable;

    .line 35
    invoke-virtual {v10}, Lcom/join/mgps/db/tables/TipBeanTable;->getTipBean()Lcom/join/mgps/dto/TipBean;

    move-result-object v10

    .line 36
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_3
    invoke-virtual {v7, v9}, Lcom/join/mgps/dto/AppBean;->setTag_info(Ljava/util/ArrayList;)V

    .line 38
    :cond_4
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 39
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/AppBeanTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/ForeignCollection;->getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v5

    .line 40
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 41
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/db/tables/DownloadUrlTable;

    .line 44
    invoke-virtual {v9}, Lcom/join/mgps/db/tables/DownloadUrlTable;->getDownUrlBean()Lcom/join/mgps/dto/DownloadUrlBean;

    move-result-object v9

    .line 45
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 46
    :cond_5
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/AppBean;->setTp_down_url(Ljava/util/List;)V

    .line 47
    :cond_6
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/AppBeanMain;->setGame_info(Lcom/join/mgps/dto/AppBean;)V

    goto :goto_2

    .line 48
    :cond_7
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RecomDatabean;->setSub(Ljava/util/List;)V

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-object v0
.end method

.method public static synthetic M(Lcom/join/mgps/activity/f2;ILcom/join/mgps/dto/BannerBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/f2;->x0(ILcom/join/mgps/dto/BannerBean;Landroid/view/View;)V

    return-void
.end method

.method private M0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

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
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iget-object v5, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, v3}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, v5}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->G0()V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/activity/f2;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->w0()V

    return-void
.end method

.method private N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

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

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->G0()V
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

.method private O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->p1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->G0()V

    return-void
.end method

.method static synthetic P(Lcom/join/mgps/activity/f2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    return-object p0
.end method

.method private P0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->p1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->G0()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/activity/f2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/f2;->n0:Z

    return p0
.end method

.method static synthetic R(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/customview/LoopViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    return-object p0
.end method

.method static synthetic T(Lcom/join/mgps/activity/f2;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/f2;->k1(Ljava/util/List;I)V

    return-void
.end method

.method private T0(Ljava/util/List;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RecomDatabean;

    .line 3
    new-instance v3, Lcom/join/mgps/db/tables/RecomDatabeanTable;

    invoke-direct {v3}, Lcom/join/mgps/db/tables/RecomDatabeanTable;-><init>()V

    .line 4
    invoke-virtual {v3, p2}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->setDataFrom(I)V

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v5, Lcom/join/mgps/db/tables/ModleBeanTable;

    invoke-direct {v5, v4}, Lcom/join/mgps/db/tables/ModleBeanTable;-><init>(Lcom/join/mgps/dto/ModleBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    :try_start_1
    invoke-static {}, Ln1/c0;->n()Ln1/c0;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 8
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_1
    invoke-virtual {v3, v5}, Lcom/join/mgps/db/tables/RecomDatabeanTable;->setMain(Lcom/join/mgps/db/tables/ModleBeanTable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 10
    :cond_0
    :try_start_3
    invoke-static {}, Ln1/f0;->p()Ln1/f0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    .line 11
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    .line 13
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 14
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/AppBeanMain;

    .line 15
    new-instance v7, Lcom/join/mgps/db/tables/AppBeanMainTable;

    invoke-direct {v7, v6}, Lcom/join/mgps/db/tables/AppBeanMainTable;-><init>(Lcom/join/mgps/dto/AppBeanMain;)V

    .line 16
    invoke-virtual {v7, v3}, Lcom/join/mgps/db/tables/AppBeanMainTable;->setRecomDatabeanTable(Lcom/join/mgps/db/tables/RecomDatabeanTable;)V

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 18
    new-instance v8, Lcom/join/mgps/db/tables/AppBeanTable;

    invoke-direct {v8, v6}, Lcom/join/mgps/db/tables/AppBeanTable;-><init>(Lcom/join/mgps/dto/AppBean;)V

    .line 19
    invoke-static {}, Ln1/b;->n()Ln1/b;

    move-result-object v9

    invoke-virtual {v9, v8}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v10, 0x0

    .line 22
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 23
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/TipBean;

    .line 24
    new-instance v12, Lcom/join/mgps/db/tables/TipBeanTable;

    invoke-direct {v12, v11}, Lcom/join/mgps/db/tables/TipBeanTable;-><init>(Lcom/join/mgps/dto/TipBean;)V

    .line 25
    invoke-virtual {v12, v8}, Lcom/join/mgps/db/tables/TipBeanTable;->setAppBeanTable(Lcom/join/mgps/db/tables/AppBeanTable;)V

    .line 26
    invoke-static {}, Ln1/k0;->n()Ln1/k0;

    move-result-object v11

    invoke-virtual {v11, v12}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 27
    :cond_2
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getTp_down_url()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    const/4 v9, 0x0

    .line 29
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 30
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 31
    new-instance v11, Lcom/join/mgps/db/tables/DownloadUrlTable;

    invoke-direct {v11, v10}, Lcom/join/mgps/db/tables/DownloadUrlTable;-><init>(Lcom/join/mgps/dto/DownloadUrlBean;)V

    .line 32
    invoke-virtual {v11, v8}, Lcom/join/mgps/db/tables/DownloadUrlTable;->setAppBeanTable(Lcom/join/mgps/db/tables/AppBeanTable;)V

    .line 33
    invoke-static {}, Ln1/l;->n()Ln1/l;

    move-result-object v10

    invoke-virtual {v10, v11}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 34
    :cond_4
    invoke-virtual {v7, v8}, Lcom/join/mgps/db/tables/AppBeanMainTable;->setGame_info(Lcom/join/mgps/db/tables/AppBeanTable;)V

    .line 35
    :cond_5
    invoke-static {}, Ln1/a;->n()Ln1/a;

    move-result-object v6

    invoke-virtual {v6, v7}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 36
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMore()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 38
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppMoreBean;

    .line 39
    new-instance v4, Lcom/join/mgps/db/tables/AppMoreBeanTable;

    invoke-direct {v4, v2}, Lcom/join/mgps/db/tables/AppMoreBeanTable;-><init>(Lcom/join/mgps/dto/AppMoreBean;)V

    .line 40
    invoke-virtual {v4, v3}, Lcom/join/mgps/db/tables/AppMoreBeanTable;->setRecomDatabeanTable(Lcom/join/mgps/db/tables/RecomDatabeanTable;)V

    .line 41
    invoke-static {}, Ln1/c;->n()Ln1/c;

    move-result-object v2

    invoke-virtual {v2, v4}, Lg1/b;->k(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method static synthetic U(Lcom/join/mgps/activity/f2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V(Lcom/join/mgps/activity/f2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    return-object p1
.end method

.method private V0(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "22-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, p1, v1}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/activity/f2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/f2;->v0:I

    return p0
.end method

.method private W0(Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
    .locals 11

    const-string v0, "-"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    const-string v1, "\u6a21\u5757"

    const-string v2, "0"

    const-string v3, "\u5927\u5bb6\u90fd\u5728\u73a9"

    const-string v4, "\u7f51\u6e38\u63a8\u8350"

    const-string v5, "\u6700\u65b0\u7f51\u6e38"

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 3
    aget-object v6, p1, v0

    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 4
    array-length v0, p1

    if-le v0, v7, :cond_0

    aget-object v2, p1, v7

    :cond_0
    move-object v7, v2

    move-object v6, v3

    goto :goto_1

    .line 5
    :cond_1
    aget-object v3, p1, v0

    const-string v6, "7"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    array-length v0, p1

    if-le v0, v7, :cond_2

    aget-object v2, p1, v7

    :cond_2
    move-object v7, v2

    move-object v6, v4

    goto :goto_1

    .line 7
    :cond_3
    aget-object v0, p1, v0

    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    array-length v0, p1

    if-le v0, v7, :cond_4

    aget-object v2, p1, v7

    :cond_4
    move-object v7, v2

    move-object v6, v5

    goto :goto_1

    .line 9
    :cond_5
    array-length v0, p1

    const/4 v3, 0x2

    if-le v0, v3, :cond_6

    .line 10
    aget-object v2, p1, v3

    .line 11
    :cond_6
    array-length v0, p1

    const/4 v3, 0x3

    if-le v0, v3, :cond_8

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    aget-object v2, p1, v3

    goto :goto_0

    :cond_7
    const-string v1, ""

    :cond_8
    :goto_0
    move-object v6, v1

    move-object v7, v2

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->z0:Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v0}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "  "

    const-string v2, "volcannoEvent"

    if-eqz v0, :cond_9

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hasSend= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->z0:Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v0}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/psk/eventmodule/StatFactory;->Companion:Lcom/psk/eventmodule/StatFactory$Companion;

    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/psk/eventmodule/StatFactory$Companion;->getInstance(Landroid/content/Context;)Lcom/psk/eventmodule/StatFactory;

    move-result-object p1

    new-instance v9, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;

    sget-object v1, Lcom/psk/eventmodule/Event;->exposure:Lcom/psk/eventmodule/Event;

    new-instance v10, Lcom/psk/eventmodule/StatFactory$SpmData;

    const/4 v8, 0x0

    const-string v4, "wufun"

    const-string v5, "home"

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/psk/eventmodule/StatFactory$SpmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v9

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/psk/eventmodule/StatFactory$VolcanoEvent;-><init>(Lcom/psk/eventmodule/Event;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$SpmData;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    invoke-virtual {p1, v9}, Lcom/psk/eventmodule/StatFactory;->sendEvent(Lcom/psk/eventmodule/StatFactory$VolcanoEvent;)V

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/activity/f2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/f2;->v0:I

    return p1
.end method

.method private X0()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/f2;->J:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/f2;->I:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/f2;->I:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/f2;->J:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/f2;->J:I

    if-nez v0, :cond_1

    iget v2, p0, Lcom/join/mgps/activity/f2;->I:I

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/f2;->I:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->Q0:Z

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 8
    iget v2, p0, Lcom/join/mgps/activity/f2;->I:I

    if-gt v1, v2, :cond_4

    iget v2, p0, Lcom/join/mgps/activity/f2;->J:I

    if-lt v1, v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 14
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v3

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/join/mgps/activity/f2;->W0(Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/activity/f2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/f2;->w0:I

    return p1
.end method

.method private Z0(Ljava/util/List;II)V
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

.method static synthetic a0(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    return-object p0
.end method

.method private a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v4, "0"

    .line 9
    array-length v5, p1

    const-string v6, "\u6a21\u5757"

    const-string v7, "\u5927\u5bb6\u90fd\u5728\u73a9"

    const-string v8, "\u7f51\u6e38\u63a8\u8350"

    const-string v9, "\u6700\u65b0\u7f51\u6e38"

    if-lez v5, :cond_8

    .line 10
    aget-object v5, p1, v2

    const-string v10, "4"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x1

    if-eqz v5, :cond_2

    .line 11
    array-length v1, p1

    if-le v1, v10, :cond_1

    aget-object v4, p1, v10

    :cond_1
    move-object v6, v7

    goto :goto_0

    .line 12
    :cond_2
    aget-object v5, p1, v2

    const-string v7, "7"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    array-length v1, p1

    if-le v1, v10, :cond_3

    aget-object v4, p1, v10

    :cond_3
    move-object v6, v8

    goto :goto_0

    .line 14
    :cond_4
    aget-object v2, p1, v2

    const-string v5, "5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    array-length v1, p1

    if-le v1, v10, :cond_5

    aget-object v4, p1, v10

    :cond_5
    move-object v6, v9

    goto :goto_0

    .line 16
    :cond_6
    array-length v2, p1

    const/4 v5, 0x2

    if-le v2, v5, :cond_7

    .line 17
    aget-object v4, p1, v5

    .line 18
    :cond_7
    array-length v2, p1

    if-le v2, v1, :cond_9

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    aget-object v4, p1, v1

    goto :goto_0

    :cond_8
    const-string v6, ""

    .line 21
    :cond_9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    return-object p0
.end method

.method static synthetic c0(Lcom/join/mgps/activity/f2;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c1(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/RecomDatabean;

    const/16 v4, 0xd

    .line 7
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ModleBean;->setPic_remote(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/ModleBean;->setVedio_url(Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 12
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 13
    :goto_1
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 15
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/f2;->a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/f2;)[Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e0(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/Util/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    return-object p0
.end method

.method private j0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ln1/d;->n()Ln1/d;

    move-result-object v1

    invoke-virtual {v1}, Lg1/b;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/BannerAndTablesTable;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/BannerAndTablesTable;->getBannerBean()Lcom/join/mgps/dto/BannerBean;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private k1(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    const/16 v3, 0x69

    invoke-direct {v1, v3}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->V0(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private m0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "localType"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p0:Lcom/join/mgps/pref/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/join/mgps/pref/f;->callOnlineCoupon(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private o0()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/f2;->J:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->S0:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/f2$l;

    if-eqz v2, :cond_0

    .line 3
    iget v2, v2, Lcom/join/mgps/activity/f2$l;->a:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->S0:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/f2$l;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/join/mgps/activity/f2$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/f2$l;-><init>(Lcom/join/mgps/activity/f2;)V

    .line 6
    :cond_2
    iget v0, v0, Lcom/join/mgps/activity/f2$l;->b:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private p1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 9
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 18
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_6
    if-nez v3, :cond_7

    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_7
    if-eqz v3, :cond_9

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method private s1()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/f2;->J:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/join/mgps/activity/f2;->I:I

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/f2;->J:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/f2;->I:I

    if-gt v0, v1, :cond_a

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    if-eqz v1, :cond_9

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    if-nez v2, :cond_3

    goto/16 :goto_4

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 11
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    iget v5, p0, Lcom/join/mgps/activity/f2;->J:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/adapter/h4$h2;

    if-eqz v5, :cond_9

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h4$h2;

    .line 15
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    .line 16
    :cond_5
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 17
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_6

    .line 18
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_6
    iget-object v8, v2, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_7

    .line 21
    iget-object v3, v2, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 22
    :cond_7
    iget-object v3, v2, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 23
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 24
    iget-object v1, v2, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_8
    :goto_3
    return-void

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private u0()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->j:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v2, Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/presenter/HomeViewModle;

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->z0:Lcom/join/kotlin/presenter/HomeViewModle;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/kotlin/presenter/HomeViewModle;->initStat(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->z0:Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/join/mgps/adapter/h4;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    iget-object v4, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    iget-object v5, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    new-instance v6, Lcom/join/mgps/activity/f2$g;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/f2$g;-><init>(Lcom/join/mgps/activity/f2;)V

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/h4;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/join/android/app/component/video/c;Lo1/e;)V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->G:Lcom/join/mgps/adapter/h4;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0472

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v2, Lcom/join/mgps/activity/f2$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/f2$h;-><init>(Lcom/join/mgps/activity/f2;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v2, Lcom/join/mgps/activity/f2$i;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/f2$i;-><init>(Lcom/join/mgps/activity/f2;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->G:Lcom/join/mgps/adapter/h4;

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v2, Lcom/join/mgps/activity/f2$j;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/f2$j;-><init>(Lcom/join/mgps/activity/f2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    new-instance v1, Lcom/join/mgps/Util/o0;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/join/mgps/Util/o0;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->q0:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    const v1, 0x7f091060

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/LoopViewPager;

    iput-object v1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    const v1, 0x7f090c2a

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->z:Landroid/view/ViewGroup;

    const v1, 0x7f090f14

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->F:Landroid/widget/LinearLayout;

    const v1, 0x7f090f13

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->E:Landroid/widget/LinearLayout;

    const v1, 0x7f091057

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    const v1, 0x7f090b79

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->o0:Landroid/widget/FrameLayout;

    .line 29
    iget-object v0, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    new-instance v1, Lcom/join/mgps/activity/f2$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/f2$k;-><init>(Lcom/join/mgps/activity/f2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->r:Ljava/util/List;

    return-void
.end method

.method private synthetic w0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->X0()V

    return-void
.end method

.method private synthetic x0(ILcom/join/mgps/dto/BannerBean;Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->V0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    const/4 p3, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    new-instance p2, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    invoke-direct {p2, p3}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-ne v0, p3, :cond_2

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    new-instance p2, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    invoke-direct {p2, v2}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getSub_title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :goto_1
    return-void
.end method


# virtual methods
.method A0(Ljava/lang/String;I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u52a0\u8f7d\u6570\u636e   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/join/mgps/activity/f2;->n0:Z

    if-nez v0, :cond_8

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->n0:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v4}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 6
    iget-object v5, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 7
    new-instance v5, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {v5}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 8
    invoke-virtual {v5, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 10
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v3

    invoke-virtual {v4}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v4

    invoke-interface {v3, v4}, Lq1/h;->t0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v3

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ResponseModel;

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f00\u59cb\u52a0\u8f7d\u6570\u636e\u5b8c\u6210   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    if-lt p2, v0, :cond_0

    if-eqz v3, :cond_0

    .line 15
    :try_start_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGuess_you_like()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGuess_you_like()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    if-lt p2, v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->E0()V

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/f2;->v0:I

    :cond_2
    :goto_1
    if-ne p2, v1, :cond_3

    .line 18
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/f2;->S0(Lcom/join/mgps/dto/PAPAHomeBeanV6;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->h1()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 20
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcom/join/mgps/activity/f2;->x:Z

    if-eqz v3, :cond_5

    if-ne p2, v1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->showLodingFailed()V

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->h1()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->r1()V

    .line 24
    iput-boolean v2, p0, Lcom/join/mgps/activity/f2;->n0:Z

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/join/mgps/activity/f2;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V

    goto :goto_5

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 26
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    iget-boolean v0, p0, Lcom/join/mgps/activity/f2;->x:Z

    if-eqz v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->showLodingFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->r1()V

    .line 30
    iput-boolean v2, p0, Lcom/join/mgps/activity/f2;->n0:Z

    if-eqz v3, :cond_a

    .line 31
    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/join/mgps/activity/f2;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 32
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->r1()V

    .line 33
    iput-boolean v2, p0, Lcom/join/mgps/activity/f2;->n0:Z

    if-eqz v3, :cond_7

    .line 34
    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/join/mgps/activity/f2;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V

    .line 35
    :cond_7
    throw v0

    .line 36
    :cond_8
    iget-boolean p1, p0, Lcom/join/mgps/activity/f2;->x:Z

    if-eqz p1, :cond_9

    if-ne p2, v1, :cond_9

    iget-boolean p1, p0, Lcom/join/mgps/activity/f2;->n0:Z

    if-nez p1, :cond_9

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->showLodingFailed()V

    .line 38
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->r1()V

    :cond_a
    :goto_5
    return-void
.end method

.method B0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "m1"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    return-void
.end method

.method C0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method

.method D0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method E0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    :cond_0
    return-void
.end method

.method F0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->G:Lcom/join/mgps/adapter/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->G:Lcom/join/mgps/adapter/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public H0()V
    .locals 0

    return-void
.end method

.method I0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->G:Lcom/join/mgps/adapter/h4;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method O()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/f2;->n0:Z

    if-nez v0, :cond_0

    const-string v0, "m1"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/f2;->v0:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    iget v1, p0, Lcom/join/mgps/activity/f2;->v0:I

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->p0()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->z0:Lcom/join/kotlin/presenter/HomeViewModle;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/presenter/HomeViewModle;->initStat(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->m0()V

    :cond_1
    return-void
.end method

.method Q0(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.broadcast.bespeak.sussess"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "gameid"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/f2;->n1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method R0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/db/tables/BannerAndTablesTable;

    invoke-direct {v1, v0}, Lcom/join/mgps/db/tables/BannerAndTablesTable;-><init>(Lcom/join/mgps/dto/BannerBean;)V

    .line 4
    invoke-static {}, Ln1/d;->n()Ln1/d;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lg1/b;->k(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method S0(Lcom/join/mgps/dto/PAPAHomeBeanV6;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeAllData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4fdd\u5b58\u6570\u636e\u5b8c\u6210   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method U0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method Y0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MGPapaMainFragmentNew afterview   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->f:Lcom/join/mgps/rpc/d;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/f2;->K:J

    .line 6
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    const-string v2, "PapaMainAdapter"

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->y0:Lcom/join/mgps/activity/MGMainActivity;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->u0()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->showLoding()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->y0()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->p0()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->l0()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->k0()V

    return-void
.end method

.method b1(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/f2;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/f2;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BannerBean;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/mgsim/wufun/databinding/c70;->c(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/c70;

    move-result-object v3

    const/4 v4, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    if-ge v0, v4, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/join/android/app/mgsim/wufun/databinding/c70;->b()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 8
    invoke-virtual {v3}, Lcom/join/android/app/mgsim/wufun/databinding/c70;->b()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/join/android/app/mgsim/wufun/databinding/c70;->b()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 11
    invoke-virtual {v3}, Lcom/join/android/app/mgsim/wufun/databinding/c70;->b()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :goto_1
    iget-object v0, v3, Lcom/join/android/app/mgsim/wufun/databinding/c70;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    iget-object v0, v3, Lcom/join/android/app/mgsim/wufun/databinding/c70;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getSub_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v3}, Lcom/join/android/app/mgsim/wufun/databinding/c70;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/activity/d2;

    invoke-direct {v3, p0, v1, v2}, Lcom/join/mgps/activity/d2;-><init>(Lcom/join/mgps/activity/f2;ILcom/join/mgps/dto/BannerBean;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method d1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/r;->i(Landroid/content/Context;)V

    return-void
.end method

.method e1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/join/mgps/activity/f2$f;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/f2$f;-><init>(Lcom/join/mgps/activity/f2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/z;->O(Landroid/content/Context;ILl1/a;)Lcom/join/mgps/customview/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    :cond_1
    return-void
.end method

.method f1(Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeFloatData;->getPendant()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeFloatData;->getCoin_entrance()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->L0:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/f2;->L0:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080c71

    iget-object v3, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    iput-object p1, p0, Lcom/join/mgps/activity/f2;->K0:Lcom/join/mgps/dto/RecomDatabean;

    .line 17
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.coinflote"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "coinFloatData"

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->K0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method g0(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 6
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v1, ""

    .line 10
    :goto_1
    new-instance v3, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    invoke-direct {v3}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 11
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->d0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/f2;->n1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method g1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->k0()V

    return-void
.end method

.method h0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/f2;->g0(Ljava/lang/String;)V

    return-void
.end method

.method h1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/f2;->s0:Z

    if-eqz v0, :cond_4

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->s0:Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->r0()V

    :cond_4
    return-void
.end method

.method i0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/f2;->h0(Ljava/lang/String;)V

    return-void
.end method

.method i1(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/VipPopData;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    const v2, 0x7f010059

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    const v2, 0x7f01005e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/f2;->A0:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/VipPopData;

    const v3, 0x7f0c05f2

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09028e

    .line 12
    invoke-static {v3, v4}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09069a

    .line 13
    invoke-static {v3, v5}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f090a26

    .line 14
    invoke-static {v3, v6}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f080756

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/VipPopData;->getPic_remote()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 16
    new-instance v5, Lcom/join/mgps/activity/f2$c;

    invoke-direct {v5, p0, v2}, Lcom/join/mgps/activity/f2$c;-><init>(Lcom/join/mgps/activity/f2;Lcom/join/mgps/dto/VipPopData;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v5, Lcom/join/mgps/activity/f2$d;

    invoke-direct {v5, p0, v3, v2}, Lcom/join/mgps/activity/f2$d;-><init>(Lcom/join/mgps/activity/f2;Landroid/view/View;Lcom/join/mgps/dto/VipPopData;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<u>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/VipPopData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</u>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/VipPopData;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v5

    const/16 v7, 0x309

    if-ne v5, v7, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v5

    const/16 v7, 0x378

    if-ne v5, v7, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v5

    const/16 v7, 0x3e7

    if-ne v5, v7, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v4

    if-nez v4, :cond_3

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/VipPopData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    return-void
.end method

.method public j1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    :cond_0
    return-void
.end method

.method k0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->n0()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->K0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/RecomDataAllBean;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDataAllBean;->getMessages()Lcom/join/mgps/dto/RecomDataMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDataMessageBean;->getData()Lcom/join/mgps/dto/HomeFloatData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/f2;->f1(Lcom/join/mgps/dto/HomeFloatData;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7
    :goto_0
    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method l0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->l1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->D0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method l1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    return-void
.end method

.method m1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->q:Lcom/join/mgps/adapter/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/a;->notifyDataSetChanged()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBanner: wdp62 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0712e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    new-instance v2, Lcom/join/mgps/dto/BannerImage;

    invoke-direct {v2}, Lcom/join/mgps/dto/BannerImage;-><init>()V

    .line 10
    new-instance v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v4, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 11
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/BannerImage;->setImageView(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/f2;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/BannerImage;->setUrl(Ljava/lang/String;)V

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/join/mgps/activity/f2$a;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/f2$a;-><init>(Lcom/join/mgps/activity/f2;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    array-length v2, v1

    if-ge p1, v2, :cond_5

    const/16 v2, 0x8

    if-le p1, v2, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, p1

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    .line 22
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 23
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 24
    iget v2, p0, Lcom/join/mgps/activity/f2;->H0:I

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_4

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const v2, 0x7f080a10

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const v2, 0x7f080a0f

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 30
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->z:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->A:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->o0:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerImage;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerImage;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BannerImage;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->o0:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->o0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 40
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->q:Lcom/join/mgps/adapter/a;

    if-nez p1, :cond_7

    .line 41
    new-instance p1, Lcom/join/mgps/adapter/a;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v2}, Lcom/join/mgps/adapter/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/join/mgps/activity/f2;->q:Lcom/join/mgps/adapter/a;

    .line 42
    iget-object v1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/LoopViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 43
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(I)V

    goto :goto_4

    .line 45
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    new-instance p1, Lcom/join/mgps/adapter/a;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v2}, Lcom/join/mgps/adapter/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/join/mgps/activity/f2;->q:Lcom/join/mgps/adapter/a;

    .line 47
    iget-object v1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/LoopViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->q:Lcom/join/mgps/adapter/a;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/join/mgps/adapter/a;->b(Ljava/util/ArrayList;)V

    .line 49
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 50
    iget-object p1, p0, Lcom/join/mgps/Util/o0$a;->b:Lcom/join/mgps/customview/LoopViewPager;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method

.method public n0()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getFloatadRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0
.end method

.method n1(Ljava/lang/String;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanRight()Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/AppBean;->setIs_bespeak(I)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AppBean;->setBespeak_count(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->F0()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->e1()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/AppBean;->setIs_bespeak(I)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AppBean;->setBespeak_count(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->F0()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->e1()V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V
    .locals 16
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    const-string v2, "28"

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/MGMainActivity;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 3
    :cond_0
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x3

    const-string v5, "-"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne v0, v4, :cond_a

    .line 4
    :try_start_1
    iget-object v9, v1, Lcom/join/mgps/activity/f2;->z0:Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v9}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 5
    iget-object v9, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getBanner()Ljava/util/List;

    move-result-object v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getDiscover_channel()Lcom/join/mgps/dto/GameDiscoverChannelBean;

    move-result-object v10

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getAll_in_play()Ljava/util/List;

    move-result-object v11

    if-eqz v10, :cond_1

    .line 9
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameDiscoverChannelBean;->getD_discover()Ljava/util/List;

    move-result-object v12

    .line 10
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameDiscoverChannelBean;->getS_channel()Ljava/util/List;

    move-result-object v13

    .line 11
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameDiscoverChannelBean;->getBroadcast()Ljava/util/List;

    move-result-object v14

    goto :goto_0

    :cond_1
    move-object v12, v7

    move-object v13, v12

    move-object v14, v13

    .line 12
    :goto_0
    invoke-virtual {v1, v9}, Lcom/join/mgps/activity/f2;->m1(Ljava/util/List;)V

    move-object/from16 v9, p1

    .line 13
    iget-object v15, v9, Lcom/join/mgps/dto/PAPAHomeBeanV6;->fast_entry:Ljava/util/List;

    invoke-virtual {v1, v15, v4}, Lcom/join/mgps/activity/f2;->b1(Ljava/util/List;Z)V

    .line 14
    new-instance v15, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 15
    invoke-virtual {v15, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 16
    invoke-direct {v1, v12, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans(Ljava/util/List;)V

    .line 17
    invoke-direct {v1, v14, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans2(Ljava/util/List;)V

    .line 18
    invoke-direct {v1, v13, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans3(Ljava/util/List;)V

    if-eqz v10, :cond_2

    .line 19
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameDiscoverChannelBean;->getThe_new()Lcom/join/mgps/dto/GameDiscoverTheNewBean;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 20
    :cond_2
    iget-object v10, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_4

    .line 21
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 22
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 23
    invoke-virtual {v10, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 24
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v12}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 25
    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    const/16 v12, 0x2db5

    .line 26
    invoke-direct {v1, v11, v12, v12}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 27
    invoke-direct {v1, v11, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 28
    iget-object v13, v1, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v13, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 30
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_3

    .line 31
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 32
    invoke-virtual {v13, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 33
    invoke-virtual {v13, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 34
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 35
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v13, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 36
    invoke-direct {v1, v13}, Lcom/join/mgps/activity/f2;->a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 37
    iget-object v10, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v15

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    return-void

    .line 38
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getSimulator_channel()Lcom/join/mgps/dto/GameinterestingBean;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 39
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 40
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 41
    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 42
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v12

    invoke-direct {v1, v12, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 43
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 44
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 45
    :cond_5
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMore()Ljava/util/List;

    move-result-object v12

    invoke-direct {v1, v12, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans2(Ljava/util/List;)V

    const/4 v12, 0x6

    .line 46
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 47
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x2db6

    invoke-direct {v1, v11, v12, v12}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 49
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v11

    invoke-direct {v1, v11, v12, v12}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 50
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v10

    const-string v12, "7-"

    invoke-direct {v1, v11, v10, v12}, Lcom/join/mgps/activity/f2;->c1(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 51
    :cond_6
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getNew_online_game()Lcom/join/mgps/dto/GameinterestingBean;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 53
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 54
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 55
    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 56
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v12

    invoke-direct {v1, v12, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 57
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 58
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 59
    :cond_7
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMore()Ljava/util/List;

    move-result-object v12

    invoke-direct {v1, v12, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans2(Ljava/util/List;)V

    const/4 v12, 0x4

    .line 60
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    const-string v12, "5-0-0"

    .line 61
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 62
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x2db7

    invoke-direct {v1, v11, v12, v12}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 64
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v11

    invoke-direct {v1, v11, v12, v12}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 65
    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v10

    const-string v12, "5-"

    invoke-direct {v1, v11, v10, v12}, Lcom/join/mgps/activity/f2;->c1(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 66
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGame_ranking()Lcom/join/mgps/dto/GameRankingBean;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGame_ranking()Lcom/join/mgps/dto/GameRankingBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/GameRankingBean;->getRanking_title()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 67
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v11, 0x18

    .line 68
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGame_ranking()Lcom/join/mgps/dto/GameRankingBean;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 70
    iget-object v11, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getHot_game_fav()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 72
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 73
    invoke-virtual {v10, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    const/16 v11, 0xa

    .line 74
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 75
    iget-object v11, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v11, 0x19

    .line 77
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getHot_game_fav()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 79
    iget-object v11, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move-object/from16 v9, p1

    .line 80
    :cond_b
    :goto_2
    iget-object v10, v1, Lcom/join/mgps/activity/f2;->D0:Ljava/lang/String;

    const-string v11, "26"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 81
    iget-object v10, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v1, Lcom/join/mgps/activity/f2;->w0:I

    .line 82
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGame_broadcast()Lcom/join/mgps/dto/GamebroadcastBean;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getDynamic_module()Ljava/util/List;

    move-result-object v10

    if-ne v0, v4, :cond_f

    .line 84
    iget-object v11, v1, Lcom/join/mgps/activity/f2;->D0:Ljava/lang/String;

    const-string v12, "27"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    iget v11, v1, Lcom/join/mgps/activity/f2;->w0:I

    if-nez v11, :cond_e

    .line 85
    :cond_d
    iget-object v11, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iput v11, v1, Lcom/join/mgps/activity/f2;->w0:I

    .line 86
    :cond_e
    iput v8, v1, Lcom/join/mgps/activity/f2;->F0:I

    :cond_f
    if-eqz v10, :cond_1a

    .line 87
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/GameinterestingBean;

    .line 88
    iget v12, v1, Lcom/join/mgps/activity/f2;->F0:I

    add-int/2addr v12, v4

    iput v12, v1, Lcom/join/mgps/activity/f2;->F0:I

    .line 89
    new-instance v12, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 90
    invoke-virtual {v11}, Lcom/join/mgps/dto/GameinterestingBean;->getTop()Ljava/util/List;

    move-result-object v12

    .line 91
    invoke-virtual {v11}, Lcom/join/mgps/dto/GameinterestingBean;->getMiddle()Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x2db4

    .line 92
    invoke-direct {v1, v12, v14, v14}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 93
    invoke-direct {v1, v13, v14, v14}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 94
    invoke-direct {v1, v13, v7}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 95
    iget-object v15, v1, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {v11}, Lcom/join/mgps/dto/GameinterestingBean;->getDynamic_module_tpl_type()I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, 0x13

    const-string v7, "0-"

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_c

    .line 97
    :pswitch_0
    :try_start_2
    new-instance v6, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v11, 0x15

    .line 98
    invoke-virtual {v6, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 99
    iget-object v11, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 100
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_19

    if-nez v6, :cond_10

    .line 101
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/4 v12, 0x7

    .line 102
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 103
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 104
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-7-1"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 105
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 106
    :pswitch_1
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 107
    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 108
    invoke-virtual {v11, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 109
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 110
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v6, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v11, 0x12

    .line 112
    invoke-virtual {v6, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 113
    invoke-virtual {v6, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans(Ljava/util/List;)V

    .line 114
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-6-"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 115
    iget-object v7, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 116
    :pswitch_2
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 117
    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 118
    invoke-virtual {v11, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 119
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 120
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 121
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_19

    if-nez v6, :cond_11

    .line 122
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v12, 0x10

    .line 123
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 124
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-5-1-"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 126
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 127
    :pswitch_3
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 128
    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 129
    invoke-virtual {v11, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 130
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 131
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 132
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_19

    .line 133
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 134
    invoke-virtual {v11, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 135
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 136
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-4-"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 137
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 138
    :pswitch_4
    new-instance v11, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 139
    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 140
    invoke-virtual {v11, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 141
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 142
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 144
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_13

    if-nez v11, :cond_12

    .line 145
    new-instance v12, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v15, 0xd

    .line 146
    invoke-virtual {v12, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 147
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v12, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 148
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-3-x"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 149
    invoke-direct {v1, v12}, Lcom/join/mgps/activity/f2;->a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 150
    iget-object v3, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 151
    :cond_12
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-3-"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/join/mgps/business/RecomDatabeanBusiness;->e(Ljava/lang/String;)V

    .line 152
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x3

    goto :goto_7

    .line 153
    :cond_13
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/4 v7, 0x5

    .line 154
    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 155
    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeans(Ljava/util/List;)V

    .line 156
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 157
    :pswitch_5
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 158
    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 159
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 160
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 161
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 162
    :goto_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_19

    .line 163
    new-instance v6, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 164
    invoke-virtual {v11}, Lcom/join/mgps/dto/GameinterestingBean;->getDynamic_module_tpl_type()I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_14

    .line 165
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setReMarks(Ljava/lang/String;)V

    :cond_14
    if-nez v3, :cond_15

    const/16 v12, 0xd

    .line 166
    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 167
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-2-x"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 169
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 170
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 171
    :pswitch_6
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 172
    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 173
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v12, :cond_16

    .line 174
    :try_start_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_16

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_16

    const/4 v6, 0x2

    .line 175
    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 176
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/RecomDatabean;

    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->J0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 177
    :catch_0
    :cond_16
    :try_start_4
    iget-object v6, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_19

    const/4 v3, 0x0

    .line 178
    :goto_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_19

    .line 179
    new-instance v6, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 180
    invoke-virtual {v11}, Lcom/join/mgps/dto/GameinterestingBean;->getDynamic_module_tpl_type()I

    move-result v12

    if-ne v12, v4, :cond_17

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setReMarks(Ljava/lang/String;)V

    :cond_17
    if-nez v3, :cond_18

    const/16 v12, 0xd

    .line 182
    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 183
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v6, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 184
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "-1-x"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 185
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 186
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_18
    const/4 v12, 0x3

    .line 187
    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 188
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 189
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/join/mgps/activity/f2;->F0:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-1-"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 190
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/f2;->a1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 191
    iget-object v12, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_19
    :goto_c
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 192
    :cond_1a
    iget-object v3, v1, Lcom/join/mgps/activity/f2;->D0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/f2;->F0()V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/f2;->z0()V

    .line 195
    :cond_1b
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1e

    .line 196
    iget-object v5, v1, Lcom/join/mgps/activity/f2;->D0:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, v1, Lcom/join/mgps/activity/f2;->w0:I

    if-nez v2, :cond_1c

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v2, 0x2

    goto :goto_f

    .line 197
    :cond_1d
    :goto_e
    iget-object v2, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/join/mgps/activity/f2;->w0:I

    goto :goto_d

    .line 198
    :goto_f
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    const/16 v2, 0x8

    .line 199
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 200
    iget-object v2, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iput v8, v1, Lcom/join/mgps/activity/f2;->G0:I

    .line 202
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGuess_you_like()Ljava/util/List;

    move-result-object v2

    const/16 v5, 0x2db9

    invoke-direct {v1, v2, v5, v5}, Lcom/join/mgps/activity/f2;->Z0(Ljava/util/List;II)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getGuess_you_like()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/join/mgps/activity/f2;->K0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 204
    iget-object v5, v1, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v5, 0x9

    if-eqz v2, :cond_21

    const/4 v6, 0x0

    .line 205
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_21

    if-eqz v6, :cond_20

    .line 206
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_1f

    goto :goto_11

    .line 207
    :cond_1f
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanRight(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 208
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 209
    iget v7, v1, Lcom/join/mgps/activity/f2;->G0:I

    add-int/2addr v7, v4

    iput v7, v1, Lcom/join/mgps/activity/f2;->G0:I

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 210
    iget-object v7, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 211
    :cond_20
    :goto_11
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 212
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_21
    if-eqz v2, :cond_22

    .line 213
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    rem-int/2addr v3, v6

    if-ne v3, v4, :cond_22

    .line 214
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 216
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 217
    iget v2, v1, Lcom/join/mgps/activity/f2;->G0:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/join/mgps/activity/f2;->G0:I

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 218
    iget-object v2, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_22
    iget-object v2, v1, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/f2;->q1(Ljava/util/List;)V

    .line 220
    iget-object v2, v1, Lcom/join/mgps/activity/f2;->G:Lcom/join/mgps/adapter/h4;

    iget-object v3, v1, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/join/mgps/adapter/h4;->Z(Ljava/util/List;)V

    if-ne v0, v4, :cond_23

    const/4 v0, 0x0

    .line 221
    invoke-virtual {v1, v0, v8}, Lcom/join/mgps/activity/f2;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    iput-object p1, p0, Lcom/join/mgps/activity/f2;->p0:Lcom/join/mgps/pref/f;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->t0:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->y0:Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    .line 8
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->s1()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/f2;->t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "notify time"

    invoke-static {v2, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v2, p0, Lcom/join/mgps/activity/f2;->K:J

    sub-long v4, v0, v2

    const-wide/32 v6, 0x36ee80

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    cmp-long p1, v2, v8

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/f2;->K:J

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notify time lastUpdateTime"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/f2;->s0:Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    iget v0, p0, Lcom/join/mgps/activity/f2;->v0:I

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    cmp-long p1, v2, v8

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/join/mgps/activity/f2;->K:J

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notify time lastUpdateTime2"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->m0()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->B0:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->y0:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/f2;->B0:Z

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->d()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/f2;->w:Ljava/util/List;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->B:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/f2;->q1(Ljava/util/List;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/Util/o0$a;->a:Lcom/join/mgps/Util/o0;

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x1388

    .line 11
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->y0:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/join/android/app/component/video/c;->B()V

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->C0:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/f2;->Q0:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/f2;->H:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/f2;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_5
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    add-int v0, p2, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/f2;->I:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/f2;->J:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    :cond_0
    const/16 p3, 0x8

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->k:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->S0:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/f2$l;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lcom/join/mgps/activity/f2$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/f2$l;-><init>(Lcom/join/mgps/activity/f2;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/join/mgps/activity/f2$l;->a:I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, v0, Lcom/join/mgps/activity/f2$l;->b:I

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->S0:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/f2;->o0()I

    move-result p1

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07110f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-gt p1, p2, :cond_3

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->k:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->r0:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->n:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->k:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 23
    iget p2, p0, Lcom/join/mgps/activity/f2;->J:I

    iget p3, p0, Lcom/join/mgps/activity/f2;->w0:I

    if-lt p2, p3, :cond_6

    if-eqz p3, :cond_6

    .line 24
    iget-boolean p2, p0, Lcom/join/mgps/activity/f2;->R0:Z

    if-ne p2, v1, :cond_5

    .line 25
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 26
    :cond_5
    iput-boolean p4, p0, Lcom/join/mgps/activity/f2;->R0:Z

    goto :goto_1

    .line 27
    :cond_6
    iget p2, p0, Lcom/join/mgps/activity/f2;->I:I

    add-int/2addr p2, v1

    if-ge p2, p3, :cond_8

    .line 28
    iget-boolean p2, p0, Lcom/join/mgps/activity/f2;->R0:Z

    if-nez p2, :cond_7

    .line 29
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 30
    :cond_7
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->R0:Z

    :cond_8
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    if-nez p2, :cond_1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->N()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->O0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->P0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->O0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/f2;->P0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dde

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/f2;->H0:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ddd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/f2;->I0:I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method p0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->vipMessage(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->R0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/f2;->i1(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->u1()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->u1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->u1()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->u1()V

    :goto_0
    return-void
.end method

.method q0(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.papa.maintab.clicked"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/activity/f2;->R0:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    iget v0, p0, Lcom/join/mgps/activity/f2;->w0:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :goto_0
    return-void
.end method

.method q1(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_c

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v6, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 14
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v8, :cond_5

    .line 15
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    if-ne v9, v6, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v0, v8}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_8

    .line 20
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 22
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_9

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_9
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_a
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 26
    :cond_b
    iget-object v2, p0, Lcom/join/mgps/activity/f2;->C:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    return-void
.end method

.method r0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method r1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->showLoding()V

    const-string v0, "m1"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/f2;->u0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/f2;->v0:I

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/f2;->A0(Ljava/lang/String;I)V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method t0(ILjava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getIgnoreMessageRequest(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/f2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->e0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method t1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->P0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->M0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/f2;->O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method u1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->o:Landroid/widget/ViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    return-void
.end method

.method v0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->J0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/f2;->p:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
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

.method y0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->D:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeAllData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/PAPAHomeBeanV6;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV6;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getBanner()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV6;->getBanner()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "m1"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/join/mgps/activity/f2;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV6;Ljava/lang/String;IZ)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u663e\u793a\u4e3b\u754c\u9762   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->h1()V

    .line 8
    iput-boolean v3, p0, Lcom/join/mgps/activity/f2;->x:Z

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u5e93\u6ca1\u6709\u6570\u636e\u4e0d\u663e\u793a\u4e3b\u754c\u9762   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/f2;->x:Z

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/f2;->B0()V

    return-void
.end method

.method z0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f2;->c:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->j()V

    :cond_0
    return-void
.end method
