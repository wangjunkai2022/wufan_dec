.class public Lcom/join/mgps/activity/MGGameDetailActivity;
.super Lcom/BaseActivity;
.source "MGGameDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGGameDetailActivity$w;,
        Lcom/join/mgps/activity/MGGameDetailActivity$v;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c045c
.end annotation


# static fields
.field private static final l1:Ljava/lang/String; = "MGGameDetailActivity"

.field static m1:Ljava/lang/String; = "0"

.field static n1:Ljava/lang/String; = ""

.field static o1:Z


# instance fields
.field A:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private A0:Lcom/join/mgps/dialog/x0;

.field B:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private B0:Z

.field C:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field D:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field D0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field E:Lcom/join/mgps/rpc/d;

.field E0:Lcom/join/mgps/rpc/e;

.field F:Lcom/join/mgps/rpc/n;

.field F0:Landroid/os/Handler;

.field G:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field G0:Lcom/join/mgps/customview/t;

.field H:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private H0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;",
            ">;"
        }
    .end annotation
.end field

.field I:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private I0:Landroid/widget/RelativeLayout;

.field private J:Landroid/app/Activity;

.field J0:Lcom/join/mgps/customview/t;

.field private K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private K0:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

.field private L0:Ljava/lang/String;

.field private M0:Lcom/join/mgps/dto/GameScore;

.field N0:Lcom/join/mgps/customview/t;

.field O0:Lcom/join/mgps/customview/t;

.field P0:Ljava/lang/String;

.field Q0:Ljava/lang/String;

.field R0:I

.field S0:Ljava/lang/String;

.field T0:Landroid/widget/PopupWindow;

.field U0:Landroid/widget/LinearLayout;

.field V0:Landroid/widget/LinearLayout;

.field W0:Landroid/widget/LinearLayout;

.field X0:Landroid/widget/EditText;

.field Y0:Landroid/widget/TextView;

.field Z0:Landroid/widget/TextView;

.field a:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field a1:Landroid/widget/LinearLayout;

.field b:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public b1:Lcom/join/mgps/customview/XListView2;

.field c:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c1:Lcom/join/mgps/activity/MGGameDetailActivity$v;

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d1:Lcom/join/mgps/rpc/b;

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        resName = "loding_layout"
    .end annotation
.end field

.field e1:Lcom/join/mgps/rpc/b;

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f1:Lcom/join/mgps/dto/GameFromPopoWinBean;

.field g:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g1:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h1:I

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j1:Z

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k1:I

.field l:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private n0:Lcom/join/mgps/dto/DetailResultBeanV3;

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o0:Lcom/join/mgps/Util/IntentDateBean;

.field p:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Lcom/join/mgps/Util/IntentToDetialBean;

.field q:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private q0:Z

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private r0:I

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s0:I

.field t:Lcom/join/mgps/customview/ScrollTextViewLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

.field u:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private u0:Landroid/view/animation/Animation;

.field v:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private v0:Lcom/join/mgps/dto/AccountBean;

.field w:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private w0:I

.field x:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private x0:I

.field y:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private y0:Landroid/app/Dialog;

.field z:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private z0:Lcom/join/android/app/common/manager/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->q0:Z

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->x0:I

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    .line 6
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$k;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->F0:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->G0:Lcom/join/mgps/customview/t;

    .line 8
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K0:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->N0:Lcom/join/mgps/customview/t;

    .line 10
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->O0:Lcom/join/mgps/customview/t;

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->R0:I

    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h1:I

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->j1:Z

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k1:I

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    return-object p1
.end method

.method private H1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->DETIAL_ADGROUP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;

    invoke-direct {v3, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    return-object p0
.end method

.method private I1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K0:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSelf_comment(Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->L0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_comment_count(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->M0:Lcom/join/mgps/dto/GameScore;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_score(Lcom/join/mgps/dto/GameScore;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCommitDataBeanList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCommitDataBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCommitDataBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 7
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    iget-object v7, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v7

    if-ne v7, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-direct {v6, v7, v3, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;-><init>(ZLcom/join/mgps/dto/CommentBaseBean;Z)V

    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/MGGameDetailActivity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->V0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private J1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_FOOTER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A0:Lcom/join/mgps/dialog/x0;

    return-object p0
.end method

.method private K1()V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_HEADER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    move-result v3

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    move-result v4

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v5

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dialog/x0;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A0:Lcom/join/mgps/dialog/x0;

    return-object p1
.end method

.method private L1(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    return-object p0
.end method

.method private O1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    const/4 v3, 0x0

    const-string v4, "\u6e38\u620f\u8be6\u60c5"

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->z0:Lcom/join/android/app/common/manager/b;

    return-object p0
.end method

.method private P1()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_service_switch()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_FAST_ENTRY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_id()J

    move-result-wide v3

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getServer_qq()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlayer_qq()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_no4()Ljava/util/List;

    move-result-object v7

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_count()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1, v9}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Q1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_adinfo_switch()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAMEAD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_adinfo_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;-><init>(ILjava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private R1()V
    .locals 0

    return-void
.end method

.method private S1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private T1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_BOTTOM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;-><init>(Z)V

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private U1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 4
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_ITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;

    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;-><init>(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private V0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    const v2, 0x7f11043c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    const-string v3, "6"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->y2()V

    goto :goto_1

    :cond_2
    const-string v3, "7"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->x2()V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private V1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 5
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    const-string v4, "\u798f\u5229\u793c\u5305"

    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private W1()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 6
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATION:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v9}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    move-result v9

    invoke-direct {v7, v8, v9, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;-><init>(ZILcom/join/mgps/dto/RecommendInfomationBean;)V

    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->a2()V

    :cond_4
    :goto_2
    return-void
.end method

.method private X1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 5
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    const-string v4, "\u6700\u65b0\u8d44\u8baf"

    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private Y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->G0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->G0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private Y1()V
    .locals 0

    return-void
.end method

.method private Z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->N0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->N0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private Z1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->MESSAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->a2()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->O0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->O0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private a2()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b2(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    const/4 v3, 0x0

    const-string v4, "\u76f8\u5173\u63a8\u8350"

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private e2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->RECOMMEND:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;-><init>(ILjava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->a2()V

    return-void
.end method

.method private f2()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ServiceState;

    .line 6
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->SERVICEITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v7

    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;-><init>(Ljava/lang/String;IJ)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->a2()V

    :cond_3
    :goto_1
    return-void
.end method

.method private g2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 6
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    const-string v4, "\u5f00\u670d\u5408\u670d"

    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private h2()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategy;->getPosts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameDetialStrategyItem;

    if-nez v3, :cond_3

    .line 6
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v2, :cond_2

    .line 8
    new-instance v5, Lcom/join/mgps/dto/RecommendInfomationBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/RecommendInfomationBean;-><init>()V

    .line 9
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setPic_list([Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setPost_id(I)V

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPraise()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setPraise(I)V

    .line 12
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getCommit()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setCommit(I)V

    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getAdd_time()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/join/mgps/dto/RecommendInfomationBean;->setTimes(J)V

    .line 14
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setTitle(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getView()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setView(I)V

    .line 16
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType_color(Ljava/lang/String;)V

    .line 19
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATIONTOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    invoke-direct {v7, v1, v2, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;-><init>(ZILcom/join/mgps/dto/RecommendInfomationBean;)V

    invoke-direct {v4, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 20
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_2
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    invoke-direct {v7, v4, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;-><init>(Lcom/join/mgps/dto/GameDetialStrategyItem;Z)V

    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 22
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_IMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    invoke-direct {v7, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;-><init>(Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 24
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_3
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    invoke-direct {v7, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;-><init>(Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 27
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->a2()V

    :cond_5
    :goto_2
    return-void
.end method

.method private i2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategy;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYTABLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;

    invoke-direct {v3, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private j2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategy;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setStrategyTags(Ljava/util/List;)V

    :cond_1
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setStartegyTab(I)V

    .line 8
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    const-string v4, "\u653b\u7565"

    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private k2()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_remote()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    move-result v7

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count_manual()I

    move-result v8

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCompany_name()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_follow()I

    move-result v11

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    move-result v12

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFollow_background_img()Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book_tag()Ljava/util/List;

    move-result-object v14

    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v16

    move-object v3, v15

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v3 .. v15}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .line 14
    iget-object v2, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private l2()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->UPDATE_RECORD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private m2()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VIEWPAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_info()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_position()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 5
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_url()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private n2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameVoucherBean;

    .line 4
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VOUCHER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;

    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;-><init>(ZLcom/join/mgps/dto/GameVoucherBean;)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private o2()V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->WEB:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getEdit_recommend()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_describe_second()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 4
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getLineCount()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private q2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->f1()V

    return-void
.end method


# virtual methods
.method A1(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    const-string v1, "\u70b9\u8d5e\u5931\u8d25"

    .line 1
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/GamePariseRequest;

    invoke-direct {v2}, Lcom/join/mgps/dto/GamePariseRequest;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GamePariseRequest;->setGame_id(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GamePariseRequest;->setComment_id(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GamePariseRequest;->setUid(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameDetailParis(Lcom/join/mgps/dto/GamePariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->b(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "\u4f60\u5df2\u8d5e\u8fc7"

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 11
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PariseBackData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    .line 12
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 13
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->D2()V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->v1()V

    .line 19
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->v1()V

    .line 22
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method A2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method B1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method progress_layout() called.status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t1()V

    :cond_3
    :goto_0
    return-void
.end method

.method B2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->detial2:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized C1()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tpl_two_position(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    const-string v1, "#230404"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBackground_color(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->k2()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_banner_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->H1()V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->X1()V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Y1()V

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->W1()V

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->S1()V

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->j2()V

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->i2()V

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->h2()V

    .line 21
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->O1()V

    .line 22
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->m2()V

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->o2()V

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->R1()V

    .line 25
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Q1()V

    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Z1()V

    .line 27
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->P1()V

    .line 28
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->d2()V

    .line 29
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->e2()V

    .line 30
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->K1()V

    .line 31
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->I1()V

    .line 32
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->J1()V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 34
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method C2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->f()V
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

.method D1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    .line 2
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/listener/a;->c()V

    return-void
.end method

.method D2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->g1()V

    :cond_0
    return-void
.end method

.method E0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v2, "uid"

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "token"

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "group_id"

    .line 5
    sget-object v2, Lcom/join/mgps/activity/MGGameDetailActivity;->m1:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "game_id"

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->S0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "game_title"

    .line 7
    sget-object v2, Lcom/join/mgps/activity/MGGameDetailActivity;->n1:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "device_id"

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->P0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "version"

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Q0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e1:Lcom/join/mgps/rpc/b;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->Q(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "\u6536\u85cf\u6210\u529f!"

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_1

    const-string v0, "\u6e38\u620f\u91cd\u590d!"

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2711

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    move-result v0

    if-ne v1, v0, :cond_2

    const-string v0, "\u6e38\u620f\u4e0d\u5b58\u5728!"

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u6536\u85cf\u5931\u8d25!"

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method E1(Ljava/lang/String;ZII)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ne p4, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->U(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->T(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method E2()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->m:Landroid/widget/RelativeLayout;

    const v1, 0x7f090a6f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method updateButn() called.status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f080346

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2b

    if-lez v2, :cond_2

    const/16 v0, 0x2b

    :cond_2
    const/16 v2, 0x9

    const v4, 0x7f080345

    const v5, 0x7f080324

    if-ne v0, v2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_3
    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_4
    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_5
    const/16 v2, 0xb

    if-ne v0, v2, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_6
    const/4 v2, 0x5

    const/4 v4, 0x1

    if-eq v0, v2, :cond_15

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_7

    goto/16 :goto_4

    :cond_7
    const-string v2, "%"

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->w2()V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_8
    const/4 v7, 0x3

    if-eq v0, v7, :cond_14

    const/4 v7, 0x6

    if-eq v0, v7, :cond_14

    const/16 v7, 0x1b

    if-ne v0, v7, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v2, 0xa

    if-ne v0, v2, :cond_a

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u5f85\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_a
    if-ne v0, v4, :cond_b

    goto/16 :goto_5

    :cond_b
    const-string v2, "\u5df2\u9884\u7ea6"

    const-string v7, "\u9884\u7ea6"

    const v8, 0x7f110261

    const v9, 0x7f1100d1

    if-ne v0, v3, :cond_f

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->s1(Lcom/join/mgps/dto/DetailResultBeanV3;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v3, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 34
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_16

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v0

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    if-ne v0, v6, :cond_e

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    goto/16 :goto_5

    .line 42
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 43
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    goto/16 :goto_5

    :cond_f
    const/16 v3, 0x30

    if-ne v0, v3, :cond_10

    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 47
    :cond_10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->s1(Lcom/join/mgps/dto/DetailResultBeanV3;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln1/e0;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {v3, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 51
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_16

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v0

    if-ne v0, v4, :cond_13

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    if-ne v0, v6, :cond_13

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    move-result v0

    if-ne v0, v4, :cond_12

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    goto :goto_5

    .line 59
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 60
    :cond_13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    goto :goto_5

    .line 62
    :cond_14
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->w2()V

    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 67
    :cond_15
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t2()V

    .line 68
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/MGGameDetailActivity;->G2(Z)V

    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f080347

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    :goto_5
    return-void
.end method

.method F0(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {p3}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    new-instance p3, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {p3}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v0, "uid"

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "token"

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "group_id"

    .line 5
    invoke-virtual {p3, v0, p1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "game_id"

    .line 6
    invoke-virtual {p3, p1, p2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "device_id"

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->P0:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "version"

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Q0:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e1:Lcom/join/mgps/rpc/b;

    invoke-interface {p1, p3}, Lcom/join/mgps/rpc/b;->z(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "\u5df2\u53d6\u6d88\u8be5\u6536\u85cf!"

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25!"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method F1(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->k1()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method F2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

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

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

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

.method G1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->detial2:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method G2(Z)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkgame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/k1;->c()Lcom/join/mgps/Util/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$b;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity$b;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/k1;->b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/k1$b;)V

    :cond_0
    return-void
.end method

.method H2(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book(I)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.broadcast.bespeak.sussess"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p2

    const-string v1, "gameid"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$e;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/Util/z;->O(Landroid/content/Context;ILl1/a;)Lcom/join/mgps/customview/t;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u6536\u85cf\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    :cond_3
    return-void
.end method

.method M1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method N1(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B0:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCdn_down_switch(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_ver(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_down_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_down_url(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_lowest_ver(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_ver_name(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_count(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count_manual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_count_manual(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_people_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_people_count(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_people_count_manual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_people_count_manual(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCompany_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCompany_name(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComposite_score()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComposite_score(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCrc_sign_id(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_count(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDownloadType(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDescribe(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_local()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_url_local(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count_manual()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_count_manual(I)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_url_remote(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getEdit_recommend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setEdit_recommend(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFight_funv2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFight_funv2(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFight_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFight_type(I)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->setForum_id(J)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setForum_switch(I)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_info_top_pic(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_name(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_upgrade_info(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_upgrade_info_switch(I)V

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIco_remote(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIs_world()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIs_world(I)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIs_network()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIs_network(I)V

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setInfo(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_local()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIco_local(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIs_fight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIs_fight(I)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getLock_sp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setLock_sp(I)V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setOther_down_switch(I)V

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_info()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPic_info(Ljava/util/List;)V

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_screenshot()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_screenshot(I)V

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_num(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_lowest_ver_name(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_lowest_ver(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPackage_name(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPapa_explain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPapa_explain(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPercen_praise()Lcom/join/mgps/dto/PraisePercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPercen_praise(Lcom/join/mgps/dto/PraisePercent;)V

    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPercen_stars()Lcom/join/mgps/dto/StarsPercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPercen_stars(Lcom/join/mgps/dto/StarsPercent;)V

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPercen_stars()Lcom/join/mgps/dto/StarsPercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPercen_stars(Lcom/join/mgps/dto/StarsPercent;)V

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_game(Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_game_switch(I)V

    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_information(Ljava/util/List;)V

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRom_lowest_ver(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSource_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSource_ver_name(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSource_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSource_ver(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSync_memory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSync_memory(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScore_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setScore_count(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScore_count_manual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setScore_count_manual(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setScreenshot_pic(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSharer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSharer(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSign_id(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSize(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setTp_down_url(Ljava/util/List;)V

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTab_page_info()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setTab_page_info(Ljava/util/List;)V

    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setTag_info(Ljava/util/ArrayList;)V

    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setUnzip_size(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVedio_cover_pic(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVedio_url(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVer(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVer_name(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getWorld_shop()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setWorld_shop(I)V

    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getWorld_area()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setWorld_area(I)V

    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_url_remote(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getApk_sign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setApk_sign(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getLast_week_down_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setLast_week_down_count(I)V

    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_ad_info(Ljava/util/List;)V

    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_describe_second()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_describe_second(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_prompt(Ljava/util/List;)V

    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_information_switch(I)V

    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_adinfo_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_adinfo_switch(I)V

    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_switch(I)V

    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_position()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPic_position(I)V

    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_coupon_list(Ljava/util/List;)V

    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_gift_package(Ljava/util/List;)V

    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGift_package_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGift_package_switch(I)V

    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_status(I)V

    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPanel_switch()Lcom/join/mgps/dto/PanelSwitch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPanel_switch(Lcom/join/mgps/dto/PanelSwitch;)V

    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBanner(Ljava/util/List;)V

    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_server_state(Ljava/util/List;)V

    .line 89
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_strategy(Lcom/join/mgps/dto/GameDetialStrategy;)V

    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_no4()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFast_entry_no4(Ljava/util/List;)V

    .line 91
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book_tag(Ljava/util/List;)V

    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_follow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book(I)V

    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_banner_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tpl_two_banner_switch(I)V

    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tpl_two_position(I)V

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getServer_qq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setServer_qq(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlayer_qq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlayer_qq(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFollow_background_img()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFollow_background_img(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setForum_count(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBespeak_switch(I)V

    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBackground_color(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_server_switch(I)V

    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_service_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_service_switch(I)V

    .line 104
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFast_entry_switch(I)V

    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBespeak_count(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_count(I)V

    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getShare_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setShare_url(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V

    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 112
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    .line 114
    div-int/2addr v2, v1

    iput v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->x0:I

    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setLineCount(I)V

    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->g1()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    .line 136
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->q0:Z

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->q1()V

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->k0(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_8

    .line 140
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_8
    return-void
.end method

.method Q0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C2()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->c1:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "112"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v2, "101"

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method S0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->m1()V

    return-void
.end method

.method T0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    .line 5
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 6
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    new-instance v2, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 11
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->d0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->o(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->D(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->O0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->H2(Lcom/join/mgps/dto/ResultMainBean;I)V

    :cond_5
    return-void
.end method

.method public U0(II)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->T(II)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->U(II)V

    :goto_0
    return-void
.end method

.method W0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->c1:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method X0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->detial1:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method afterViews()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/m;->h()Lcom/join/mgps/rpc/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->F:Lcom/join/mgps/rpc/n;

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e1:Lcom/join/mgps/rpc/b;

    .line 6
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E0:Lcom/join/mgps/rpc/e;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->G:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->S0:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Q0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDownloadTaskInfo()V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->x:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/activity/MGGameDetailActivity$t;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$t;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->initData()V

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->q2()V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->x:Landroid/widget/ImageView;

    const v2, 0x7f080ac3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    new-instance v2, Lcom/join/mgps/activity/MGGameDetailActivity$u;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$u;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    move-result-object v3

    move-object v8, v1

    move-object v7, v2

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    .line 26
    :goto_1
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v6

    const-string v10, "normalCustom"

    invoke-virtual/range {v4 .. v10}, Lcom/papa/sim/statistic/p;->k2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/papa/sim/statistic/p;->j2(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, -0x80000000

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 33
    new-instance v1, Lcom/join/android/app/common/manager/b;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/manager/b;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->z0:Lcom/join/android/app/common/manager/b;

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/manager/b;->m(Z)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->z0:Lcom/join/android/app/common/manager/b;

    const v2, 0x7f0603b7

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/z1;->d(Landroid/app/Activity;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/join/mgps/Util/z1;->c(Landroid/app/Activity;I)V

    const v1, 0x1020002

    .line 37
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 39
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 40
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 42
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070f88

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->G2(Z)V

    return-void
.end method

.method b1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->m1()V

    return-void
.end method

.method c1()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_follow()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->T0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c2(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

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
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    return-void
.end method

.method checkDownlodingNumber()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->O()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->r0:I

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->W()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s0:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateLine(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->r0:I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadingPoint(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateNoOpenPoint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method d1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->noFavoriteTips()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c01d9

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    const v1, 0x7f090b5c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    const v2, 0x7f090b7f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 9
    new-instance v2, Lcom/join/mgps/activity/MGGameDetailActivity$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$c;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$d;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->c1()V

    :cond_2
    :goto_0
    return-void
.end method

.method downloadLayout()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method public e1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    move v6, v0

    move-object v5, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    move-object v5, v0

    const/4 v6, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->S0:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    return-object p1
.end method

.method f1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->T(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->u2(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->N1(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    goto :goto_2

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B0:Z

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    goto :goto_2

    .line 14
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B0:Z

    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    goto :goto_2

    .line 16
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B0:Z

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 19
    :goto_1
    throw v0

    .line 20
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->B0:Z

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    :cond_5
    :goto_2
    return-void
.end method

.method g1()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/CommentAllListBean;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->S0:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGamedetialCommentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GamedetialCommentRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->g(Lcom/join/mgps/dto/GamedetialCommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentAllListBean;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K0:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGame_comment_count()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->L0:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->M0:Lcom/join/mgps/dto/GameScore;

    :cond_0
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->v2(Ljava/util/List;)V

    goto :goto_1

    .line 15
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->v2(Ljava/util/List;)V

    goto :goto_1

    .line 16
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->v2(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->v2(Ljava/util/List;)V

    :cond_4
    :goto_1
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
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    return-void
.end method

.method h1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->P0:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v2, "uid"

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "token"

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "current_game_id"

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->S0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "page"

    .line 9
    iget v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h1:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "device_id"

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->P0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "version"

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Q0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e1:Lcom/join/mgps/rpc/b;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->O(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->F2()V

    .line 15
    iget v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->W0()V

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Q0(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_2

    .line 19
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    const-string v0, "Token\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->o1()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C2()V

    goto :goto_0

    :cond_3
    const-string v0, "\u7f51\u7edc\u51fa\u9519\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 24
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method i1(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v2

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 15
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_code(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_gift_package(Ljava/util/List;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->s2(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-direct {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->G:Lcom/join/mgps/Util/IntentDateBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/Util/IntentToDetialBean;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/Util/IntentToDetialBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p0:Lcom/join/mgps/Util/IntentToDetialBean;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentToDetialBean;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p0:Lcom/join/mgps/Util/IntentToDetialBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentToDetialBean;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIco_remote(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p0:Lcom/join/mgps/Util/IntentToDetialBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentToDetialBean;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDescribe(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_name(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->q0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0238

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->F0:Landroid/os/Handler;

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I0:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H0:Ljava/util/List;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBeanV3;Landroid/os/Handler;Landroid/widget/RelativeLayout;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$a;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->Y(Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;)V

    return-void
.end method

.method public j1()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w0:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x5

    iget v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w0:I

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameCommentListRequestBean(IIILjava/lang/String;[I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0
.end method

.method k1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E0:Lcom/join/mgps/rpc/e;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method l1(Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f11044d

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    const-string v4, "uid"

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "token"

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "coupon_id"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->F:Lcom/join/mgps/rpc/n;

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/n;->a(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f11044f

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameVoucherBean;

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_id()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/AccountGetVoucherResult;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountGetVoucherResult;->getCoupon_code()Lcom/join/mgps/dto/AccountGetVoucherResultBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->getCoupon_id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    .line 12
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GameVoucherBean;->setGame_coupon_status(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->D1()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 18
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->n1()V

    return-void
.end method

.method m1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateFromMarket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMGMainActivity2Front(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method n1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A0:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A0:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->A0:Lcom/join/mgps/dialog/x0;

    :cond_0
    return-void
.end method

.method o1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->a1()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Z0()V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->Y0()V

    .line 7
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method onEventMainThread() called.status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    const-string v2, "%"

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_8

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_6

    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    if-eq p1, v3, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_6

    const/16 v1, 0xb

    if-eq p1, v1, :cond_4

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_6

    const/16 v1, 0x30

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->p:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->startLineAnimation()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    .line 22
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/join/mgps/activity/MGGameDetailActivity;->o1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h1:I

    .line 4
    sput-boolean v1, Lcom/join/mgps/activity/MGGameDetailActivity;->o1:Z

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->h1()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->I:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->D2()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0809af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->o0:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_3
    if-eqz v0, :cond_7

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_7

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    :cond_7
    return-void
.end method

.method p1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0546

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->c2(F)V

    .line 3
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    .line 4
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$g;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$g;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const v1, 0x7f0908e7

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/XListView2;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    .line 11
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$h;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$h;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$i;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$i;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    const v1, 0x7f09117a

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Z0:Landroid/widget/TextView;

    const v1, 0x7f09094b

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->W0:Landroid/widget/LinearLayout;

    const v1, 0x7f09095e

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->U0:Landroid/widget/LinearLayout;

    const v1, 0x7f090921

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->V0:Landroid/widget/LinearLayout;

    const v1, 0x7f09058d

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->X0:Landroid/widget/EditText;

    const v1, 0x7f0910fe

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Y0:Landroid/widget/TextView;

    const v1, 0x7f090918

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->a1:Landroid/widget/LinearLayout;

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->V0:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$j;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->a1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$l;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$l;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->Y0:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$m;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$m;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$v;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->c1:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->b1:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0294

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->T0:Landroid/widget/PopupWindow;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method p2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getShare_url()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    return-void
.end method

.method q1()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method instalButtomButn() called.status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    if-eq v0, v3, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->T0(I)V

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v5, 0x2b

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    const/16 v0, 0x2b

    .line 9
    :cond_4
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_5

    return-void

    :cond_5
    if-eqz v4, :cond_7

    if-eq v0, v2, :cond_6

    const/16 v6, 0xa

    if-ne v0, v6, :cond_7

    .line 10
    :cond_6
    invoke-static {v4}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_7

    :cond_7
    const/16 v6, 0xc

    if-eq v0, v6, :cond_20

    const/16 v6, 0x1b

    if-ne v0, v6, :cond_8

    goto/16 :goto_8

    :cond_8
    const/16 v6, 0xd

    if-ne v0, v6, :cond_9

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_9
    const/4 v6, 0x5

    if-ne v0, v6, :cond_a

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    const-string v1, "2"

    invoke-static {v0, v4, v1}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_b

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_7

    :cond_b
    const/16 v7, 0x9

    const-string v8, ""

    if-ne v0, v7, :cond_13

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_d

    goto/16 :goto_7

    .line 24
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->z3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_7

    .line 25
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_2

    .line 26
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 28
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    if-ne v0, v6, :cond_11

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 30
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t1()V

    goto/16 :goto_7

    :cond_12
    :goto_2
    return-void

    :cond_13
    const/16 v2, 0xb

    if-ne v2, v0, :cond_14

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_14
    const-string v2, "size"

    if-ne v5, v0, :cond_1b

    .line 41
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1a

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 46
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    if-ne v0, v6, :cond_17

    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    .line 49
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_3

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    if-ne v0, v6, :cond_19

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 53
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    move-result v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 54
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t1()V

    .line 55
    :cond_1a
    :goto_4
    filled-new-array {v8, v2, v8, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setTextArray([Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setIsStop(Z)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->o()V

    goto/16 :goto_7

    .line 59
    :cond_1b
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->R0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz v0, :cond_1f

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 64
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_5

    .line 66
    :cond_1d
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v0

    if-ne v0, v6, :cond_1e

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_5

    .line 68
    :cond_1e
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    move-result v5

    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    move-result v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 69
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->t1()V

    .line 70
    :cond_1f
    :goto_6
    filled-new-array {v8, v2, v8, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setTextArray([Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setIsStop(Z)V

    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->o()V

    .line 74
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    :cond_20
    :goto_8
    return-void
.end method

.method r1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method r2(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    .line 5
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v1, 0x7f0c0563

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v3, 0x7f090886

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v3, 0x7f090876

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v4, 0x7f09100a

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v5, 0x7f090db2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 15
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v6, 0x7f090db1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 16
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v7, 0x7f090371

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 17
    iget-object v7, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v8, 0x7f090a6f

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "\u9886\u53f7\u6210\u529f"

    .line 18
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/x;->u(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v5, Lcom/join/mgps/activity/MGGameDetailActivity$n;

    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity$n;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance p1, Lcom/join/mgps/activity/MGGameDetailActivity$o;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$o;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x2b

    if-lez v1, :cond_2

    const/16 p1, 0x2b

    :cond_2
    if-eqz p1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 35
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_6
    new-instance p1, Lcom/join/mgps/activity/MGGameDetailActivity$p;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$p;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->f1()V

    return-void
.end method

.method s1(Lcom/join/mgps/dto/DetailResultBeanV3;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method s2(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v1, 0x7f0c0563

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v4, 0x7f090db2

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v5, 0x7f090a6f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    const v6, 0x7f090db1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u9886\u53f7\u6210\u529f"

    .line 12
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v5, Lcom/join/mgps/activity/MGGameDetailActivity$q;

    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity$q;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$r;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$r;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v1

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 19
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v1, "\u5373\u5c06\u5f00\u653e"

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->K:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    const/16 v3, 0x2b

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/16 v5, 0x2b

    :cond_3
    if-eqz v5, :cond_5

    const/4 v1, 0x5

    if-eq v5, v1, :cond_4

    const/16 v1, 0x9

    if-eq v5, v1, :cond_5

    if-eq v5, v3, :cond_5

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 31
    :cond_6
    :goto_0
    new-instance p1, Lcom/join/mgps/activity/MGGameDetailActivity$s;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$s;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->y0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->d:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method startLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f080763

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    const v1, 0x7f010030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u0:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u0:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->u0:Landroid/view/animation/Animation;

    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$f;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method stopLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f080765

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method t1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->H:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadCenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "detailDownload4.2.0.6"

    .line 2
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method t2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->l:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method u1(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->E2()V

    return-void
.end method

.method u2(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->g:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_describe_second()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->t0:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f0(I)V
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

.method updateDownloadView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->C0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D:Lcom/join/mgps/customview/CustomerDownloadView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->D:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const v0, 0x7f070ddc

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-ge p1, v4, :cond_0

    .line 1
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const v3, 0x7f080888

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070991

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v0, 0x40e00000    # 7.0f

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v5, 0x4

    .line 12
    invoke-virtual {v4, v5, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const v3, 0x7f0807cd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateLine(I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->stopLineAnimation()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->startLineAnimation()V

    :goto_0
    return-void
.end method

.method updateNoOpenPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->stopLineAnimation()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method v1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->D2()V

    return-void
.end method

.method v2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCommitDataBeanList(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->C1()V

    return-void
.end method

.method w1(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->e1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E0:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->F1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->U0(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method w2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->m:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method x1(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity_;->k2(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    const-string v1, "0"

    .line 5
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->n0:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method x2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->N0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->Z(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->N0:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->N0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method y1(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    move-result p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->e1(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->E0:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->F1(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->U0(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->E1(Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method y2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->O0:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->J:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->b0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->O0:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->O0:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method z1(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join,mgps.sim.sdkgamePayfinish"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method z2()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method
