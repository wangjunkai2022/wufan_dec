.class public Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModGameCloudViewpagerFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0213
.end annotation


# instance fields
.field private cloudArchiveTagAdapter:Lcom/join/mgps/adapter/f;

.field private defaultSelectedIndex:I

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:Ljava/lang/String;

.field private lastSelectedTagIndex:I

.field private modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

.field subTabList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field viewpager:Lcom/join/mgps/customview/NoScrollViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 4
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lambda$addTagList$0(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)Lcom/join/mgps/adapter/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->cloudArchiveTagAdapter:Lcom/join/mgps/adapter/f;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->gameId:Ljava/lang/String;

    return-object p0
.end method

.method private addTagList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setSelected(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->cloudArchiveTagAdapter:Lcom/join/mgps/adapter/f;

    .line 5
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/b;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/b;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/f;->e(Lcom/join/mgps/adapter/f$b;)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->cloudArchiveTagAdapter:Lcom/join/mgps/adapter/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initDefaultSelectedIndex()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudArchiveCfg;->getLocation_at()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    :cond_2
    return-void
.end method

.method private initViewPager()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->gameId:Ljava/lang/String;

    const-string v5, "gameId"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->type:I

    const-string v5, "type"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    const-string v5, "datas"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "tag"

    .line 8
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/x$a;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 12
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 13
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->defaultSelectedIndex:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(I)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private synthetic lambda$addTagList$0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->viewpager:Lcom/join/mgps/customview/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(IZ)V

    .line 2
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/x$a;

    iget-object p1, p1, Lcom/join/mgps/adapter/x$a;->c:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->scrollToTop()V

    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->lastSelectedTagIndex:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "datas"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModGameDetailBean;

    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->type:I

    const-string v1, "gameId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->gameId:Ljava/lang/String;

    const-string v1, "tags"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->tags:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->initDefaultSelectedIndex()V

    .line 7
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->addTagList()V

    .line 8
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewpagerFragment;->initViewPager()V

    return-void
.end method
