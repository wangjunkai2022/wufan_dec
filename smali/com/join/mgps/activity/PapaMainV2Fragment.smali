.class public Lcom/join/mgps/activity/PapaMainV2Fragment;
.super Lcom/join/mgps/Util/o0$a;
.source "PapaMainV2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PapaMainV2Fragment$m;,
        Lcom/join/mgps/activity/PapaMainV2Fragment$l;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0485
.end annotation


# static fields
.field private static final d1:Ljava/lang/String; = "MGPapaMainFragmentNewV2"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private A0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/join/mgps/adapter/h4;

.field private B0:I

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private C0:Z

.field private D:I

.field private D0:I

.field private E:I

.field private E0:Z

.field private F:J

.field F0:I

.field private G:Z

.field G0:Z

.field H:Lcom/join/mgps/pref/f;

.field H0:Landroid/os/Handler;

.field I:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private I0:Ljava/lang/String;

.field J:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field J0:Lcom/join/mgps/customview/t;

.field private K:Z

.field private K0:I

.field private L0:I

.field private M0:I

.field private N0:I

.field private O0:Lcom/join/mgps/dto/RecomDatabean;

.field private P0:Lcom/join/mgps/dto/RecomDatabean;

.field private Q0:Ljava/lang/String;

.field R0:J

.field S0:J

.field T0:Landroid/os/Handler;

.field U0:Ljava/lang/Runnable;

.field V0:Z

.field private W0:Z

.field private X0:Landroid/util/SparseArray;

.field Y0:Landroid/view/GestureDetector;

.field private Z0:J

.field private a1:I

.field b1:Ljava/lang/Runnable;

.field c:Lcom/join/mgps/customview/XListView3;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private c1:Ljava/lang/String;

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

.field o:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o0:Ljava/lang/String;

.field p:Landroid/widget/ViewFlipper;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:I

.field q:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private q0:I

.field r:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Lcom/join/android/app/component/video/c;

.field s:Landroid/widget/ViewFlipper;

.field s0:Lcom/join/mgps/activity/MGMainActivity;

.field private t:Landroid/content/Context;

.field t0:Lcom/join/kotlin/presenter/HomeViewModle;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Ljava/lang/String;

.field private v:Z

.field private v0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private w0:Landroid/os/Handler;

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private x0:Z

.field y:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/widget/LinearLayout;

.field private z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/o0$a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->H:Lcom/join/mgps/pref/f;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->K:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->n0:Z

    const-string v2, "m1"

    .line 8
    iput-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    const/4 v2, 0x1

    .line 9
    iput v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->q0:I

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    .line 12
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y0:Ljava/util/List;

    .line 14
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->F0:I

    .line 15
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G0:Z

    .line 16
    new-instance v0, Lcom/join/mgps/activity/PapaMainV2Fragment$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$e;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->H0:Landroid/os/Handler;

    const-string v0, "28"

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->I0:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->K0:I

    .line 19
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->L0:I

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->Q0:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 21
    iput-wide v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->R0:J

    .line 22
    iput-wide v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->S0:J

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->T0:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/join/mgps/activity/i2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/i2;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->U0:Ljava/lang/Runnable;

    .line 25
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0:Z

    .line 26
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->W0:Z

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->X0:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/join/mgps/activity/PapaMainV2Fragment$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$a;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->Y0:Landroid/view/GestureDetector;

    .line 29
    new-instance v0, Lcom/join/mgps/activity/PapaMainV2Fragment$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$b;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->b1:Ljava/lang/Runnable;

    return-void
.end method

.method private A0()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->X0:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/PapaMainV2Fragment$l;

    if-eqz v2, :cond_0

    .line 3
    iget v2, v2, Lcom/join/mgps/activity/PapaMainV2Fragment$l;->a:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->X0:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/PapaMainV2Fragment$l;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/join/mgps/activity/PapaMainV2Fragment$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$l;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    .line 6
    :cond_2
    iget v0, v0, Lcom/join/mgps/activity/PapaMainV2Fragment$l;->b:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private F0()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->j:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E0:Z

    .line 4
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v2, Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/presenter/HomeViewModle;

    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0:Lcom/join/kotlin/presenter/HomeViewModle;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/kotlin/presenter/HomeViewModle;->initStat(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0:Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0712e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 10
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/join/mgps/adapter/h4;

    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    iget-object v6, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    new-instance v8, Lcom/join/mgps/activity/PapaMainV2Fragment$g;

    invoke-direct {v8, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$g;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/adapter/h4;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/join/android/app/component/video/c;Lo1/e;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0473

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    new-instance v2, Lcom/join/mgps/activity/PapaMainV2Fragment$h;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$h;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView3;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView3;->setPreLoadCount(I)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    new-instance v2, Lcom/join/mgps/activity/PapaMainV2Fragment$i;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$i;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView3;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    new-instance v2, Lcom/join/mgps/activity/PapaMainV2Fragment$j;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$j;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/h4;->b0(Lcom/join/mgps/adapter/h4$l1;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView3;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v1, p0}, Lcom/join/mgps/customview/XListView3;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    new-instance v2, Lcom/join/mgps/activity/PapaMainV2Fragment$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$k;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->I:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    const v1, 0x7f091057

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/join/mgps/activity/h2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/h2;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private F1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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

.method private G0(Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;->getText()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0335

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;->getInterval()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_3

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0:I

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    return-void
.end method

.method private I1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 11

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    iget v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/adapter/h4$h2;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/h4$h2;

    .line 5
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    mul-double v3, v3, v5

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0x0

    const-string v9, "/"

    cmp-long v10, v5, v7

    if-nez v10, :cond_2

    .line 8
    :try_start_1
    iget-object v5, p2, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v5, p2, Lcom/join/mgps/adapter/h4$h2;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 11
    iget-object v1, p2, Lcom/join/mgps/adapter/h4$h2;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p2, Lcom/join/mgps/adapter/h4$h2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 14
    iget-object p1, p2, Lcom/join/mgps/adapter/h4$h2;->i:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic J0(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->I:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method private J1()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    if-ltz v0, :cond_d

    iget v0, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    iget-object v2, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 2
    iget v0, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    move v2, v0

    :goto_0
    iget v0, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    if-gt v2, v0, :cond_d

    .line 3
    iget-object v0, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/MgpapaMainItemBean;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    move-result v3

    const/16 v4, 0x1c

    const-string v5, "/S"

    const/4 v6, 0x2

    const/16 v7, 0xc

    const-wide/16 v8, 0x0

    const-string v10, "/"

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_8

    .line 5
    :pswitch_0
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    iget-object v3, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    iget v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/join/mgps/adapter/h4$i2;

    if-eqz v4, :cond_c

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/h4$i2;

    if-eqz v0, :cond_c

    .line 9
    iget-object v3, v3, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_c

    .line 10
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/m2;

    if-eqz v3, :cond_c

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v5, :cond_1

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 14
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    .line 15
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 16
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v3, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 19
    :cond_3
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 20
    iget-object v3, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    iget v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/join/mgps/adapter/h4$p1;

    if-eqz v4, :cond_c

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/h4$p1;

    if-eqz v0, :cond_c

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    mul-double v13, v13, v11

    mul-double v13, v13, v11

    double-to-long v11, v13

    .line 27
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13

    cmp-long v15, v13, v8

    if-nez v15, :cond_4

    .line 28
    iget-object v8, v3, Lcom/join/mgps/adapter/h4$p1;->e:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 29
    :cond_4
    iget-object v8, v3, Lcom/join/mgps/adapter/h4$p1;->e:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 31
    iget-object v7, v3, Lcom/join/mgps/adapter/h4$p1;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    .line 32
    :cond_5
    iget-object v7, v3, Lcom/join/mgps/adapter/h4$p1;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 33
    :goto_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 34
    iget-object v0, v3, Lcom/join/mgps/adapter/h4$p1;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 36
    :cond_6
    :pswitch_2
    :try_start_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 37
    iget-object v3, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    iget v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/join/mgps/adapter/h4$s1;

    if-eqz v4, :cond_c

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/h4$s1;

    if-eqz v0, :cond_c

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v13, 0x1

    if-le v4, v13, :cond_c

    const/4 v4, 0x0

    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v4, :cond_9

    .line 42
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 43
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 44
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v14

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 45
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double v15, v15, v11

    mul-double v6, v15, v11

    double-to-long v6, v6

    .line 46
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v15

    cmp-long v17, v15, v8

    if-nez v17, :cond_7

    .line 47
    iget-object v15, v3, Lcom/join/mgps/adapter/h4$s1;->e:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 48
    :cond_7
    iget-object v8, v3, Lcom/join/mgps/adapter/h4$s1;->e:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_4
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_8

    .line 50
    iget-object v6, v3, Lcom/join/mgps/adapter/h4$s1;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    .line 51
    :cond_8
    iget-object v6, v3, Lcom/join/mgps/adapter/h4$s1;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    :goto_5
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    .line 53
    iget-object v4, v3, Lcom/join/mgps/adapter/h4$s1;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_9
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    if-eqz v0, :cond_c

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 58
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v11

    mul-double v6, v6, v11

    double-to-long v6, v6

    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmp-long v13, v8, v11

    if-nez v13, :cond_a

    .line 60
    iget-object v8, v3, Lcom/join/mgps/adapter/h4$s1;->q:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 61
    :cond_a
    iget-object v8, v3, Lcom/join/mgps/adapter/h4$s1;->q:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_b

    .line 63
    iget-object v6, v3, Lcom/join/mgps/adapter/h4$s1;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_7

    .line 64
    :cond_b
    iget-object v6, v3, Lcom/join/mgps/adapter/h4$s1;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    :goto_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_c

    .line 66
    iget-object v0, v3, Lcom/join/mgps/adapter/h4$s1;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic K0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->I:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    return-void
.end method

.method private synthetic L0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->p1()V

    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/activity/PapaMainV2Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->L0()V

    return-void
.end method

.method private M1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV2Fragment$10;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment$10;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    :cond_0
    return-object p1
.end method

.method public static synthetic N(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->J0(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private N1(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->set_from(I)V

    .line 10
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->set_from_type(I)V

    goto :goto_0

    :cond_4
    :goto_3
    return-object p1
.end method

.method public static synthetic O(Lcom/join/mgps/activity/PapaMainV2Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K0()V

    return-void
.end method

.method private O1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private P1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22-18-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D0:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D0:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic Q(Lcom/join/mgps/activity/PapaMainV2Fragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    return-object p0
.end method

.method private Q1(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22-14-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setPosition(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->set_from(I)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->set_from_type(I)V

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic R(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    return p0
.end method

.method static synthetic S(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->y0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic T(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lcom/join/mgps/activity/PapaMainV2Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->a1:I

    return p0
.end method

.method static synthetic V(Lcom/join/mgps/activity/PapaMainV2Fragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->a1:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->a1:I

    return v0
.end method

.method static synthetic W(Lcom/join/mgps/activity/PapaMainV2Fragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->k1(I)V

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Z(Lcom/join/mgps/activity/PapaMainV2Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    return-object p1
.end method

.method private Z0(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;
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

.method static synthetic a0(Lcom/join/mgps/activity/PapaMainV2Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    return p0
.end method

.method private a1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
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

.method static synthetic b0(Lcom/join/mgps/activity/PapaMainV2Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    return p1
.end method

.method private b1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0()V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/activity/PapaMainV2Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->q0:I

    return p1
.end method

.method private c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0()V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    return p0
.end method

.method private d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/PapaMainV2Fragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    return p1
.end method

.method private e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0()V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/activity/PapaMainV2Fragment;ILjava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0(ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C0:Z

    return p0
.end method

.method static synthetic h0(Lcom/join/mgps/activity/PapaMainV2Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    return p0
.end method

.method static synthetic i0(Lcom/join/mgps/activity/PapaMainV2Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    return p1
.end method

.method static synthetic j0(Lcom/join/mgps/activity/PapaMainV2Fragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    return-object p0
.end method

.method private k1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "home"

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendExposurePoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v1, Lcom/papa/sim/statistic/Event;->pullDownModelExp:Lcom/papa/sim/statistic/Event;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    return-void
.end method

.method private l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "home"

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, p2, v0, p3}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    return-void
.end method

.method private m1(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v2, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v2, v0}, Lcom/papa/sim/statistic/p;->i1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c1:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView3;->setCanLoadMore()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    :cond_1
    return-void
.end method

.method private n1(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "22-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, p1, v1}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w0:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w0:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->b1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private o1(Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0:Lcom/join/kotlin/presenter/HomeViewModle;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0:Lcom/join/kotlin/presenter/HomeViewModle;

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

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

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

.method private p0(ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->y0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y0:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private p1()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    if-nez v0, :cond_1

    iget v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0:Z

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 8
    iget v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    if-gt v1, v2, :cond_4

    iget v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    if-lt v1, v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

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

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->o1(Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private r1(Ljava/util/List;II)V
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

.method private t1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V
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

.method private u1(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->a1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

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
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->t1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private x0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "localType"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->H:Lcom/join/mgps/pref/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/join/mgps/pref/f;->callOnlineCoupon(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private y0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method A1(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    const v2, 0x7f010059

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    const v2, 0x7f01005e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

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

    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->F0:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

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
    new-instance v5, Lcom/join/mgps/activity/PapaMainV2Fragment$c;

    invoke-direct {v5, p0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment$c;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;Lcom/join/mgps/dto/VipPopData;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v5, Lcom/join/mgps/activity/PapaMainV2Fragment$d;

    invoke-direct {v5, p0, v3, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment$d;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;Landroid/view/View;Lcom/join/mgps/dto/VipPopData;)V

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    return-void
.end method

.method B0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->vipMessage(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->f:Lcom/join/mgps/rpc/d;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->A1(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->L1()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->L1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->L1()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->L1()V

    :goto_0
    return-void
.end method

.method public B1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    :cond_0
    return-void
.end method

.method C0(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.papa.maintab.clicked"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->W0:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->q0:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :goto_0
    return-void
.end method

.method C1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    return-void
.end method

.method D0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method D1(Ljava/lang/String;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->U0()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->w1()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->U0()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->w1()V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method E0(ILjava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getIgnoreMessageRequest(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->e0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method E1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 16
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    move/from16 v2, p4

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
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getS_scrolling_txt()Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->G0(Lcom/join/mgps/dto/PAPAHomeBeanV7$SScrollingTxtDTO;)V

    .line 4
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const v3, 0x7f071151

    const v5, 0x7f07113b

    const v6, 0x7f071065

    const/16 v7, 0x1f

    const v8, 0x7f071203

    const/16 v9, 0x27

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x21

    if-ne v0, v4, :cond_d

    .line 5
    iput-boolean v2, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C0:Z

    .line 6
    iput v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->a1:I

    .line 7
    iput v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->D0:I

    .line 8
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0:Lcom/join/kotlin/presenter/HomeViewModle;

    invoke-virtual {v13}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 9
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 10
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v14, 0x1a

    .line 11
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 12
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->z0:Ljava/lang/String;

    if-eqz v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    move-result-object v14

    iget-object v15, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->z0:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->setBg_color(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 14
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v14, 0x1b

    .line 16
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getFast_entry()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 18
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 20
    invoke-virtual {v13, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 21
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0713a8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 22
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getEo_playing()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 24
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    const-string v14, "22-4-"

    .line 25
    invoke-direct {v1, v13, v14}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 26
    new-instance v14, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 27
    invoke-virtual {v14, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 28
    new-instance v15, Lcom/join/mgps/dto/PAPAItemTitle2;

    const-string v4, "\u5927\u5bb6\u90fd\u5728\u73a9"

    invoke-direct {v15, v4}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 29
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 31
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 32
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 33
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    div-int/2addr v14, v11

    if-ge v4, v14, :cond_2

    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v15, v4, 0x2

    .line 35
    invoke-interface {v13, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0xc9

    invoke-direct {v1, v14, v15, v15}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v14

    .line 36
    new-instance v15, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v10, 0x25

    .line 37
    invoke-virtual {v15, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 38
    invoke-virtual {v15, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 39
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v10, 0x0

    goto :goto_0

    .line 41
    :cond_2
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 42
    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 43
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 45
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 46
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 47
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_3

    return-void

    .line 48
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getF_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    const/16 v4, 0x1d

    if-eqz v2, :cond_4

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getF_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    const/16 v10, 0x4ee9

    invoke-direct {v1, v2, v10, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->M1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    const-string v10, "22-11-1"

    .line 50
    invoke-virtual {v2, v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 51
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 52
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 53
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 54
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 57
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 58
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 60
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 61
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 62
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getJys_like()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    const-string v10, "22-13-"

    .line 65
    invoke-direct {v1, v2, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 66
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 67
    invoke-virtual {v10, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 68
    new-instance v13, Lcom/join/mgps/dto/PAPAItemTitle2;

    const-string v14, "\u50cf\u4f60\u4e00\u6837\u7684\u73a9\u5bb6\u90fd\u559c\u6b22"

    invoke-direct {v13, v14}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 69
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 71
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 72
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 73
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 74
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    div-int/2addr v13, v11

    if-ge v10, v13, :cond_5

    mul-int/lit8 v13, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v14, v10, 0x2

    .line 75
    invoke-interface {v2, v13, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0xcb

    invoke-direct {v1, v13, v14, v14}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v13

    .line 76
    new-instance v14, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v15, 0x26

    .line 77
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 78
    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 79
    iget-object v15, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 81
    :cond_5
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 82
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 83
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 85
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 86
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 87
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getNg_selection()Ljava/util/List;

    move-result-object v2

    const/16 v10, 0xcc

    .line 89
    invoke-direct {v1, v2, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->Q1(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 91
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 92
    invoke-virtual {v10, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 93
    new-instance v13, Lcom/join/mgps/dto/PAPAItemTitle2;

    const-string v14, "\u65b0\u6e38\u7cbe\u9009"

    invoke-direct {v13, v14}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 94
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 96
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 97
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 98
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v13, 0x1e

    .line 100
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 101
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 102
    iget-object v2, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 104
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 105
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 107
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 108
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 109
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getS_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getS_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    const/16 v10, 0x4eea

    invoke-direct {v1, v2, v10, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->M1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    move-result-object v2

    const-string v10, "22-12-1"

    .line 112
    invoke-virtual {v2, v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 113
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 114
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 115
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 116
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 119
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 120
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 122
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 123
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 124
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 127
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_c

    .line 128
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v4, :cond_9

    const-string v13, "22-15-"

    .line 129
    invoke-direct {v1, v10, v13}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const/16 v13, 0x5015

    .line 130
    invoke-direct {v1, v10, v13, v13}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x0

    invoke-interface {v2, v13, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const/4 v13, 0x1

    if-ne v4, v13, :cond_a

    const-string v14, "22-16-"

    .line 131
    invoke-direct {v1, v10, v14}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const/16 v14, 0x5016

    .line 132
    invoke-direct {v1, v10, v14, v14}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v13, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    if-ne v4, v11, :cond_b

    const-string v13, "22-17-"

    .line 133
    invoke-direct {v1, v10, v13}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const/16 v13, 0x5017

    .line 134
    invoke-direct {v1, v10, v13, v13}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v2, v11, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 135
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->setList(Ljava/util/List;)V

    .line 136
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v4, 0x20

    .line 137
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 139
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 141
    invoke-virtual {v2, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 142
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 144
    invoke-virtual {v2, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 145
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f071194

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 146
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRecommend_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 148
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 149
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;

    .line 150
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_f

    goto :goto_4

    .line 151
    :cond_f
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v10, v11, :cond_10

    goto :goto_4

    .line 152
    :cond_10
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 153
    invoke-virtual {v10, v7}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 154
    new-instance v13, Lcom/join/mgps/dto/PAPAItemTitle2;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getSub_title()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 155
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    move-result-object v10

    const/16 v13, 0xce

    invoke-direct {v1, v10, v13, v13}, Lcom/join/mgps/activity/PapaMainV2Fragment;->N1(Ljava/util/List;II)Ljava/util/List;

    move-result-object v10

    .line 157
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_11

    .line 158
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 159
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 160
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 161
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 162
    invoke-interface {v10, v4, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 163
    invoke-direct {v1, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->P1(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 164
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v13, 0x22

    .line 165
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 166
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 167
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 170
    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 171
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 173
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 174
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 175
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 176
    :cond_11
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 177
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 178
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 179
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 180
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {v1, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->P1(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 182
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v13, 0x23

    .line 183
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 184
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 185
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 188
    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 189
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 191
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 192
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 193
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 194
    :cond_12
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v11, :cond_e

    .line 195
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 196
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 197
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 198
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-direct {v1, v10}, Lcom/join/mgps/activity/PapaMainV2Fragment;->P1(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 200
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    const/16 v13, 0x24

    .line 201
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    const/4 v13, 0x0

    .line 202
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 203
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 206
    invoke-virtual {v4, v9}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 207
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 209
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 210
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 211
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 212
    :cond_13
    iget-object v2, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    iget-object v3, v1, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/join/mgps/adapter/h4;->Z(Ljava/util/List;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_5
    return-void
.end method

.method G1(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_9

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

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

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

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

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

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

.method H1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView3;->v()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView3;->u()V

    :cond_0
    return-void
.end method

.method I0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/SearchListActivity1_;->s1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_$o;->c(Z)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_$o;->a(I)Lcom/join/mgps/activity/SearchListActivity1_$o;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c1:Ljava/lang/String;

    return-void
.end method

.method K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->b1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method L1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s:Landroid/widget/ViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    return-void
.end method

.method M0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y:Lcom/join/mgps/pref/PrefDef_;

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

    const-class v2, Lcom/join/mgps/dto/PAPAHomeBeanV7;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "m1"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->E1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u4e3b\u754c\u9762   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->z1()V

    .line 7
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v:Z

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->h1()V

    goto :goto_2

    .line 12
    :cond_2
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

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v:Z

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->P0()V

    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView3;->k()V

    :cond_0
    return-void
.end method

.method O0(Ljava/lang/String;I)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "  "

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u52a0\u8f7d\u6570\u636e   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-nez v1, :cond_7

    .line 3
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v5}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 6
    iget-object v6, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 7
    new-instance v6, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {v6}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 8
    invoke-virtual {v6, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 10
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v5

    invoke-interface {v4, v5}, Lq1/h;->C0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ResponseModel;

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u52a0\u8f7d\u6570\u636e\u5b8c\u6210   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 14
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lodeBannerDate: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->isEmpty()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T0()V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    :goto_0
    if-ne p2, v2, :cond_2

    .line 20
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->i1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V

    .line 21
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->h1()V

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->z1()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_3

    .line 26
    :cond_3
    :try_start_2
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T0()V

    .line 28
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v:Z

    if-eqz v0, :cond_4

    if-ne p2, v2, :cond_4

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->showLodingFailed()V

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->z1()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->H1()V

    .line 32
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-eqz v1, :cond_9

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 33
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->T0()V

    .line 36
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v:Z

    if-eqz v0, :cond_5

    if-ne p2, v2, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->showLodingFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->H1()V

    .line 39
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-eqz v1, :cond_9

    .line 40
    :goto_4
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->E1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    goto :goto_6

    .line 41
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->H1()V

    .line 42
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-eqz v1, :cond_6

    .line 43
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->E1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 44
    :cond_6
    throw v0

    .line 45
    :cond_7
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->v:Z

    if-eqz p1, :cond_8

    if-ne p2, v2, :cond_8

    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-nez p1, :cond_8

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->showLodingFailed()V

    .line 47
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->H1()V

    :cond_9
    :goto_6
    return-void
.end method

.method P()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-nez v0, :cond_0

    const-string v0, "m1"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView3;->l()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    iget v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t0:Lcom/join/kotlin/presenter/HomeViewModle;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/presenter/HomeViewModle;->initStat(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0()V

    :cond_1
    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "m1"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0(Ljava/lang/String;I)V

    return-void
.end method

.method public Q0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->R0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->I:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/join/mgps/activity/j2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/j2;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method R0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r:Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v2, :cond_0

    .line 5
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    :cond_0
    return-void
.end method

.method S0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method T0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView3;->setNoMore()V

    :cond_0
    return-void
.end method

.method U0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method V0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method W0(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "android.net.wifi.WIFI_STATE_CHANGED",
            "android.net.wifi.STATE_CHANGE",
            "android.net.conn.CONNECTIVITY_CHANGE",
            "android.net.wifi.SCAN_RESULTS"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView3;->setCanLoadMore()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E0:Z

    return-void
.end method

.method public X0()V
    .locals 0

    return-void
.end method

.method Y0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
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

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->f:Lcom/join/mgps/rpc/d;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->F:J

    .line 6
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    const-string v2, "PapaMainAdapter"

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s0:Lcom/join/mgps/activity/MGMainActivity;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->F0()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->showLoding()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->M0()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->w0()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0()V

    return-void
.end method

.method f1(Landroid/content/Intent;)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->D1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method g1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B:Lcom/join/mgps/adapter/h4;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method h1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07117f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->s1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    const-string v3, "#F7F8F9"

    .line 5
    invoke-static {v0, v3, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->R(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->z0:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u0:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->z0:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method i1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->y:Lcom/join/mgps/pref/PrefDef_;

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

.method j1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    :cond_1
    return-void
.end method

.method l0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method m0(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->d0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->D1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method n0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v2, 0x4

    .line 5
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    :cond_1
    if-nez v0, :cond_7

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->X(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 17
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->S(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;)V

    return-void

    .line 19
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->J0(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :goto_1
    return-void

    :cond_7
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    .line 23
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from_type()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x2b

    if-lez p1, :cond_9

    const/16 v2, 0x2b

    :cond_9
    const/4 p1, 0x5

    if-eqz v2, :cond_16

    const/16 v5, 0xd

    if-eq v2, v5, :cond_15

    const/4 v5, 0x2

    if-eq v2, v5, :cond_14

    const/4 v5, 0x3

    if-eq v2, v5, :cond_13

    if-eq v2, p1, :cond_12

    const/4 v5, 0x6

    if-eq v2, v5, :cond_13

    const/4 v5, 0x7

    if-eq v2, v5, :cond_16

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_f

    if-eq v2, v3, :cond_16

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 26
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_4

    .line 27
    :pswitch_1
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_a
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    .line 30
    :cond_b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-void

    .line 32
    :cond_c
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v3

    if-ne v3, p1, :cond_d

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 34
    :cond_d
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 35
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_e
    :goto_2
    return-void

    .line 40
    :cond_f
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_3

    .line 41
    :cond_10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    :cond_11
    :goto_3
    return-void

    .line 47
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 48
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_4

    .line 49
    :cond_14
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 50
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 51
    :cond_16
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_17

    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 53
    :cond_17
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_4

    .line 55
    :cond_18
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 57
    :cond_19
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v1

    invoke-static {p1, v0, v2, v3, v1}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
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

    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->H:Lcom/join/mgps/pref/f;

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

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->n0:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s0:Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    .line 6
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v5, 0x30

    if-eq v1, v5, :cond_3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->J1()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->K1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 13
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-wide v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->F:J

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

    iput-wide v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->F:J

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notify time lastUpdateTime"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->K:Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    iget v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    cmp-long p1, v2, v8

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->F:J

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notify time lastUpdateTime2"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0()V

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->m1(Z)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G0:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s0:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

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
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->G0:Z

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->d()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->u:Ljava/util/List;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->w:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->G1(Ljava/util/List;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->s0:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/join/android/app/component/video/c;->B()V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->H0:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14
    :cond_3
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->V0:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->C:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 16
    :cond_4
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->m1(Z)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    add-int v0, p2, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 6
    iget p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->E:I

    iget p3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->q0:I

    if-lt p2, p3, :cond_2

    if-eqz p3, :cond_2

    .line 7
    iget-boolean p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->W0:Z

    const/4 p3, 0x0

    if-ne p2, v1, :cond_1

    .line 8
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 9
    :cond_1
    iput-boolean p3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->W0:Z

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->D:I

    add-int/2addr p2, v1

    if-ge p2, p3, :cond_4

    .line 11
    iget-boolean p2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->W0:Z

    if-nez p2, :cond_3

    .line 12
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 13
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->W0:Z

    .line 14
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->Z0:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x1f4

    cmp-long v0, p1, p3

    if-lez v0, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->Z0:J

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView3;->k()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->T0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->U0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->T0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->U0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0()V

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

    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->M0:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ddd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->N0:I

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

.method q0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    iput-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    .line 11
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->A0:Ljava/util/ArrayList;

    iget v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->B0:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c1:Ljava/lang/String;

    return-void
.end method

.method q1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method r0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->m0(Ljava/lang/String;)V

    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->showLoding()V

    const-string v0, "m1"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->p0:I

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->x0:Z

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0(Ljava/lang/String;I)V

    return-void
.end method

.method public s1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c1:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV2Fragment;->r0(Ljava/lang/String;)V

    return-void
.end method

.method u0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->n0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    .line 6
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 8
    new-instance v2, Lcom/join/mgps/dto/RequestGameIdArgs;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-direct {v2, p1, v3, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;II)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lq1/h;->A0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 15
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setGameBean(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->n0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u4e0b\u8f7d\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/PapaMainV2Fragment;->g1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    return-void
.end method

.method v0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->z0()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->f:Lcom/join/mgps/rpc/d;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->x1(Lcom/join/mgps/dto/HomeFloatData;)V

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

.method v1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/r;->i(Landroid/content/Context;)V

    return-void
.end method

.method w0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->f:Lcom/join/mgps/rpc/d;

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
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->I0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method w1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/join/mgps/activity/PapaMainV2Fragment$f;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/PapaMainV2Fragment$f;-><init>(Lcom/join/mgps/activity/PapaMainV2Fragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/z;->O(Landroid/content/Context;ILl1/a;)Lcom/join/mgps/customview/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method x1(Lcom/join/mgps/dto/HomeFloatData;)V
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
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

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

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->Q0:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->Q0:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080c71

    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->O0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

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

    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->P0:Lcom/join/mgps/dto/RecomDatabean;

    .line 17
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.coinflote"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "coinFloatData"

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->P0:Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

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

.method y1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->v0()V

    return-void
.end method

.method public z0()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getFloatadRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0
.end method

.method z1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->c:Lcom/join/mgps/customview/XListView3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->K:Z

    if-eqz v0, :cond_5

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->K:Z

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV2Fragment;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV2Fragment;->D0()V

    :cond_5
    return-void
.end method
