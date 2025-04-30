.class Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;
.super Ljava/lang/Object;
.source "GameDetailModCloudViewpagerFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    .line 3
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setCount(I)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setSelected(Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$100(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Lcom/join/mgps/adapter/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    iget-object v0, v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-lt v1, p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    iget-object v0, v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$200(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 10
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$300(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-static {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickCloudLabelButton:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_5
    return-void
.end method
