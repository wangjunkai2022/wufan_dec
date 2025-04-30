.class public Lcom/join/mgps/activity/ForumPostsActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumPostsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumPostsActivity$k0;,
        Lcom/join/mgps/activity/ForumPostsActivity$i0;,
        Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;,
        Lcom/join/mgps/activity/ForumPostsActivity$g0;,
        Lcom/join/mgps/activity/ForumPostsActivity$h0;,
        Lcom/join/mgps/activity/ForumPostsActivity$f0;,
        Lcom/join/mgps/activity/ForumPostsActivity$e0;,
        Lcom/join/mgps/activity/ForumPostsActivity$j0;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0413
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0xa
    }
.end annotation


# static fields
.field private static final j2:Ljava/lang/String;

.field public static final k2:Ljava/lang/String;

.field public static final l2:I = 0x3

.field private static final m2:I = 0x9

.field public static final n2:Ljava/lang/String; = "key_mediacmd"

.field public static final o2:Ljava/lang/String; = "key_mediacmd_params"


# instance fields
.field A:Landroid/widget/LinearLayout;

.field private final A0:I

.field A1:I

.field B:Landroid/view/View;

.field private final B0:I

.field B1:I

.field C:Landroid/view/View;

.field private final C0:I

.field C1:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field D:Landroid/widget/ImageView;

.field private final D0:I

.field D1:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field E:Landroid/widget/ImageView;

.field private final E0:I

.field E1:Lcom/join/android/app/component/video/MyVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field F:Landroid/widget/ImageView;

.field private final F0:I

.field F1:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field G:Landroid/widget/ImageView;

.field private G0:I

.field G1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field final H:Ljava/lang/String;

.field private H0:I

.field H1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field final I:Ljava/lang/String;

.field private I0:I

.field I1:Lcom/join/android/app/component/video/MediaController;

.field J:I

.field private J0:Ljava/lang/String;

.field J1:I

.field K:Ljava/lang/String;

.field private K0:I

.field K1:Ljava/lang/String;

.field L0:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

.field L1:Ljava/lang/String;

.field private M0:Lcom/join/mgps/dialog/p0;

.field M1:Z

.field private N0:Lcom/join/mgps/dialog/q0;

.field N1:Z

.field private O0:I

.field O1:I

.field private P0:I

.field P1:I

.field private final Q0:I

.field Q1:I

.field private final R0:I

.field R1:Lcom/join/mgps/customview/t;

.field private final S0:I

.field private S1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final T0:I

.field T1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final U0:I

.field U1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final V0:I

.field private V1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final W0:I

.field W1:I

.field private X0:I

.field X1:Z

.field Y0:I

.field Y1:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private Z0:Lnet/bither/util/b$e;

.field Z1:Z

.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field a1:Landroid/os/Handler;

.field a2:Z

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

.field b2:Z

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c1:Lcom/join/mgps/rpc/b;

.field c2:Z

.field d:Lcom/join/mgps/customview/XListView4ForumPost;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d1:Lcom/join/mgps/customview/BaiduAdBannerRelativeLayout;

.field d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private e1:Lcom/join/mgps/rpc/d;

.field public e2:I

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private f1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field public f2:I

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private g1:Z

.field public g2:I

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h1:Z

.field public h2:Landroid/widget/AbsListView;

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i1:Z

.field public i2:Lcom/join/mgps/recycler/c;

.field j:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

.field k:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private m1:Lcom/join/mgps/dialog/s1;

.field n:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private final n1:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o0:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field volatile o1:Z

.field p:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p0:Lcom/join/mgps/rpc/h;

.field p1:Landroid/view/View$OnClickListener;

.field q:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q1:Lcom/join/mgps/customview/WrapContentGridView;

.field r:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

.field s:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field private s1:Lcom/join/mgps/dialog/p0;

.field t:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field volatile t0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private t1:I

.field u:Landroid/widget/LinearLayout;

.field u0:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field u1:Z

.field v:Landroid/widget/LinearLayout;

.field v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

.field v1:Lcom/join/mgps/customview/e$d;

.field w:Landroid/widget/LinearLayout;

.field w0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$u0;",
            ">;"
        }
    .end annotation
.end field

.field w1:Z

.field x:Landroid/view/View;

.field private final x0:I

.field x1:Z

.field y:Landroid/widget/LinearLayout;

.field private final y0:I

.field y1:Z

.field z:Landroid/widget/LinearLayout;

.field private final z0:I

.field z1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/ForumPostsActivity;->j2:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "key_forum_posts_bean"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/ForumPostsActivity;->k2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const-string v0, "asc"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H:Ljava/lang/String;

    const-string v1, "desc"

    .line 3
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->x0:I

    const/4 v2, 0x2

    .line 7
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y0:I

    const/4 v2, 0x4

    .line 8
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z0:I

    const/16 v2, 0x11

    .line 9
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A0:I

    const/16 v3, 0x12

    .line 10
    iput v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->B0:I

    const/16 v4, 0x14

    .line 11
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C0:I

    const/16 v5, 0x21

    .line 12
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D0:I

    const/16 v5, 0x22

    .line 13
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E0:I

    const/16 v5, 0x24

    .line 14
    iput v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F0:I

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    .line 16
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$k;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->L0:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    .line 17
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O0:I

    .line 18
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 19
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Q0:I

    const/16 v0, 0x10

    .line 20
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->R0:I

    const/16 v0, 0x20

    .line 21
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S0:I

    .line 22
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T0:I

    .line 23
    iput v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U0:I

    .line 24
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V0:I

    const/16 v0, 0x18

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->W0:I

    .line 26
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 27
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y0:I

    .line 28
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$v;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z0:Lnet/bither/util/b$e;

    .line 29
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$x;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a1:Landroid/os/Handler;

    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g1:Z

    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h1:Z

    .line 32
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$h;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->n1:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 35
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o1:Z

    .line 36
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$i;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    .line 37
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    .line 38
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$o;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v1:Lcom/join/mgps/customview/e$d;

    .line 39
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w1:Z

    .line 40
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->x1:Z

    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y1:Z

    .line 42
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    .line 44
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->B1:I

    .line 45
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N1:Z

    .line 46
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O1:I

    .line 47
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P1:I

    .line 48
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Q1:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->R1:Lcom/join/mgps/customview/t;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    .line 54
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->W1:I

    .line 55
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X1:Z

    .line 56
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z1:Z

    .line 57
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a2:Z

    .line 58
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b2:Z

    .line 59
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c2:Z

    .line 60
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e2:I

    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f2:I

    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g2:I

    return-void
.end method

.method private A2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f1:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f1:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->R2()V

    return-void
.end method

.method private D1(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "key_selected_images"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    return p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->u1()V

    return-void
.end method

.method private G2()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->touristLogin()V

    goto :goto_0

    :cond_0
    const v0, 0x7f11010c

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t1:I

    return p1
.end method

.method private H2()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->k3()V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/activity/ForumPostsActivity$e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    return-object p0
.end method

.method private J1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private J2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6761\u56de\u590d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u5df2\u67090\u6761\u56de\u590d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/dialog/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    return-object p0
.end method

.method static synthetic L0(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->y1()V

    return-void
.end method

.method private L1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 3
    aget v0, v0, v3

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic M0(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->z1()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H0:I

    return p1
.end method

.method private N1()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$e0;

    const/4 v7, -0x1

    const/4 v8, -0x2

    move-object v3, v1

    move-object v4, p0

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity$e0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 3
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$l;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$l;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const v1, 0x7f09061c

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/WrapContentGridView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q1:Lcom/join/mgps/customview/WrapContentGridView;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$f0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q1:Lcom/join/mgps/customview/WrapContentGridView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->P1()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    return p1
.end method

.method private O1()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$e0;

    const/4 v7, -0x1

    const/4 v8, -0x2

    move-object v3, v1

    move-object v4, p0

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/activity/ForumPostsActivity$e0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    .line 3
    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$j;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$j;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const v1, 0x7f090a82

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u:Landroid/widget/LinearLayout;

    const v1, 0x7f090a86

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f090a88

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w:Landroid/widget/LinearLayout;

    const v1, 0x7f090d9e

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->x:Landroid/view/View;

    const v1, 0x7f090a80

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f090a84

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z:Landroid/widget/LinearLayout;

    const v1, 0x7f090a7e

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A:Landroid/widget/LinearLayout;

    const v1, 0x7f090163

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->B:Landroid/view/View;

    const v1, 0x7f090164

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C:Landroid/view/View;

    const v1, 0x7f090a83

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D:Landroid/widget/ImageView;

    const v1, 0x7f090a87

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f090a89

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f090a7f

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G0:I

    return p0
.end method

.method private P1()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    const-string v2, "\u6536\u85cf"

    const-string v3, "\u5206\u4eab"

    const-string v4, "\u5012\u5e8f\u67e5\u770b"

    const-string v5, "\u6b63\u5e8f\u67e5\u770b"

    const-string v6, "\u4e3e\u62a5"

    const-string v7, "\u5220\u5e16"

    const-string v8, "\u52a0\u7cbe"

    const-string v9, "\u6536\u5f55\u81f3\u8bdd\u9898"

    const-string v10, "\u79fb\u9664\u8bdd\u9898"

    const-string v11, "\u7f6e\u9876"

    .line 5
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_10

    .line 6
    aget v5, v1, v4

    .line 7
    aget-object v6, v2, v4

    .line 8
    new-instance v7, Lcom/join/mgps/activity/ForumPostsActivity$g0;

    invoke-direct {v7, p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    const/4 v8, 0x7

    const/4 v9, 0x1

    if-ne v5, v8, :cond_5

    .line 9
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_best_allow()Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_4

    .line 10
    :cond_2
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v8

    if-ne v8, v9, :cond_3

    const-string v6, "\u53d6\u6d88\u7cbe\u534e"

    .line 11
    :cond_3
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v8

    if-ne v8, v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, v7, Lcom/join/mgps/activity/ForumPostsActivity$g0;->d:Z

    goto/16 :goto_3

    :cond_5
    const/4 v8, 0x6

    if-ne v5, v8, :cond_6

    .line 12
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_del_allow()Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_4

    :cond_6
    const/16 v8, 0x8

    if-ne v5, v8, :cond_7

    .line 13
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_add_tag_allow()Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_4

    :cond_7
    const/16 v8, 0x9

    if-ne v5, v8, :cond_8

    .line 14
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_remove_tag_allow()Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_4

    :cond_8
    if-ne v5, v0, :cond_c

    .line 15
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_first()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v8

    if-ne v8, v9, :cond_a

    const-string v6, "\u53d6\u6d88\u7f6e\u9876"

    .line 17
    :cond_a
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v8

    if-ne v8, v9, :cond_b

    goto :goto_2

    :cond_b
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v7, Lcom/join/mgps/activity/ForumPostsActivity$g0;->e:Z

    goto :goto_3

    :cond_c
    if-ne v5, v9, :cond_d

    .line 18
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v8

    iput-boolean v8, v7, Lcom/join/mgps/activity/ForumPostsActivity$g0;->c:Z

    goto :goto_3

    :cond_d
    const/4 v8, 0x3

    if-ne v5, v8, :cond_e

    .line 19
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const-string v9, "asc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_4

    :cond_e
    const/4 v8, 0x4

    if-ne v5, v8, :cond_f

    .line 20
    iget-object v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const-string v9, "desc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_4

    .line 21
    :cond_f
    :goto_3
    iput v5, v7, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a:I

    .line 22
    iput-object v6, v7, Lcom/join/mgps/activity/ForumPostsActivity$g0;->b:Ljava/lang/String;

    .line 23
    iget-object v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-virtual {v5, v7}, Lcom/join/mgps/activity/ForumPostsActivity$f0;->a(Lcom/join/mgps/activity/ForumPostsActivity$g0;)Ljava/util/List;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 24
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r1:Lcom/join/mgps/activity/ForumPostsActivity$f0;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/ForumPostsActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    return-object p0
.end method

.method private Q1()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$j0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->c(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$g;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->f(Lcom/join/mgps/activity/ForumPostsActivity$j0$c;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t:Lit/sephiroth/android/library/widget/HListView;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    return p0
.end method

.method private R1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->M2()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity;->k2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->z1()V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u5e16\u5b50\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/KeyboardListenLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$y;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$y;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/KeyboardListenLayout;->setOnSoftKeyboardListener(Lcom/join/mgps/customview/KeyboardListenLayout$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$z;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$z;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$a0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$a0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$b0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$c0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$c0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 21
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u6bcf\u6b21\u6700\u591a\u53ef\u4ee5\u5206\u4eab9\u5f20\u56fe"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#808080"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Q1()V

    .line 25
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->n0(Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->L0:Lcom/join/mgps/adapter/ForumPostsAdapter$i0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->m0(Lcom/join/mgps/adapter/ForumPostsAdapter$i0;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 31
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->N1()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b3()V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y1:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    return-void
.end method

.method private R2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->a2(ZI)V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/ForumPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    return p1
.end method

.method static synthetic T0(Lcom/join/mgps/activity/ForumPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O0:I

    return p0
.end method

.method static synthetic U0(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Y1()V

    return-void
.end method

.method private U2()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11010d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->u3()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H0:I

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/i0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->J(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    const/16 v4, 0x2c2

    if-ne v3, v4, :cond_3

    const v0, 0x7f1103b4

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->isResult()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 16
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 22
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 23
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getRid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->x2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 26
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_money()I

    move-result v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getReward_exp()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->m3(Lcom/join/mgps/customview/RewardType;II)V

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getError_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->j3(I)V

    return-void

    .line 30
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/dialog/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    return-object p0
.end method

.method private V1()V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    return-void
.end method

.method private V2()V
    .locals 7

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11010d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->u3()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H0:I

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/i0;->Y(Landroid/content/Context;ILjava/lang/String;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->l0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    const/16 v4, 0x2c2

    if-ne v3, v4, :cond_3

    const v0, 0x7f1103b4

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    .line 13
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->isResult()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 16
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setUid(I)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyRequestBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setMessage(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setAdd_time(J)V

    .line 22
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRrid(I)V

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getRid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->w2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 25
    sget-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_money()I

    move-result v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getReward_exp()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->m3(Lcom/join/mgps/customview/RewardType;II)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getError_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->j3(I)V

    return-void

    .line 29
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyData;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    :goto_0
    return-void
.end method

.method private X1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->W1(I)V

    return-void
.end method

.method private Y1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->p()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->k()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->V1()V

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->X1()V

    goto :goto_0

    :cond_1
    const v0, 0x7f110206

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    :goto_0
    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private g3(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->N1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q1:Lcom/join/mgps/customview/WrapContentGridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->L2()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->N2()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->K2()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->P1()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    const v1, 0x7f1204c6

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private k3()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void

    :pswitch_2
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u4e3e\u62a5\u5417\uff1f"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u786e\u5b9a\u8981\u56de\u590d\u5417\uff1f"

    goto :goto_0

    .line 3
    :pswitch_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r1()V

    return-void

    :pswitch_5
    const-string v0, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    goto :goto_0

    .line 4
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u786e\u5b9a\u8981\u53d6\u6d88\u7cbe\u534e\u5417\uff1f"

    goto :goto_0

    :cond_0
    const-string v0, "\u786e\u5b9a\u8981\u8bbe\u4e3a\u7cbe\u534e\u5417\uff1f"

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/join/mgps/dialog/p0;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/p0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/p0;->f(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/p0;->d(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/p0;->b(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$m;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$n;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$n;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s1:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090457
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private m1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/join/mgps/Util/i0;->l0()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object p1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p1, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 9
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object p1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p1, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    :cond_4
    :goto_1
    return-void
.end method

.method private m2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K1:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->L1:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F1:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F1:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H1:Landroid/widget/LinearLayout;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    const/16 v4, 0x8

    if-nez v2, :cond_0

    .line 8
    new-instance v2, Lcom/join/android/app/component/video/MediaController;

    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    .line 9
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->q()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MyVideoView;->setMediaController(Lcom/join/android/app/component/video/MediaController;)V

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Q2()V

    const-string v0, "play a last video ..."

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MyVideoView;->setVideoPath(Ljava/lang/String;)V

    const-string v0, "play a new video ..."

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$p;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$q;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$q;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$r;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$s;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G1:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$t;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$t;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->R1:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->R1:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private p3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private u1()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->H1(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->G1(Landroid/content/Context;I)V
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

.method private y1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->s1()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r1()V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->l1()V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q1()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090457 -> :sswitch_3
        0x7f09045a -> :sswitch_2
        0x7f09045b -> :sswitch_1
        0x7f09045e -> :sswitch_0
    .end sparse-switch
.end method

.method private z1()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentUtil;->getSplashActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->setSplashActivity(Landroid/app/Activity;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v2, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method A1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M1:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p3()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->a3()V

    .line 5
    invoke-virtual {p0, v2, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->h2(II)V

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M1:Z

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->J1()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->P2()Landroid/widget/RelativeLayout$LayoutParams;

    :goto_1
    return-void
.end method

.method B1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "http"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 3
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method B2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->M2()V

    return-void
.end method

.method C1(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->B1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method C2(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->V1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->S1:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method D2(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->a2(ZI)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->C2(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    :cond_1
    return-void
.end method

.method E1()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method E2(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;",
            "Lcom/join/mgps/dto/ForumResponse<",
            "Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->m1(Ljava/util/List;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 10
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPid(I)V

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setUid(I)V

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setNickname(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAvatar_src(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setMessage(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAdd_time(J)V

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getPic_list()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPic_list(Ljava/util/List;)V

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getRaw_pic_list()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setRaw_pic_list(Ljava/util/List;)V

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getFloor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setFloor(I)V

    .line 21
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setForum_auth(I)V

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setVip_level(I)V

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setSvip_level(I)V

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->is_moderator()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setIs_moderator(Z)V

    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMember_honor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setMember_honor(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->y2(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    .line 27
    sget-object v1, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_money()I

    move-result v2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getReward_exp()I

    move-result p2

    invoke-virtual {p0, v1, v2, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->m3(Lcom/join/mgps/customview/RewardType;II)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->F2(I)V

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->m1(Ljava/util/List;)V

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    .line 32
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getError_type()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->j3(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 35
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->m1(Ljava/util/List;)V

    .line 37
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    return-void

    .line 38
    :cond_5
    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->p1()V

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumPostsCommentData;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 41
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 43
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    if-eqz p2, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 44
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 47
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 48
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->m1(Ljava/util/List;)V

    .line 50
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    return-void

    .line 51
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->m1(Ljava/util/List;)V

    .line 55
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    .line 56
    throw p2
.end method

.method F1(Landroid/content/Context;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Q1:I

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x3fe66666    # 1.8f

    const v2, 0x7f070ca1

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, p1

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 5
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Q1:I

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Q1:I

    return p1
.end method

.method F2(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    return-void
.end method

.method G1(II)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u91c7\u7eb3\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u64cd\u4f5c\uff01"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/i0;->d0(Landroid/content/Context;II)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsHelpSolveRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/h;->j(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11010c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->u2(I)V

    const-string p1, "\u91c7\u7eb3\u6210\u529f\uff01"

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsHelpSolveData;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 21
    throw p1

    :cond_7
    const p1, 0x7f110206

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method H1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method I1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h1:Z

    return-void
.end method

.method I2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N1:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method K1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->goMyAlbumActivity4PickPic()V

    return-void
.end method

.method K2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G:Landroid/widget/ImageView;

    const v1, 0x7f080864

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G:Landroid/widget/ImageView;

    const v1, 0x7f080863

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method L2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D:Landroid/widget/ImageView;

    const v1, 0x7f080867

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D:Landroid/widget/ImageView;

    const v1, 0x7f080866

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public M1()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e1:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method M2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g:Landroid/widget/TextView;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f080a13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f080a14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method N2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const-string v1, "asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f080861

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f080862

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method O2(Ljava/lang/String;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a2:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a2:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    move-result v5

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 8
    :try_start_0
    invoke-static {p0, v4}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/join/mgps/rpc/h;->a0(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-nez v3, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->isResult()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v0, "\u79fb\u9664\u8bdd\u9898\u6210\u529f"

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->f2(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 16
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string p1, "\u79fb\u9664\u8bdd\u9898\u5931\u8d25"

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 19
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a2:Z

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 23
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a2:Z

    .line 24
    throw p1

    :cond_6
    const p1, 0x7f110206

    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 26
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a2:Z

    :goto_5
    return-void
.end method

.method P2()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D1:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 7
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTop(I)V

    return-object v0
.end method

.method Q2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F1:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->m2()V

    :cond_2
    :goto_1
    return-void
.end method

.method public S1(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f09088d

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1
    aget v4, v1, v2

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->L1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method S2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const-string v1, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y0:I

    .line 9
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bither/util/b;->y()V

    goto :goto_0

    :cond_1
    const-string v1, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    .line 10
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    return-void

    .line 11
    :cond_2
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y0:I

    const v1, 0x7f110206

    .line 12
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y0:I

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 15
    :goto_1
    throw v0
.end method

.method T1()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    iget v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->B1:I

    sub-int/2addr v0, v4

    if-lt v3, v0, :cond_1

    if-gt v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method T2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 9
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    if-nez v1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->V2()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->U2()V

    .line 13
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_2
    const-string v0, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    :cond_3
    const v0, 0x7f110206

    .line 16
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 20
    throw v0
.end method

.method public U1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 5
    aget v1, v1, v3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method W0(Ljava/lang/String;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u6536\u5f55\u8bdd\u9898\u5931\u8d25"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z1:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z1:Z

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    move-result v6

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 8
    :try_start_0
    invoke-static {p0, v5}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    move-object v7, p1

    invoke-interface/range {v4 .. v9}, Lcom/join/mgps/rpc/h;->g(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->isResult()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const-string v1, "\u6536\u5f55\u8bdd\u9898\u6210\u529f"

    .line 13
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->e2(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 16
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 19
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z1:Z

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 24
    :goto_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z1:Z

    .line 25
    throw p1

    :cond_6
    const p1, 0x7f110206

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 27
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z1:Z

    :goto_5
    return-void
.end method

.method W1(I)V
    .locals 26
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v2, :cond_13

    iget v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v13, -0x1

    if-ne v2, v13, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    return-void

    .line 4
    :cond_1
    iput v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-le v0, v15, :cond_2

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x18

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 6
    :cond_2
    :goto_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->q0:Lcom/join/mgps/dto/ExtBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_3

    .line 8
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->q0:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    move-result-object v4

    move-object v11, v3

    move-object/from16 v25, v4

    goto :goto_1

    :cond_3
    move-object v11, v4

    move-object/from16 v25, v11

    :goto_1
    if-ne v0, v15, :cond_5

    .line 10
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v17

    sget v18, Lcom/join/mgps/Util/i0;->d:I

    iget v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    iget-object v5, v1, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v21

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v24, v11

    invoke-interface/range {v16 .. v25}, Lcom/join/mgps/rpc/h;->Y(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_4
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v17

    sget v18, Lcom/join/mgps/Util/i0;->d:I

    iget v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const-string v21, ""

    move-object/from16 v16, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v11

    move-object/from16 v23, v25

    invoke-interface/range {v16 .. v23}, Lcom/join/mgps/rpc/h;->v(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v14, 0x0

    goto :goto_3

    .line 13
    :cond_5
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    sget v5, Lcom/join/mgps/Util/i0;->d:I

    iget v6, v1, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    iget-object v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v8

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    move v3, v4

    move/from16 v4, p1

    const/4 v14, 0x0

    move-object/from16 v12, v25

    :try_start_4
    invoke-interface/range {v2 .. v12}, Lcom/join/mgps/rpc/h;->f0(IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    .line 15
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v3

    sget v5, Lcom/join/mgps/Util/i0;->d:I

    iget v6, v1, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    iget-object v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const-string v8, ""

    move/from16 v4, p1

    move-object v9, v11

    move-object/from16 v10, v25

    invoke-interface/range {v2 .. v10}, Lcom/join/mgps/rpc/h;->s0(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_f

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumPostsData;

    if-eqz v2, :cond_d

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v3

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getComment_list()Ljava/util/List;

    move-result-object v4

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsData;->getForum_gag_type()Ljava/util/List;

    move-result-object v2

    if-ne v0, v15, :cond_9

    if-eqz v3, :cond_7

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    if-nez v5, :cond_9

    .line 22
    :cond_7
    iput v13, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    const/16 v0, 0x14

    .line 23
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 24
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-eq v0, v13, :cond_8

    .line 25
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 26
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    return-void

    :cond_9
    if-ne v0, v15, :cond_a

    .line 27
    :try_start_5
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->D2(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 28
    invoke-direct {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->A2(Ljava/util/List;)V

    :cond_a
    if-eqz v4, :cond_b

    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_b

    .line 30
    iput v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->O0:I

    .line 31
    invoke-virtual {v1, v4, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->v2(Ljava/util/List;I)V

    goto :goto_4

    .line 32
    :cond_b
    iput v13, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-ne v0, v15, :cond_c

    .line 33
    iput v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->O0:I

    :cond_c
    :goto_4
    const/16 v0, 0x20

    .line 34
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-eq v0, v13, :cond_11

    goto :goto_7

    :cond_d
    const/16 v2, 0x18

    .line 36
    :try_start_6
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 37
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-eq v0, v13, :cond_e

    .line 38
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 39
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    return-void

    .line 40
    :cond_f
    :try_start_7
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v2, 0x18

    .line 41
    :try_start_8
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 42
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-eq v0, v13, :cond_10

    .line 43
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 44
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    return-void

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v14, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v14, 0x0

    :goto_5
    const/16 v2, 0x18

    .line 45
    :goto_6
    :try_start_9
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 47
    iget v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-eq v0, v13, :cond_11

    .line 48
    :goto_7
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 49
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    goto :goto_a

    :catchall_1
    move-exception v0

    .line 50
    :goto_8
    iget v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    if-eq v2, v13, :cond_12

    .line 51
    iput v14, v1, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 52
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    .line 53
    throw v0

    :cond_13
    :goto_9
    return-void

    :cond_14
    const v0, 0x7f110206

    .line 54
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 55
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    :goto_a
    return-void
.end method

.method declared-synchronized W2(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Z)V
    .locals 31

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_f

    .line 3
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v0, :cond_1

    goto/16 :goto_d

    .line 4
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getForum_auth()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->isOfficialAccount()Z

    move-result v16

    .line 7
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 8
    :goto_1
    iget-object v5, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v5

    if-ne v5, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 9
    :goto_2
    iget-object v6, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAuth()I

    move-result v14

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    iget-object v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v7

    if-ne v6, v7, :cond_5

    const/16 v25, 0x1

    goto :goto_3

    :cond_5
    const/16 v25, 0x0

    :goto_3
    if-eqz v0, :cond_6

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v6

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 12
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v6

    iget-object v7, v1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v7

    if-ne v6, v7, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    .line 13
    :goto_5
    new-instance v11, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v12, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_HEADER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v10, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v7

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v8

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAdd_time()J

    move-result-wide v18

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getFloor()I

    move-result v20

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAnswer_flg()I

    move-result v21

    if-eqz v2, :cond_8

    if-nez v5, :cond_8

    if-eqz v25, :cond_8

    if-nez v0, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    xor-int/lit8 v22, v0, 0x1

    const/16 v6, 0x63

    const/4 v5, 0x3

    if-eq v14, v5, :cond_a

    if-eq v14, v6, :cond_a

    if-nez v0, :cond_a

    if-eqz v25, :cond_9

    goto :goto_7

    :cond_9
    const/16 v23, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v23, 0x1

    .line 21
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getVip_level()I

    move-result v24

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getSvip_level()I

    move-result v26

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->is_moderator()Z

    move-result v27

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMember_honor()Ljava/lang/String;

    move-result-object v28

    const/4 v3, 0x3

    move-object v5, v10

    const/16 v4, 0x63

    move/from16 v6, p2

    move-object v4, v10

    move-object/from16 v10, v17

    move/from16 v29, v0

    move-object v3, v11

    move-object v0, v12

    move-wide/from16 v11, v18

    move/from16 v30, v14

    move/from16 v14, v20

    move/from16 v17, v21

    move/from16 v18, v2

    move/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    move/from16 v22, v26

    move/from16 v23, v27

    move-object/from16 v24, v28

    invoke-direct/range {v5 .. v24}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;-><init>(ZIILjava/lang/String;Ljava/lang/String;JZIZZIZZZIIZLjava/lang/String;)V

    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 25
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v10, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v4

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v7

    xor-int/lit8 v8, v29, 0x1

    move/from16 v11, v30

    const/4 v3, 0x3

    if-eq v11, v3, :cond_c

    const/16 v3, 0x63

    if-eq v11, v3, :cond_c

    if-eqz v29, :cond_b

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v9, 0x1

    :goto_a
    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;-><init>(ILjava/lang/String;Ljava/lang/String;IZZ)V

    invoke-direct {v0, v2, v10}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 31
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 32
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 33
    new-instance v2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v3, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getRaw_pic_list()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 36
    iget-object v3, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 37
    :cond_d
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v8, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v9, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v3

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v6, 0x1

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    move-object v2, v9

    move-object/from16 v4, p1

    move v5, v11

    move/from16 v7, v25

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)V

    invoke-direct {v0, v8, v9}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 40
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_f
    :goto_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public X0(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e2:I

    if-ne p1, p2, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e2:I

    .line 3
    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f2:I

    .line 4
    iput p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g2:I

    return-void
.end method

.method X2()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b2:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b2:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 7
    :try_start_0
    iget-object v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-interface {v5, v0, v3, v4}, Lcom/join/mgps/rpc/h;->h0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$ForumResult;

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumResult;->isResult()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v0, "\u5e16\u5b50\u7f6e\u9876\u6210\u529f"

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v0, "\u5e16\u5b50\u53d6\u6d88\u7f6e\u9876\u6210\u529f"

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumResult;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setFirst(I)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumResult;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    .line 16
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    const-string v0, "\u5e16\u5b50\u7f6e\u9876\u5931\u8d25"

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b2:Z

    goto :goto_6

    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b2:Z

    .line 21
    throw v0

    :cond_7
    const v0, 0x7f110206

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b2:Z

    :goto_6
    return-void
.end method

.method public Y0(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->Z0(Landroid/widget/AbsListView;)V

    :goto_0
    return-void
.end method

.method declared-synchronized Y2(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V
    .locals 29

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;

    const/4 v4, 0x1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAdd_time()J

    move-result-wide v8

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v3

    const/16 v25, 0x0

    const/4 v14, 0x1

    if-lez v3, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 9
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v11

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_auth()I

    move-result v3

    if-ne v3, v14, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isOfficialAccount()Z

    move-result v13

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v16

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getVip_level()I

    move-result v17

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSvip_level()I

    move-result v18

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, ""

    :goto_2
    move-object/from16 v19, v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    const-string v3, ""

    :goto_3
    move-object/from16 v20, v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_moderator()Z

    move-result v21

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMember_honor()Ljava/lang/String;

    move-result-object v22

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v23

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v24

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v26, 0x1

    goto :goto_4

    :cond_5
    const/16 v26, 0x0

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v3, v15

    move/from16 v14, v16

    move-object/from16 v28, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v26

    move-object/from16 v24, v27

    invoke-direct/range {v3 .. v24}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;-><init>(ZILjava/lang/String;Ljava/lang/String;JZIZZIIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    move-object/from16 v3, v28

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 23
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    :cond_7
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 28
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    move-result-object v9

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v10

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    invoke-direct {v0, v2, v12}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 35
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :try_start_1
    const-string v0, ""

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 38
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_c
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/HtmlDocUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    const/4 v14, 0x0

    .line 44
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    .line 45
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v5, 0x1

    .line 47
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/HtmlDocUtil;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 48
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 49
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v8, 0x0

    .line 50
    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_18

    .line 51
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 52
    sget-object v10, Lcom/join/mgps/activity/ForumPostsActivity$w;->a:[I

    iget-object v11, v9, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x1

    if-eq v10, v11, :cond_13

    const/4 v12, 0x2

    if-eq v10, v12, :cond_12

    const/4 v12, 0x3

    if-eq v10, v12, :cond_11

    const/4 v10, 0x0

    goto/16 :goto_10

    .line 53
    :cond_11
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$d;

    .line 54
    new-instance v10, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v12, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v13, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Lcom/join/mgps/activity/ForumPostsActivity;->B1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v9, Lcom/join/mgps/Util/HtmlDocUtil$d;->d:Ljava/lang/String;

    invoke-direct {v13, v4, v9, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v12, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 56
    :cond_12
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/Util/HtmlDocUtil$b;

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/join/mgps/Util/HtmlDocUtil$b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/ForumPostsActivity;->B1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v10, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v9, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/join/mgps/Util/HtmlDocUtil$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Lcom/join/mgps/activity/ForumPostsActivity;->B1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {v12, v4, v13, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {v10, v9, v12}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    goto :goto_10

    .line 61
    :cond_13
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-virtual {v4}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 63
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    .line 64
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    :cond_14
    new-instance v10, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v4, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;

    if-ne v14, v11, :cond_15

    if-nez v8, :cond_15

    const/16 v18, 0x1

    goto :goto_d

    :cond_15
    const/16 v18, 0x0

    .line 66
    :goto_d
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$c;

    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    move-result-object v19

    if-ne v3, v11, :cond_16

    if-nez v8, :cond_16

    const/16 v20, 0x1

    goto :goto_e

    :cond_16
    const/16 v20, 0x0

    :goto_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-ne v5, v11, :cond_17

    if-nez v8, :cond_17

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v9

    move-object/from16 v22, v9

    goto :goto_f

    :cond_17
    const/16 v22, 0x0

    :goto_f
    move-object/from16 v17, v12

    invoke-direct/range {v17 .. v22}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;-><init>(ZLandroid/text/SpannableStringBuilder;ZLjava/lang/String;Ljava/util/List;)V

    invoke-direct {v10, v4, v12}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 69
    :goto_10
    iget-object v4, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c

    .line 70
    :cond_18
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 72
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c0(Ljava/lang/String;)V

    goto :goto_14

    :cond_19
    const/4 v11, 0x1

    .line 73
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v4

    if-lez v4, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v11, 0x0

    :goto_11
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v5, 0x0

    goto :goto_13

    :cond_1c
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v5

    :goto_13
    invoke-direct {v3, v11, v4, v5}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;-><init>(ZLandroid/text/SpannableStringBuilder;Ljava/util/List;)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 77
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_1d
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 81
    sget-object v0, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 83
    sget-object v0, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 84
    :cond_1e
    new-instance v2, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v5

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 88
    iget-object v0, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_20

    .line 90
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v4

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v5

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;-><init>(Ljava/util/List;ILjava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 94
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_20
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v2, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v5

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v7

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v8

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v9

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v10

    move-object v3, v12

    move/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;-><init>(IILjava/lang/String;IIIZZ)V

    invoke-direct {v0, v2, v12}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    .line 103
    iget-object v2, v1, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method

.method public Z0(Landroid/widget/AbsListView;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f2:I

    if-ge v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09126a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", videoHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rect.top:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", rect.bottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    .line 10
    iget v0, v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -->performClick"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h2:Landroid/widget/AbsListView;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method Z1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->Y0(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method Z2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v1

    const-string v2, "view"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v1

    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v1

    const-string v2, "praise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v1

    const-string v2, "isPraise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v1

    const-string v2, "isFavorite"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a1(Lcom/join/mgps/recycler/c;)V
    .locals 7

    const v0, 0x3f733333    # 0.95f

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/join/mgps/recycler/c;->b()I

    move-result v2

    invoke-interface {p1}, Lcom/join/mgps/recycler/c;->a()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 2
    invoke-interface {p1, v1}, Lcom/join/mgps/recycler/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Lcom/join/mgps/recycler/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09126a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Lcom/join/mgps/recycler/c;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v4, v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", videoHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rect.top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rect.bottom:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    if-lt v5, v4, :cond_2

    .line 10
    iget v0, v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -->performClick"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Lcom/join/android/app/component/video/StandardVideoViewJC;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i2:Lcom/join/mgps/recycler/c;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method a2(ZI)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    const p2, 0x7f08075e

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    const p2, 0x7f080c9c

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    return-void
.end method

.method a3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D1:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->F1(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ca1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c9d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c9c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v0, :cond_2

    .line 8
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->D1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c1:Lcom/join/mgps/rpc/b;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->M1()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->R1()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Y1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method b1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H1()V

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    and-int v0, v3, v1

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->f3()V

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->goMyAlbumActivity4PickPic()V

    :goto_2
    return-void
.end method

.method b2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->n0(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method b3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Y1:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$u;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$u;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->e(Lcom/join/mgps/ptr/c;)V

    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b1()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g1:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Z2()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->z1()V

    return-void
.end method

.method c1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->u3()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    :cond_1
    const v0, 0x7f010051

    .line 7
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->R2()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r2()V

    return-void
.end method

.method declared-synchronized c2()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->Y2(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d1:Lcom/join/mgps/customview/BaiduAdBannerRelativeLayout;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    sget-object v4, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->BAIDUADBANNER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    invoke-direct {v3, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/join/mgps/activity/ForumPostsActivity;->W2(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b2()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method c3(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090169

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/customview/f;->z(Landroid/content/Context;)Lcom/join/mgps/customview/f;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v1:Lcom/join/mgps/customview/e$d;

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/e;->m(Lcom/join/mgps/customview/e$d;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/customview/e;->p(Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method callbackPlayVideo(Landroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_mediacmd"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_mediacmd_params"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "callbackPlayVideo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "params="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_5

    .line 6
    aget-object v7, p1, v3

    check-cast v7, Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v7

    goto :goto_1

    :cond_2
    move-object v0, v7

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 8
    iget v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J1:I

    if-ne v7, v8, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q3()V

    .line 10
    iput v7, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J1:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "CMD_PLAY"

    aput-object v1, p1, v4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coverUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v6

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 14
    iput-boolean v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N1:Z

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->a3()V

    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->k2(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 17
    :cond_6
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    return-void

    .line 19
    :cond_7
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 23
    iput-boolean v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N1:Z

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q3()V

    goto/16 :goto_4

    .line 25
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J1:I

    if-ne p1, v1, :cond_9

    return-void

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 28
    iput-boolean v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N1:Z

    goto/16 :goto_4

    .line 29
    :cond_a
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->j2()V

    goto/16 :goto_4

    .line 31
    :cond_b
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q3()V

    goto/16 :goto_4

    .line 33
    :cond_c
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "false"

    const/4 v1, 0x0

    .line 34
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_f

    if-nez v1, :cond_d

    .line 35
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    :cond_d
    if-ne v1, v5, :cond_e

    .line 36
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 37
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->A1()V

    goto :goto_4

    .line 39
    :cond_10
    sget-object v2, Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/ForumPostsActivity$MediaCmd;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "0"

    move-object v2, v0

    const/4 v3, 0x0

    .line 40
    :goto_3
    array-length v7, p1

    if-ge v3, v7, :cond_13

    if-nez v3, :cond_11

    .line 41
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    :cond_11
    if-ne v3, v5, :cond_12

    .line 42
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 43
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CMD_TRANSLATE_Y"

    aput-object v2, v1, v4

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->h2(II)V

    :cond_14
    :goto_4
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
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->T1:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->U1:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method

.method d1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u56de\u590d\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->S2()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->T2()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->T2()V

    :cond_4
    :goto_0
    return-void

    .line 10
    :cond_5
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method

.method d2()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    sget-object v4, Lcom/join/mgps/activity/ForumPostsActivity;->j2:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    const-string v7, "notifyPlayViewOffset"

    aput-object v7, v3, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentPlayPosition="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v3, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "firstVisibleItem="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v3, v10

    const/4 v8, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lastVisibleItem="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v8

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    iget v8, p0, Lcom/join/mgps/activity/ForumPostsActivity;->B1:I

    sub-int v8, v1, v8

    if-lt v3, v8, :cond_1

    if-gt v3, v2, :cond_1

    new-array v0, v10, [Ljava/lang/String;

    aput-object v4, v0, v5

    aput-object v7, v0, v6

    const-string v2, "show video view"

    aput-object v2, v0, v9

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumPostsActivity;->l2(Z)V

    .line 8
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->B1:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-array v1, v10, [Ljava/lang/String;

    aput-object v4, v1, v5

    aput-object v7, v1, v6

    const-string v2, "hide video view"

    aput-object v2, v1, v9

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v6}, Lcom/join/mgps/activity/ForumPostsActivity;->l2(Z)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    sget-object v3, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_mediacmd"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v9, [Ljava/lang/String;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "key_mediacmd_params"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method d3()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->S1(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->U1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method e1(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_2
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    const/16 p1, 0x1f

    const/16 v0, 0x1a

    const/16 v1, 0x16

    const/16 v2, -0xb

    .line 8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->g1(I)Z

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x10

    if-eqz v2, :cond_3

    .line 9
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$d0;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$d0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->g1(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u8be5\u8d34\u5df2\u7ecf\u5220\u9664~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->g1(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->g1(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->g1(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 22
    :cond_6
    :goto_0
    iput v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method e2(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3
    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setTag_list(Ljava/util/List;)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    :goto_2
    return-void
.end method

.method e3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

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

.method f1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h1:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g1:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    :cond_1
    return-void
.end method

.method f2(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_5
    :goto_1
    return-void
.end method

.method f3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    return-void
.end method

.method g1(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Lcom/join/mgps/activity/ForumPostsActivity;->j2:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadTask="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    :cond_0
    return-void
.end method

.method public goMyAlbumActivity4PickPic()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "key_selected_images"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x100

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method h1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J0:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G0:I

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H0:I

    .line 5
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I0:I

    const/4 v2, 0x1

    .line 6
    iput v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->m:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    const-string v1, "\u6dfb\u52a0\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->hideSystemKeyBoard(Landroid/view/View;)V

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->J2()V

    return-void
.end method

.method h2(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void

    .line 4
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O1:I

    .line 5
    iput p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P1:I

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "offsetContainer"

    aput-object p2, p1, v3

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTop="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O1:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOffsetY="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P1:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P1:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method h3()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method public hideKeyBoardHandler()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->hideKeyBoardHandler()V

    return-void
.end method

.method public hideSystemKeyBoard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g1:Z

    return-void
.end method

.method i1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method i2(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->v0:Lcom/join/mgps/adapter/ForumPostsAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method declared-synchronized i3(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f1:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->f1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$i0;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$i0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity$i0;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity$i0;->b(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d2:Lcom/join/mgps/activity/ForumPostsActivity$i0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method j1(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8bc4\u8bba\u5220\u9664\u5931\u8d25"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->W(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/h;->d0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_2

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentDeleteData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u8bc4\u8bba\u5df2\u5220\u9664"

    .line 11
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->t2(I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f110206

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 18
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    .line 19
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method j2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method j3(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method k1(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u56de\u590d\u5220\u9664\u5931\u8d25"

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->X(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 2
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumCommentReplyDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/h;->A(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_3

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumCommentReplyDeleteData;->isResult()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->z2(I)V

    const-string p1, "\u56de\u590d\u5df2\u5220\u9664"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method k2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K1:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->j2()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Q2()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 9
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K1:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->L1:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q3()V

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->F1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G1:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->m2()V

    return-void
.end method

.method l1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y1:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y1:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v0

    .line 5
    :try_start_0
    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/h;->q0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v0, "\u5e16\u5b50\u5220\u9664\u6210\u529f"

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->z1()V

    goto :goto_1

    :cond_2
    const-string v0, "\u5e16\u5b50\u5220\u9664\u5931\u8d25"

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y1:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 15
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y1:Z

    .line 16
    throw v0

    :cond_4
    const v0, 0x7f110206

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->y1:Z

    :goto_3
    return-void
.end method

.method l2(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mediacmd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "key_mediacmd_params"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    return-void
.end method

.method l3(II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u8bc4\u8bba\u5417\uff1f"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/join/mgps/dialog/p0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/p0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u786e\u5b9a"

    .line 3
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->b(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/p0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    new-instance v2, Lcom/join/mgps/activity/ForumPostsActivity$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/ForumPostsActivity$e;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    goto :goto_1

    :cond_1
    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a\u8981\u4e3e\u62a5\u8be5\u8bc4\u8bba\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    goto :goto_1

    :cond_3
    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x24

    if-ne v0, v1, :cond_6

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a\u8981\u4e3e\u62a5\u8be5\u56de\u590d\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    goto :goto_1

    .line 13
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u56de\u590d\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    .line 14
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity$f;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;II)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/p0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/p0;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M0:Lcom/join/mgps/dialog/p0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method m3(Lcom/join/mgps/customview/RewardType;II)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method n2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    goto :goto_0

    .line 4
    :cond_1
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J:I

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->M2()V

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O0:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Y1()V

    return-void
.end method

.method n3(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/q0;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/q0;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method o1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method o2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->N1()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->b1:Lcom/join/mgps/activity/ForumPostsActivity$e0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->g3(Landroid/view/View;)V

    return-void
.end method

.method o3(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/ForumPostsActivity;->D1(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->c(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->j1:Lcom/join/mgps/activity/ForumPostsActivity$j0;

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/ForumPostsActivity$j0;->d(Z)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->k1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->f3()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, ""

    if-eqz p1, :cond_3

    const-string p2, "action"

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "ids"

    .line 12
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v6, p2

    move-object p2, p1

    move p1, v6

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p3

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/join/mgps/dto/RecommendLabelTag;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->l1:Ljava/util/List;

    if-ne p1, v3, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->E1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->W0(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->E1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->O2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 16
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b1()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g1:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Z2()V

    .line 6
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b1()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i1:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->b1()V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->v3(Landroid/content/res/Configuration;)V

    .line 8
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setSystemUiHide(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setSystemUiHide(Z)V

    .line 12
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/q0;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    .line 4
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z0:Lnet/bither/util/b$e;

    invoke-virtual {v0, v1}, Lnet/bither/util/b;->z(Lnet/bither/util/b$e;)V

    .line 5
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 6
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->i1()V

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 9
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

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

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip DownloadStatus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
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

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

.method public onFavoriteChanged(IZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onFavoriteChanged(IZ)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/i0;->j(IZLjava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M1:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->t3()V

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->z1()V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->q3()V

    .line 2
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 3
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    move-result-object v0

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h2:Landroid/widget/AbsListView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i2:Lcom/join/mgps/recycler/c;

    .line 7
    :goto_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->H()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->h2:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->Z0(Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->i2:Lcom/join/mgps/recycler/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->a1(Lcom/join/mgps/recycler/c;)V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lnet/bither/util/b;->q()Lnet/bither/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->Z0:Lnet/bither/util/b$e;

    invoke-virtual {v0, v1}, Lnet/bither/util/b;->e(Lnet/bither/util/b$e;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->w3(Landroid/widget/AbsListView;III)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->X0(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->x3(Landroid/widget/AbsListView;I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->Y0(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onStop()V

    return-void
.end method

.method p1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N0:Lcom/join/mgps/dialog/q0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/q0;->dismiss()V
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

.method p2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    const-string v1, "asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "desc"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->N2()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X0:I

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->P0:I

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Y1()V

    return-void
.end method

.method q1()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    .line 4
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :cond_1
    :goto_0
    const v3, 0x7f110100

    .line 8
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const v0, 0x7f11010d

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    return-void

    .line 13
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    .line 14
    new-instance v5, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v7

    const-string v8, ""

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/join/mgps/rpc/h;->r0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v0, 0x2bd

    if-eq v5, v0, :cond_3

    goto :goto_4

    :cond_3
    const v0, 0x7f11010c

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;

    if-eqz v4, :cond_9

    .line 19
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->isResult()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getBest()I

    move-result v4

    if-ne v4, v0, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    const v5, 0x7f110101

    .line 21
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const v5, 0x7f110102

    .line 22
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 23
    :goto_3
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 26
    :cond_9
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 27
    :cond_a
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 28
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v0, :cond_d

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->K2()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 31
    :try_start_3
    iget-object v4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v4, :cond_c

    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->K2()V

    .line 34
    :cond_c
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :cond_d
    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    goto :goto_7

    :goto_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    .line 37
    throw v0

    :cond_e
    const v0, 0x7f110206

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 39
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->z1:Z

    :goto_7
    return-void
.end method

.method q2(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c2:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c2:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;

    invoke-direct {v4}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;-><init>()V

    .line 8
    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setUid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setGag_uid(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, p2}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setGag_time(I)V

    .line 12
    invoke-virtual {v4, p3}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->setRemarks(Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumRequestBean$PostGagRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/h;->v0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result p2

    if-nez p2, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumResult;

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumResult;->isResult()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string p1, "\u7981\u8a00\u6210\u529f"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumResult;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumResult;->getMsg()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 19
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string p1, "\u7981\u8a00\u5931\u8d25"

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c2:Z

    goto :goto_4

    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c2:Z

    .line 24
    throw p1

    :cond_5
    const p1, 0x7f110206

    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 26
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c2:Z

    :goto_4
    return-void
.end method

.method q3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->J1:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H1:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->I1:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->C1:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->N1:Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->t3()V

    :cond_2
    :goto_0
    return-void
.end method

.method r1()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u5e16\u5b50\u6536\u85cf\u5931\u8d25"

    .line 1
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->L2()V

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->B2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    return-void

    .line 10
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 11
    new-instance v3, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    const-string v6, ""

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v1

    .line 13
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->setApp_ver(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsFavoritesRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/join/mgps/rpc/h;->k0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x2bd

    if-eq v3, v1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->B2()V

    const-string v1, "\u7528\u6237\u9a8c\u8bc1\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\uff01"

    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;

    if-eqz v1, :cond_5

    .line 20
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->L2()V

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "\u5e16\u5b50\u5df2\u6536\u85cf"

    .line 23
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v3, "\u5e16\u5b50\u5df2\u53d6\u6d88\u6536\u85cf"

    .line 24
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsFavoritesData;->isFavorites()Z

    move-result v1

    invoke-static {v3, v1}, Lcom/join/mgps/Util/i0;->f1(IZ)V

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->B2()V

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->B2()V

    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 30
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->L2()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->B2()V

    .line 32
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    goto :goto_4

    :goto_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    .line 35
    throw v0

    :cond_7
    const v0, 0x7f110206

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 37
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->e1(I)V

    .line 38
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u1:Z

    :goto_4
    return-void
.end method

.method r2()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->G0:I

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    const/16 v3, 0x2c2

    if-ne v2, v3, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->R2()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v2

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    const-string v2, "\u70b9\u8d5e\u6210\u529f"

    .line 13
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 14
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    const-string v2, "\u70b9\u8d5e\u5931\u8d25"

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v2, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 16
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 17
    :goto_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method r3()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a1:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a1:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->a1:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method s1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/group/posts/forum_report/index?pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method s2(Landroid/widget/ListView;III)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 p2, 0x1

    sub-int/2addr p4, p2

    if-eq p3, p4, :cond_7

    .line 1
    iget-boolean p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o1:Z

    if-eqz p4, :cond_0

    goto :goto_4

    :cond_0
    const/4 p4, 0x0

    .line 2
    :try_start_0
    iput-boolean p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o1:Z

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, p3, 0x1

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;

    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;->a:Ljava/lang/String;

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;

    if-eqz v2, :cond_2

    .line 10
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;

    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;->a:Ljava/lang/String;

    .line 11
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;

    if-eqz v2, :cond_3

    .line 13
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;

    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;->a:Ljava/util/List;

    .line 14
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15
    :cond_3
    instance-of v2, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;

    if-eqz v2, :cond_4

    .line 16
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;

    iget-object v1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;->a:Ljava/lang/String;

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 18
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/join/android/app/common/utils/MyImageLoader;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_6
    iput-boolean p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o1:Z

    return-void

    :goto_3
    iput-boolean p4, p0, Lcom/join/mgps/activity/ForumPostsActivity;->o1:Z

    .line 22
    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method s3(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f11010d

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->u3()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    const-string v0, ""

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->p0:Lcom/join/mgps/rpc/h;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;->getParams1()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/h;->z0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    const/16 v3, 0x2c2

    if-ne v2, v3, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    const p1, 0x7f1103b4

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    :cond_2
    const/16 v1, 0x2bd

    if-ne v2, v1, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->G2()V

    .line 13
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->E2(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsCommentRequestBean;Lcom/join/mgps/dto/ForumResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showKeyBoardHandler()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->showKeyBoardHandler()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->K0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    :goto_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public showSystemKeyBoard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->g1:Z

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x3393

    .line 2
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->s0:Lcom/join/mgps/dto/ForumBean$GameInfo;

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 10
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 12
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method t1(II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/group/posts/forum_report/index?pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&rid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method t2(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->J2()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method t3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->E1:Lcom/join/android/app/component/video/MyVideoView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->M1:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setFullScreen(Z)V

    :cond_0
    return-void
.end method

.method touristLogin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->isLogined(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    const-string v2, "2"

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->c1:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method u2(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setSolve_flg(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 5
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setAnswer_flg(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method u3()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumPostsActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H2()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->H2()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method v1()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getEmploy_tags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    move-result v7

    const/4 v4, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goForumPostsTagSelectActivity(Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method

.method v2(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->O0:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->J2()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->r3()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->Z1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public v3(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->d:Lcom/join/mgps/customview/XListView4ForumPost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method w1()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v5

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_type()I

    move-result v7

    const/4 v4, 0x2

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goForumPostsTagSelectActivity(Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method

.method w2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H0:I

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->J2()V

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method w3(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->d2()V

    return-void
.end method

.method x1(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->W1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->e1:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, p1}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 11
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X1:Z

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_4
    :goto_1
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->W1:I

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X1:Z

    goto :goto_3

    .line 20
    :goto_2
    iput v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->W1:I

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->X1:Z

    .line 22
    throw p1

    .line 23
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->o3(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method x2(Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 3
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsActivity;->H0:I

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 10
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v6

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 11
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 12
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 13
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_4
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRuid(I)V

    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRnickname(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 21
    :cond_5
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method x3(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->T1()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->l2(Z)V

    :cond_0
    return-void
.end method

.method y2(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->u0:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method z2(I)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity;->t0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity;->c2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method
