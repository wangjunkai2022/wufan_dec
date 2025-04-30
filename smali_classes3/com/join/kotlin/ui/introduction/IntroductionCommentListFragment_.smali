.class public final Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;
.super Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.source "IntroductionCommentListFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private contentView_:Landroid/view/View;

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showNoticeDetail(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1001(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updateCommentInput()V

    return-void
.end method

.method static synthetic access$101(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showMain(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1101(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method

.method static synthetic access$1301(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadCommentDetail(I)V

    return-void
.end method

.method static synthetic access$1401(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    return-void
.end method

.method static synthetic access$1501(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    return-void
.end method

.method static synthetic access$1601(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    return-void
.end method

.method static synthetic access$1701(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commitComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1801(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method

.method static synthetic access$1901(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method

.method static synthetic access$201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$301(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    return-void
.end method

.method static synthetic access$501(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$601(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoadingDetail()V

    return-void
.end method

.method static synthetic access$701(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    return-void
.end method

.method static synthetic access$801(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingView()V

    return-void
.end method

.method static synthetic access$901(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingViewDetail()V

    return-void
.end method

.method public static builder()Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;

    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$FragmentBuilder_;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method commitComment(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$25;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$25;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$12;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$12;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method hideLoadingDetail()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$14;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$14;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public loadCommentDetail(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$21;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$21;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method loadData(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$22;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$22;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method loadDataDetail(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$23;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$23;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method loadDataDetailFromNotice(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$24;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$24;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$27;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$27;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$26;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$26;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01fd

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->contentView_:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    .line 8
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    .line 10
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    .line 12
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 14
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->textView2:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 7

    const v0, 0x7f090da9

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    const v0, 0x7f0909b6

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    const v0, 0x7f0909b1

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    const v0, 0x7f091192

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f09042f

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const v0, 0x7f0907e0

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    const v0, 0x7f090d58

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d59

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    const v0, 0x7f090da8

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f090f6e

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->textView2:Landroid/widget/TextView;

    const v0, 0x7f090925

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    const v0, 0x7f090e21

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e22

    .line 15
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090d11

    .line 16
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090d12

    .line 17
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0907ee

    .line 18
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0910e2

    .line 19
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 20
    iget-object v5, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 21
    new-instance v6, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$1;

    invoke-direct {v6, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 22
    new-instance v5, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$2;

    invoke-direct {v5, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 23
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$3;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 24
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$4;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$4;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 25
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$5;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$5;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 26
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$6;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$6;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 27
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$7;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$7;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->aftervidew()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showDetail(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$10;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showEmpty()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$15;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$15;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$11;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$11;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadFailedDetail(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$13;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$13;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$16;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$16;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadingViewDetail()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$17;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$17;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMain(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showNoticeDetail(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$8;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$19;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$19;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateCommentInput()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$18;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$18;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
