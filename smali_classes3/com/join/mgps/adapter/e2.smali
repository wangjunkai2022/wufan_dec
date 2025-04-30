.class public Lcom/join/mgps/adapter/e2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameRecommendAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/e2$b;,
        Lcom/join/mgps/adapter/e2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAd;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field d:Ljava/lang/String;

.field e:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/join/mgps/adapter/y2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/e2;->f:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->b:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->a:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/e2;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/Util/IntentDateBean;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/join/mgps/adapter/e2;->j(Lcom/join/mgps/Util/IntentDateBean;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/e2;Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e2;->k(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/e2;)Lcom/join/mgps/adapter/y2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/e2;Lcom/join/mgps/adapter/y2;)Lcom/join/mgps/adapter/y2;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    return-object p1
.end method

.method static synthetic e(Lcom/join/mgps/adapter/e2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/e2;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static synthetic j(Lcom/join/mgps/Util/IntentDateBean;ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 2
    new-instance p0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->indexGame_ad:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, p2, p0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method private synthetic k(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/e2;->f(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;)V

    return-void
.end method

.method private l(Lcom/join/mgps/adapter/e2$b;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/e2;->e:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/e2$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/adapter/e2$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->f:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/join/mgps/adapter/y2;

    iget-object v2, p0, Lcom/join/mgps/adapter/e2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/adapter/e2;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/y2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    .line 8
    :cond_2
    iget-object v1, p1, Lcom/join/mgps/adapter/e2$b;->c:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/y2;->d(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->g:Lcom/join/mgps/adapter/y2;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/join/mgps/adapter/e2$b;->e:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/d2;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/d2;-><init>(Lcom/join/mgps/adapter/e2;Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method f(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&game_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?game_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->setLink_type_val(Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getJump_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/e2;->b:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->a:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->e:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    return-object v0
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$MemberFunBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->f:Ljava/util/List;

    return-void
.end method

.method public n(Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->e:Lcom/join/mgps/dto/GameMainV4DataBean$MemberInfoBean;

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/e2$a;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/e2;->a:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecommendAd;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getCrc_link_type_val()Ljava/lang/String;

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/join/mgps/adapter/e2$a;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 8
    iget-object v4, v1, Lcom/join/mgps/adapter/e2$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v3

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/backends/pipeline/e;

    iget-object v4, v1, Lcom/join/mgps/adapter/e2$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/backends/pipeline/e;

    .line 13
    invoke-virtual {v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object v3

    .line 14
    iget-object v4, v1, Lcom/join/mgps/adapter/e2$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v3}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    .line 15
    iget-object v1, v1, Lcom/join/mgps/adapter/e2$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 16
    :cond_2
    :goto_0
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getLink_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getJump_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getLink_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendAd;->getTpl_type()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const/16 v2, 0x332e

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 23
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/c2;

    invoke-direct {v0, v1, p2}, Lcom/join/mgps/adapter/c2;-><init>(Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 24
    :cond_3
    instance-of v0, p1, Lcom/join/mgps/adapter/e2$b;

    if-eqz v0, :cond_4

    .line 25
    check-cast p1, Lcom/join/mgps/adapter/e2$b;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/e2;->l(Lcom/join/mgps/adapter/e2$b;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/e2$b;

    iget-object v1, p0, Lcom/join/mgps/adapter/e2;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0375

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e2$b;-><init>(Lcom/join/mgps/adapter/e2;Landroid/view/View;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/e2$a;

    iget-object v1, p0, Lcom/join/mgps/adapter/e2;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c030b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/e2$a;-><init>(Lcom/join/mgps/adapter/e2;Landroid/view/View;)V

    return-object p2
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2;->d:Ljava/lang/String;

    return-void
.end method
