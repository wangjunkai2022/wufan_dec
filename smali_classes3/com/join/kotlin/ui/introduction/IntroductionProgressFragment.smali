.class public Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
.super Landroidx/fragment/app/Fragment;
.source "IntroductionProgressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c02e7
.end annotation


# instance fields
.field private curSelected:I

.field private dataChanged:Z

.field detailBean:Lcom/join/mgps/dto/BbsDetailBean;

.field ll_empty:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->lambda$afterView$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$afterView$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iput p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    iget p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/dto/TimingBean;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TimingBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/TimingBean;->setChecked(Z)V

    .line 4
    iput p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TimingBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/TimingBean;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/dto/VideoChaptersBean;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    iget v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/VideoChaptersBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/VideoChaptersBean;->setChecked(Z)V

    .line 9
    iput p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/VideoChaptersBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/VideoChaptersBean;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Ll1/e;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Ll1/e;

    invoke-interface {p1, p0}, Ll1/e;->u0(Landroidx/fragment/app/Fragment;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Ll1/e;

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-virtual {p2, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ll1/e;->a0(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static newInstance(Lcom/join/mgps/dto/CommentAlllistIntentData;)Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;
    .locals 1

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;

    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateUI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getIsCollection()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->tv_title:Landroid/widget/TextView;

    const-string v4, "\u89c6\u9891\u5408\u96c6"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iput v3, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->curSelected:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/VideoChaptersBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/VideoChaptersBean;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->tv_title:Landroid/widget/TextView;

    const-string v1, "\u5267\u60c5\u8fdb\u5ea6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->ll_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    .line 4
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Li1/a$a;->f:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07110f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->d:I

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;Li1/a$a;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    new-instance v1, Lcom/join/kotlin/ui/introduction/a;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/a;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment$ItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->updateUI()V

    return-void
.end method

.method public notifyDataChanged(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method onClockClick()V
    .locals 1
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

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->updateUI()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->dataChanged:Z

    :cond_0
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

.method public setData(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

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
