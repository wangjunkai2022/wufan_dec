.class public Lcom/join/mgps/adapter/e6;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SimulatorFastEntryHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/e6$d;,
        Lcom/join/mgps/adapter/e6$k;,
        Lcom/join/mgps/adapter/e6$j;,
        Lcom/join/mgps/adapter/e6$e;,
        Lcom/join/mgps/adapter/e6$i;,
        Lcom/join/mgps/adapter/e6$f;,
        Lcom/join/mgps/adapter/e6$h;,
        Lcom/join/mgps/adapter/e6$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/join/mgps/adapter/h6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e6;->h(Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/e6;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/e6;->e(Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/e6$g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/adapter/e6;->f(Lcom/join/mgps/adapter/e6$g;Ljava/util/List;)V

    return-void
.end method

.method private synthetic e(Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    const-class v1, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "typeId"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getTagId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tagId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "tagName"

    .line 4
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic f(Lcom/join/mgps/adapter/e6$g;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/adapter/e6$g;->b(Lcom/join/mgps/adapter/e6$g;)Lcom/join/mgps/customview/CirclePageIndicator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/adapter/e6$g;->b(Lcom/join/mgps/adapter/e6$g;)Lcom/join/mgps/customview/CirclePageIndicator;

    move-result-object p1

    invoke-static {p0}, Lcom/join/mgps/adapter/e6$g;->a(Lcom/join/mgps/adapter/e6$g;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/join/mgps/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "default_position"

    const/4 v1, 0x3

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic h(Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v0, "4"

    .line 3
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getColl_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const/16 v0, 0x50de

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    const-string v0, "20702"

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_2

    return v0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getType()I

    move-result p1

    return p1
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/e6;->getItemViewType(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/e6;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    check-cast p1, Lcom/join/mgps/adapter/e6$i;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 5
    iget-object v0, p1, Lcom/join/mgps/adapter/e6$i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p2, p2

    .line 6
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/e6$i;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    check-cast p1, Lcom/join/mgps/adapter/e6$j;

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 10
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 11
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$j;->a(Lcom/join/mgps/adapter/e6$j;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$j;->a(Lcom/join/mgps/adapter/e6$j;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/g6;

    invoke-direct {v3, v0}, Lcom/join/mgps/adapter/g6;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollOffset()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$j;->a(Lcom/join/mgps/adapter/e6$j;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/e6$d;

    invoke-direct {v0, p0, p2, v1}, Lcom/join/mgps/adapter/e6$d;-><init>(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto/16 :goto_0

    .line 16
    :pswitch_2
    check-cast p1, Lcom/join/mgps/adapter/e6$e;

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 18
    new-instance v0, Lcom/join/mgps/adapter/e6$c;

    iget-object v1, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/adapter/e6$c;-><init>(Lcom/join/mgps/adapter/e6;Landroid/content/Context;I)V

    .line 19
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$e;->a(Lcom/join/mgps/adapter/e6$e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$e;->a(Lcom/join/mgps/adapter/e6$e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/z5;

    invoke-direct {v0, p2}, Lcom/join/mgps/adapter/z5;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 21
    :pswitch_3
    check-cast p1, Lcom/join/mgps/adapter/e6$f;

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    if-eqz p2, :cond_2

    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 24
    new-instance v0, Lcom/join/mgps/adapter/e6$b;

    iget-object v4, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v1}, Lcom/join/mgps/adapter/e6$b;-><init>(Lcom/join/mgps/adapter/e6;Landroid/content/Context;I)V

    .line 25
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$f;->a(Lcom/join/mgps/adapter/e6$f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 26
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$f;->a(Lcom/join/mgps/adapter/e6$f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 27
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$f;->a(Lcom/join/mgps/adapter/e6$f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$f;->a(Lcom/join/mgps/adapter/e6$f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/adapter/j6;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/adapter/j6;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$f;->b(Lcom/join/mgps/adapter/e6$f;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/b6;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/b6;-><init>(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 30
    :pswitch_4
    check-cast p1, Lcom/join/mgps/adapter/e6$h;

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 32
    new-instance v0, Lcom/join/mgps/adapter/e6$a;

    iget-object v4, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v1}, Lcom/join/mgps/adapter/e6$a;-><init>(Lcom/join/mgps/adapter/e6;Landroid/content/Context;I)V

    .line 33
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$h;->a(Lcom/join/mgps/adapter/e6$h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$h;->a(Lcom/join/mgps/adapter/e6$h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 35
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$h;->a(Lcom/join/mgps/adapter/e6$h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$h;->a(Lcom/join/mgps/adapter/e6$h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/adapter/j6;

    invoke-direct {v1, p2, v3}, Lcom/join/mgps/adapter/j6;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$h;->b(Lcom/join/mgps/adapter/e6$h;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/adapter/a6;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/a6;-><init>(Lcom/join/mgps/adapter/e6;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 38
    :pswitch_5
    iget-object v0, p0, Lcom/join/mgps/adapter/e6;->c:Lcom/join/mgps/adapter/h6;

    if-nez v0, :cond_2

    .line 39
    check-cast p1, Lcom/join/mgps/adapter/e6$g;

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 41
    new-instance v0, Lcom/join/mgps/adapter/h6;

    iget-object v1, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/join/mgps/adapter/h6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/e6;->c:Lcom/join/mgps/adapter/h6;

    .line 42
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$g;->a(Lcom/join/mgps/adapter/e6$g;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/e6;->c:Lcom/join/mgps/adapter/h6;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 43
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$g;->a(Lcom/join/mgps/adapter/e6$g;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/adapter/d6;

    invoke-direct {v1, p1, p2}, Lcom/join/mgps/adapter/d6;-><init>(Lcom/join/mgps/adapter/e6$g;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 44
    :pswitch_6
    check-cast p1, Lcom/join/mgps/adapter/e6$k;

    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$k;->a(Lcom/join/mgps/adapter/e6$k;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$k;->b(Lcom/join/mgps/adapter/e6$k;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    invoke-static {p1}, Lcom/join/mgps/adapter/e6$k;->b(Lcom/join/mgps/adapter/e6$k;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/adapter/c6;

    invoke-direct {v1, p0, p2, v0}, Lcom/join/mgps/adapter/c6;-><init>(Lcom/join/mgps/adapter/e6;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c051a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/e6$i;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$i;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0391

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/adapter/e6$j;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$j;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c038b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/adapter/e6$e;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$e;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c038d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/e6$f;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$f;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0390

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/join/mgps/adapter/e6$h;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$h;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    goto :goto_0

    .line 11
    :pswitch_5
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0394

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/join/mgps/adapter/e6$g;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$g;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    goto :goto_0

    .line 13
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/adapter/e6;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0393

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/e6$k;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e6$k;-><init>(Lcom/join/mgps/adapter/e6;Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
