.class public Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.super Landroidx/fragment/app/Fragment;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;,
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;,
        Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01fd
.end annotation


# instance fields
.field private commentId:I

.field commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

.field context:Landroid/content/Context;

.field private dataChanged:Z

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private detailPage:I

.field duration:I

.field et_content:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private fromNotice:Z

.field gameId:Ljava/lang/String;

.field isRequestDisPraise:Z

.field isRequestPraise:Z

.field isVideo:Z

.field iv_back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_empty:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile_detail:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout_detail:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mFragmentCallback:Ll1/e;

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

.field private mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

.field private page:I

.field pid:I

.field posterId:I

.field regText:Ljava/lang/String;

.field reportUrl:Ljava/lang/String;

.field rl_comment_detail:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_comment_list:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/j;

.field rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private showDetail:Z

.field textView2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isVideo:Z

    .line 4
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->dataChanged:Z

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 6
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    const-string v0, "(\\d{0,2}:[0-5][0-9]:[0-5][0-9])|([0-5][0-9]:[0-5][0-9])"

    .line 8
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->regText:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 10
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    return p0
.end method

.method static synthetic access$008(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    return v0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    return p0
.end method

.method static synthetic access$208(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    return v0
.end method

.method static synthetic access$300(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    return p0
.end method

.method private getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validTime(Ljava/lang/String;I)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3
    array-length v0, p1

    if-gtz v0, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    array-length v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 5
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    add-int/2addr v0, p1

    goto :goto_5

    .line 9
    :cond_4
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    .line 10
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 12
    :goto_2
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 13
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 14
    :goto_3
    aget-object v5, p1, v2

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 15
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    add-int/2addr v0, v4

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-lez v0, :cond_9

    if-gt v0, p2, :cond_9

    const/4 v1, 0x1

    :cond_9
    :goto_6
    return v1
.end method


# virtual methods
.method aftervidew()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 6
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    .line 7
    iput v1, v0, Li1/a$a;->f:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f86

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Li1/a$b;->d:I

    .line 9
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Li1/a$a;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$k;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$3;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$g;)V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    if-nez v0, :cond_1

    .line 14
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;

    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    :cond_1
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    .line 19
    iget-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    if-eqz v2, :cond_2

    .line 20
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v3, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 26
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    :cond_2
    return-void
.end method

.method commitComment(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsReplyArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsReplyArgs;-><init>()V

    .line 3
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setPid(Ljava/lang/Integer;)V

    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setUid(Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setContent(Ljava/lang/String;)V

    .line 6
    iget p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->posterId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setRuid(Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getUid()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestBbsReplyArgs;->setRuid(Ljava/lang/Integer;)V

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/j;->C(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updateCommentInput()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    :goto_0
    return-void
.end method

.method getReportUrl(II)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "&resourceId="

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&resourceType=COMMENT&ruid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?resourceType=COMMENT&ruid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method hideLoadingDetail()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public loadCommentDetail(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingView()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 4
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 7
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 8
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->H(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    :goto_0
    return-void
.end method

.method loadData(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingView()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 4
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 7
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->s(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoading()V

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showMain(Ljava/util/List;Z)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed()V

    :goto_1
    return-void
.end method

.method loadDataDetail(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingViewDetail()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 4
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 7
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 8
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->H(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoadingDetail()V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    :goto_0
    return-void
.end method

.method loadDataDetailFromNotice(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadingViewDetail()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsCommentListArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;-><init>()V

    .line 4
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPid(Ljava/lang/Integer;)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setPage(Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setUid(Ljava/lang/Integer;)V

    .line 7
    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsCommentListArgs;->setCommentId(Ljava/lang/Integer;)V

    .line 8
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->v(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->hideLoadingDetail()V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showNoticeDetail(Ljava/util/List;Z)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showNoticeDetail(Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail()V

    :goto_0
    return-void
.end method

.method public matchText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->duration:I

    if-lez v0, :cond_4

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 3
    invoke-static {p3, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/16 v2, 0x21

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p3, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .line 7
    invoke-virtual {p3, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    .line 8
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 9
    iget v5, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->duration:I

    invoke-direct {p0, v4, v5}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->validTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#3392FF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v5, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance v5, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;

    invoke-direct {v5, p0, v4}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_3

    .line 12
    invoke-static {p4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p3

    const-string p6, "#82888E"

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 14
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p4, p3

    if-ltz p3, :cond_2

    .line 15
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    :cond_2
    invoke-static {p5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u56de\u590d "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    .line 18
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    if-ltz p2, :cond_3

    .line 19
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p5

    invoke-direct {p4, p5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p4, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public notifyDataChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->dataChanged:Z

    return-void
.end method

.method onBackClick()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0907e0
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->clear()V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 12
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 13
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    return-void
.end method

.method onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 5
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 7
    new-instance v1, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;-><init>()V

    const-string v2, "COMMENT"

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 11
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/j;->l(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    .line 14
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0, v0, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    goto :goto_0

    .line 19
    :cond_2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110206

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 21
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestDisPraise:Z

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 5
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 7
    new-instance v2, Lcom/join/mgps/dto/RequestBbsPraiseArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;-><init>()V

    const-string v3, "COMMENT"

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 10
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setRuid(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 12
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/j;->y(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p1

    .line 15
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0, v1, p3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v3, Lcom/papa/sim/statistic/Event;->CommentClickLike:Lcom/papa/sim/statistic/Event;

    const-string v4, ""

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->gameId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110206

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 23
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isRequestPraise:Z

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method onClickComment()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0910e2
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u8bc4\u8bba/\u56de\u590d\u5185\u5bb9"

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commitComment(Ljava/lang/String;)V

    return-void
.end method

.method onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c02e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09115b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0710e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 11
    new-instance p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;

    invoke-direct {p1, p0, v2, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Landroid/widget/PopupWindow;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method onClockClick()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0907ee
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Ll1/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Ll1/e;

    invoke-interface {v0, p0}, Ll1/e;->u0(Landroidx/fragment/app/Fragment;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    const-string v3, "\u8bc4\u8bba"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    .line 9
    iput-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->clear()V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->page:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadData(I)V

    return-void
.end method

.method relodingimagDetail()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090d12
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    :goto_0
    return-void
.end method

.method public setCommentId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->duration:I

    return-void
.end method

.method public setFragmentCallback(Ll1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Ll1/e;

    return-void
.end method

.method public setFromNotice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->fromNotice:Z

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method setNetworkDetail()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090e22
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public setParams(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->pid:I

    .line 2
    iput p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->posterId:I

    .line 3
    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->reportUrl:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isVideo:Z

    return-void
.end method

.method public showCommentDetail(Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentListBean:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->iv_back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_list:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplies()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u56de\u590d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 10
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/BbsCommentListBean;->setReplay(Z)V

    .line 11
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {v1, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 12
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showDetail:Z

    .line 13
    iget p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    return-void
.end method

.method showDetail(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    :cond_2
    if-nez p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    :cond_3
    :goto_1
    return-void
.end method

.method showEmpty()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadFailedDetail()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showLoadFailedDetail(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailedDetail(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->ll_empty:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method showLoadingViewDetail()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rl_comment_detail:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_layout_detail:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loding_faile_detail:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method showMain(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->datas:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->datas:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->datas:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd()V

    if-nez p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    :cond_2
    :goto_1
    return-void
.end method

.method showNoticeDetail(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BbsCommentListBean;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->tv_title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplies()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u56de\u590d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->detailPage:I

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->commentId:I

    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/BbsCommentListBean;->setReplay(Z)V

    :cond_0
    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->addData(Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 15
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->rv_comment_detail_list:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    :cond_3
    if-nez p2, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showEmpty()V

    :cond_4
    :goto_1
    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method updateCommentInput()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->et_content:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v0, "\u8bc4\u8bba\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5c06\u5728\u5ba1\u6838\u540e\u5c55\u793a"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showTost(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Ll1/e;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ll1/e;->v()V

    :cond_0
    return-void
.end method

.method updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getLike()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/BbsCommentListBean;->setLike(Ljava/lang/Integer;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getLike()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/BbsCommentListBean;->setLike(Ljava/lang/Integer;)V

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/BbsCommentListBean;->setPraise(Ljava/lang/Boolean;)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemDetailAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
