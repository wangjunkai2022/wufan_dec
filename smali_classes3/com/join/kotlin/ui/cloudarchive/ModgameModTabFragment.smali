.class public Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModgameModTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;,
        Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0498
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private defSelectPos:I

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

.field private mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

.field modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

.field rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090da6
    .end annotation
.end field

.field rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090da7
    .end annotation
.end field

.field setNetwork:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->lambda$initData$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$initData$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    move-result-object p1

    .line 3
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GoldFingerBean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/GoldFingerBean;->setSelected(Z)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    .line 6
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GoldFingerBean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/GoldFingerBean;->setSelected(Z)V

    .line 7
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    iget p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 9
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    iget p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GoldFingerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GoldFingerBean;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "datas"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ModGameDetailBean;

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->initData()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->setData(Lcom/join/mgps/dto/ModGameDetailBean;)V

    return-void
.end method

.method initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    const v1, 0x7f07113b

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    .line 3
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    .line 4
    iput v2, v0, Li1/a$a;->f:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Li1/a$b;->b:I

    .line 6
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;Li1/a$a;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    .line 10
    :cond_1
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    .line 11
    iput v2, v0, Li1/a$a;->f:I

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Li1/a$b;->d:I

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->a:I

    .line 14
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;Li1/a$a;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/c;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/c;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    return-void
.end method

.method public setData(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_type:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->rv_cheat_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_faile:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getGold_finger()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 8
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GoldFingerBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GoldFingerBean;->setSelected(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatTypeAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatTypeAdapter;

    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 10
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->mCheatItemAdapter:Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment$CheatItemAdapter;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->defSelectPos:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GoldFingerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GoldFingerBean;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public showLodingFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->modGameDetailBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->loding_faile:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->setNetwork:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameModTabFragment;->setNetwork:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
