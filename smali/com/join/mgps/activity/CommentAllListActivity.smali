.class public Lcom/join/mgps/activity/CommentAllListActivity;
.super Lcom/BaseAppCompatActivity;
.source "CommentAllListActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/CommentAllListAdapter$h;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00fa
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/join/mgps/customview/HistogramView;

.field private F:Lcom/join/mgps/customview/HistogramView;

.field private G:Lcom/join/mgps/customview/HistogramView;

.field private H:Lcom/join/mgps/customview/HistogramView;

.field private I:Lcom/join/mgps/customview/HistogramView;

.field private J:I

.field private K:Z

.field private a:Landroid/content/Context;

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
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

.field j:Lcom/join/mgps/rpc/e;

.field k:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field l:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:F
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private n0:Lcom/join/mgps/dto/AccountBean;

.field o:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private o0:I

.field p:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private p0:Ljava/lang/String;

.field q:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private q0:Lcom/join/mgps/dto/CommentBaseBean;

.field r:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private r0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;"
        }
    .end annotation
.end field

.field s:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private t0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field u:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private u0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/view/View;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Lcom/join/mgps/customview/MStarBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->K:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->r0:Ljava/util/List;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/CommentAllListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->K:Z

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/CommentAllListActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    return p1
.end method

.method private H0(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method


# virtual methods
.method F0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->isTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    sget-object v3, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;-><init>(Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    sget-object v3, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;-><init>(Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public G0(II)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->i(II)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->j(II)V

    :goto_0
    return-void
.end method

.method I0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->K:Z

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->K0()Lcom/join/mgps/dto/RequestCommentAllListArgs;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->j:Lcom/join/mgps/rpc/e;

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/e;->b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentAllListActivity;->N0(Lcom/join/mgps/dto/CommentResponse;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentAllListBean;->getScoring_details()Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentAllListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommentAllListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentAllListBean;->getGeneral_comment()Ljava/util/List;

    move-result-object v1

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->O0(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 14
    new-instance v2, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 15
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 16
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 17
    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 18
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    if-ne v2, v0, :cond_3

    .line 21
    new-instance v2, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 22
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 23
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 24
    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 25
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_5

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 29
    iget v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez v2, :cond_4

    .line 30
    new-instance v2, Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 31
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_hot(I)V

    .line 32
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setTitle(Z)V

    .line 33
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 34
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommentBaseBean;

    .line 37
    iget v3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPn(I)V

    .line 38
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/CommentAllListActivity;->P0(Ljava/util/List;)V

    goto :goto_1

    .line 40
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLodingFailed()V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 43
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLodingFailed()V

    :goto_1
    return-void
.end method

.method public J0(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p0:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->n0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o0:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->n0:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p0:Ljava/lang/String;

    iget v6, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o0:I

    move-object v4, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    return-object p1
.end method

.method public K0()Lcom/join/mgps/dto/RequestCommentAllListArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->n0:Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p0:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->n0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o0:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o0:I

    iget-object v6, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p0:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestCommentAllList(IILjava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RequestCommentAllListArgs;

    move-result-object v0

    return-object v0
.end method

.method L0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->j:Lcom/join/mgps/rpc/e;

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
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->k:Lcom/join/mgps/pref/PrefDef_;

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

.method M0(Ljava/lang/String;ZII)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ne p4, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/CommentAllListAdapter;->j(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/CommentAllListAdapter;->i(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method N0(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->L0()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method O0(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 18
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/join/mgps/customview/HistogramView;

    .line 1
    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->E:Lcom/join/mgps/customview/HistogramView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->F:Lcom/join/mgps/customview/HistogramView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->G:Lcom/join/mgps/customview/HistogramView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->H:Lcom/join/mgps/customview/HistogramView;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    iget-object v3, v0, Lcom/join/mgps/activity/CommentAllListActivity;->I:Lcom/join/mgps/customview/HistogramView;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "#F47500"

    const-string v9, "#FFA423"

    const-string v10, "#FFB53D"

    const-string v11, "#FBCD36"

    const-string v12, "#E4DECA"

    .line 2
    filled-new-array {v3, v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "#.0"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_score()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 5
    iget-object v12, v0, Lcom/join/mgps/activity/CommentAllListActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v9, v0, Lcom/join/mgps/activity/CommentAllListActivity;->z:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_stars()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    new-array v9, v1, [D

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score5()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v9, v4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score4()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v9, v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score3()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v9, v6

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v9, v7

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v9, v8

    const-wide/16 v5, 0x0

    move-wide v10, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    .line 12
    aget-wide v12, v9, v7

    .line 13
    aget-wide v12, v9, v7

    cmpl-double v14, v12, v10

    if-lez v14, :cond_0

    .line 14
    aget-wide v10, v9, v7

    move v8, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->D:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getP_count()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\u4eba"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getP_count()I

    move-result v7

    if-gtz v7, :cond_2

    .line 17
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->z:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v7, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 18
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->C:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v7, v0, Lcom/join/mgps/activity/CommentAllListActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    :goto_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/high16 v13, 0x41200000    # 10.0f

    .line 23
    invoke-direct {v0, v0, v13}, Lcom/join/mgps/activity/CommentAllListActivity;->H0(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v1, :cond_6

    .line 24
    aget-object v13, v2, v12

    invoke-virtual {v13, v4}, Lcom/join/mgps/customview/HistogramView;->setAnim(Z)V

    .line 25
    aget-wide v13, v9, v12

    cmpl-double v15, v13, v5

    if-nez v15, :cond_3

    .line 26
    aget-object v13, v2, v12

    invoke-virtual {v13, v5, v6}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    goto :goto_3

    :cond_3
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ne v12, v8, :cond_4

    .line 27
    aget-object v15, v2, v12

    invoke-virtual {v15, v13, v14}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    goto :goto_3

    .line 28
    :cond_4
    aget-wide v15, v9, v12

    cmpl-double v17, v10, v15

    if-nez v17, :cond_5

    .line 29
    aget-object v15, v2, v12

    invoke-virtual {v15, v13, v14}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    goto :goto_3

    .line 30
    :cond_5
    aget-object v13, v2, v12

    aget-wide v14, v9, v12

    div-double/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 31
    :goto_3
    aget-object v13, v2, v12

    aget-object v14, v3, v12

    invoke-virtual {v13, v14}, Lcom/join/mgps/customview/HistogramView;->setRateBackgroundColor(Ljava/lang/String;)V

    .line 32
    aget-object v13, v2, v12

    invoke-virtual {v13, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    aget-object v13, v2, v12

    invoke-virtual {v13, v4}, Lcom/join/mgps/customview/HistogramView;->setOrientation(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method P0(Ljava/util/List;)V
    .locals 4
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
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->u0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->u0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->F0(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->R0()V

    return-void
.end method

.method Q0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->g()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->e(F)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->r:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q0:Lcom/join/mgps/dto/CommentBaseBean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentCreatActivity_;->U0(Landroid/content/Context;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->j(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->r:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->a(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/CommentCreatActivity_$i;->g(I)Lcom/join/mgps/activity/CommentCreatActivity_$i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_1
    return-void
.end method

.method R0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->K:Z

    return-void
.end method

.method afterView()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->m()Lcom/join/mgps/rpc/impl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->j:Lcom/join/mgps/rpc/e;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u70b9\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->n0:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o0:I

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p0:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f090b69

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->E:Lcom/join/mgps/customview/HistogramView;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0911ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->F:Lcom/join/mgps/customview/HistogramView;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f090fee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->G:Lcom/join/mgps/customview/HistogramView;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f090531

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->H:Lcom/join/mgps/customview/HistogramView;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0904c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->I:Lcom/join/mgps/customview/HistogramView;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->z:Lcom/join/mgps/customview/MStarBar;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0902af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->C:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0902ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->B:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->D:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f0903ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->A:Landroid/widget/TextView;

    const-string v1, "\u5199\u8bc4\u8bba"

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f090edd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->w:Landroid/widget/LinearLayout;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f090c2b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->x:Landroid/widget/LinearLayout;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    const v1, 0x7f090602

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/CommentAllListActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentAllListActivity$a;-><init>(Lcom/join/mgps/activity/CommentAllListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->z:Lcom/join/mgps/customview/MStarBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->z:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->showLoding()V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->I0()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->u0:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t0:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter;

    iget-object v3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    iget v4, p0, Lcom/join/mgps/activity/CommentAllListActivity;->o0:I

    iget-object v5, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t0:Ljava/util/List;

    iget-object v6, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q:Ljava/lang/String;

    iget v7, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s:I

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/adapter/CommentAllListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;ILcom/join/mgps/adapter/CommentAllListAdapter$h;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s0:Lcom/join/mgps/adapter/CommentAllListAdapter;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CommentAllListActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentAllListActivity$b;-><init>(Lcom/join/mgps/activity/CommentAllListActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CommentAllListActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentAllListActivity$c;-><init>(Lcom/join/mgps/activity/CommentAllListActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

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

.method public d(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

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

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->J0(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->j:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->N0(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->G0(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public e(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

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

    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->J0(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/mgps/activity/CommentAllListActivity;->j:Lcom/join/mgps/rpc/e;

    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/e;->l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result p3

    const/16 v1, 0x321

    if-ne p3, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentAllListActivity;->N0(Lcom/join/mgps/dto/CommentResponse;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p3

    if-eq p3, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->G0(II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/join/mgps/activity/CommentAllListActivity;->M0(Ljava/lang/String;ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public f(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->t:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->r:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->u:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->s:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->p:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public onChangeComment(Lcom/join/mgps/event/h;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentAllListActivity;->J:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->I0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->r0:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentAllListActivity;->R0()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
