.class public Lcom/join/mgps/activity/ForumActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/customview/ForumBaseHeaderView$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0407
.end annotation


# static fields
.field public static D:I = 0x2


# instance fields
.field A:Landroid/widget/BaseAdapter;

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation
.end field

.field C:[Ljava/lang/String;

.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/ForumGroupHeaderView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/customview/SlidingTabLayout4;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/Button;

.field m:Lcom/join/mgps/Util/p2$a;

.field n:Lcom/join/mgps/rpc/h;

.field o:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field p:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q:Lcom/join/mgps/fragment/y;

.field r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;",
            ">;"
        }
    .end annotation
.end field

.field t:Lcom/join/mgps/adapter/x;

.field private u:I

.field v:I

.field w:Lcom/join/mgps/customview/g;

.field private x:I

.field y:Lcom/join/mgps/customview/h;

.field z:Lcom/join/mgps/customview/WrapContentListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumActivity;->u:I

    return p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumActivity;->u:I

    return p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    return-void
.end method

.method private V0(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_name()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v3, Lcom/join/mgps/dto/RecommenGroupClassify;

    invoke-direct {v3}, Lcom/join/mgps/dto/RecommenGroupClassify;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RecommenGroupClassify;->setGid(I)V

    .line 10
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RecommenGroupClassify;->setGname(Ljava/lang/String;)V

    .line 11
    new-instance v2, Lcom/join/mgps/adapter/x$a;

    iget v4, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    iget-object v5, p0, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 12
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, p1}, Lcom/join/mgps/fragment/o0;->X(ILjava/lang/String;Lcom/join/mgps/dto/RecommenGroupClassify;I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method D0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public I0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/posting/PostingActivity_;->U1(Landroid/content/Context;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->g(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->f(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->a(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object v0

    const/16 v1, 0x4444

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->startForResult(I)Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method K0(Z)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setJoinState(Z)V

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->o0(Z)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    :goto_1
    return-void
.end method

.method L0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity$d;-><init>(Lcom/join/mgps/activity/ForumActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/ForumActivity$c;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/ForumActivity$c;-><init>(Lcom/join/mgps/activity/ForumActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumActivity$e;-><init>(Lcom/join/mgps/activity/ForumActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->R0()V

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method M0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->n:Lcom/join/mgps/rpc/h;

    iget v3, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-interface {v2, v3, v0, v1}, Lcom/join/mgps/rpc/h;->i(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->K0(Z)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1100e3

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const v0, 0x7f110206

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method N0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->C:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->C:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5e16"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c01e7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7
    new-instance v3, Lcom/join/mgps/customview/h;

    invoke-direct {v3, p0}, Lcom/join/mgps/customview/h;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    .line 8
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0912de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/WrapContentListView;

    iput-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->z:Lcom/join/mgps/customview/WrapContentListView;

    .line 12
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0c01e8

    const v4, 0x7f090acd

    iget-object v5, p0, Lcom/join/mgps/activity/ForumActivity;->C:[Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->A:Landroid/widget/BaseAdapter;

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->z:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->z:Lcom/join/mgps/customview/WrapContentListView;

    new-instance v3, Lcom/join/mgps/activity/ForumActivity$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ForumActivity$a;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07100d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->C:[Ljava/lang/String;

    array-length v2, v2

    mul-int v1, v1, v2

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v3, v0, v1}, Lcom/join/mgps/customview/h;->showAsDropDown(Landroid/view/View;II)V

    return-void

    .line 18
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    invoke-virtual {v0}, Lcom/join/mgps/customview/h;->dismiss()V

    :cond_5
    return-void
.end method

.method O0()Lcom/join/mgps/fragment/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->q:Lcom/join/mgps/fragment/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/join/mgps/fragment/y;->a()Lcom/join/mgps/fragment/u0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public P0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method Q0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->n:Lcom/join/mgps/rpc/h;

    iget v4, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-interface {v3, v4, v1, v2}, Lcom/join/mgps/rpc/h;->u0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->e1(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f110206

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V

    :goto_0
    return-void
.end method

.method R0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->l:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->u:I

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/activity/ForumActivity;->u:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public S0()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_forum_bean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/ForumBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumActivity;->o:I
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

.method T0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumActivity;->V0(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/x;->d(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-virtual {v2}, Lcom/join/mgps/adapter/x;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->g()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/x;->getCount()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    new-instance v1, Lcom/join/mgps/activity/ForumActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$f;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setDraggableView(Landroid/view/View;)V

    .line 17
    new-instance v0, Lcom/join/mgps/fragment/z;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/fragment/z;-><init>(Landroidx/viewpager/widget/ViewPager;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->q:Lcom/join/mgps/fragment/y;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$g;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$h;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setOnFlingOverListener(Lru/noties/scrollable/j;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    new-instance v1, Lcom/join/mgps/activity/ForumActivity$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$i;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->w(Lru/noties/scrollable/k;)V

    return-void
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->q()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method W0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->n:Lcom/join/mgps/rpc/h;

    iget v3, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-interface {v2, v3, v0, v1}, Lcom/join/mgps/rpc/h;->e0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumActivity;->K0(Z)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f110174

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const v0, 0x7f110206

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumActivity;->D0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method X0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->Q0()V

    return-void
.end method

.method public Y0(I)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->x:I

    if-ltz v1, :cond_1

    :cond_0
    if-gez p1, :cond_2

    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->x:I

    if-lez v1, :cond_2

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->m:Lcom/join/mgps/Util/p2$a;

    invoke-virtual {v1}, Lcom/join/mgps/Util/p2$a;->g()V

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumActivity;->x:I

    .line 4
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->x:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/join/mgps/activity/ForumActivity;->x:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->m:Lcom/join/mgps/Util/p2$a;

    invoke-virtual {p1}, Lcom/join/mgps/Util/p2$a;->h()I

    move-result p1

    if-le v1, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->m:Lcom/join/mgps/Util/p2$a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/p2$a;->l(Z)V

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/ForumActivity;->x:I

    if-gez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->m:Lcom/join/mgps/Util/p2$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/p2$a;->l(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method Z0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    iget v1, p0, Lcom/join/mgps/activity/ForumActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/o0;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/fragment/o0;->Q()V

    return-void
.end method

.method a1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->X0()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->n:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->S0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->a:Landroid/widget/TextView;

    const-string v2, "\u5c0f\u7ec4\u4e3b\u9875"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/join/mgps/Util/p2$a;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumActivity;->l:Landroid/widget/Button;

    invoke-direct {v0, v2}, Lcom/join/mgps/Util/p2$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->m:Lcom/join/mgps/Util/p2$a;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setmOnMeasureHeight(Lcom/join/mgps/customview/ForumBaseHeaderView$a;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    new-instance v3, Lcom/join/mgps/activity/ForumActivity$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/ForumActivity$b;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v0, v3}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 12
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumActivity;->L0(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->X0()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method b1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->q:Lcom/join/mgps/fragment/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/join/mgps/fragment/y;->a()Lcom/join/mgps/fragment/u0;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/fragment/o0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->q:Lcom/join/mgps/fragment/y;

    invoke-interface {v0}, Lcom/join/mgps/fragment/y;->a()Lcom/join/mgps/fragment/u0;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/o0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/o0;->o0()V

    :cond_0
    return-void
.end method

.method back_image()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->p:Ljava/lang/String;

    const-string v1, "discovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method c1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/g;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1, v1}, Lcom/join/mgps/customview/g;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/ForumActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumActivity$j;-><init>(Lcom/join/mgps/activity/ForumActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/g;->d(Lcom/join/mgps/customview/g$b;)V

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x42fc0000    # 126.0f

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070485

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    iget-object v3, p0, Lcom/join/mgps/activity/ForumActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->w:Lcom/join/mgps/customview/g;

    sget v1, Lcom/join/mgps/activity/ForumActivity;->D:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/g;->c(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method d1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method e1(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    move-result v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ForumActivity;->v:I

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setData(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getPost_type()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getPost_type()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getPost_type()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getType()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getType()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->b1()V

    return-void

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getType()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->T0()V

    return-void
.end method

.method f1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->C0(Landroid/content/Context;I)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->h:Lcom/join/mgps/customview/SlidingTabLayout4;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->f:Lru/noties/scrollable/ScrollableLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    :cond_0
    return-void
.end method

.method public g1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_0
    return-void
.end method

.method getType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x4444

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_1

    const-string p2, "postingType"

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/join/mgps/activity/ForumActivity;->s:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->i:Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->b1()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/android/app/component/video/a;->g0(Landroid/app/Activity;)Z

    move-result v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    iget v2, p0, Lcom/join/mgps/activity/ForumActivity;->u:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/fragment/o0;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/fragment/o0;->onBackPressedMy()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-void

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity;->p:Ljava/lang/String;

    const-string v1, "discovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090a21

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupMemberActivity(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0904e7

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity;->g:Lcom/join/mgps/customview/ForumGroupHeaderView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->M0()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->d1()V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumActivity;->W0()V

    :cond_3
    :goto_0
    return-void
.end method
