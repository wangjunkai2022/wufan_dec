.class public Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CommentAllListFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$j;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;
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
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field g:Lcom/join/mgps/dto/CommentBaseBean;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;ILcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    .line 5
    iput p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->c:I

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:I

    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    .line 9
    iput-object p6, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e(Landroid/content/Context;F)I
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

.method private m(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    iget-object v1, v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:I

    return v0
.end method

.method public g()Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public h(II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gez p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq p2, v6, :cond_2

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p2, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public i(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    :cond_1
    if-eq p2, v5, :cond_2

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method j(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/join/mgps/customview/HistogramView;

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    move-result-object v3

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
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v9

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
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    move-result-object v7

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
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 18
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    :goto_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    iget-object v13, v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    const/high16 v14, 0x41200000    # 10.0f

    .line 23
    invoke-direct {v0, v13, v14}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e(Landroid/content/Context;F)I

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

.method public k(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    return-void
.end method

.method public l(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->g:Lcom/join/mgps/dto/CommentBaseBean;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v1, :cond_10

    .line 3
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 4
    iget-object v0, v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 6
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0603cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0603d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/VipView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 13
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iput p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:I

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->n(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    new-instance v5, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$a;

    invoke-direct {v5, p0, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    const-string v6, ""

    if-ne v1, v5, :cond_3

    .line 19
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 25
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_3
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->r(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->s(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "000"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 30
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->t(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v5, "1"

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 33
    :cond_6
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v7, v5

    invoke-virtual {v1, v7, v8}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_5

    .line 35
    :cond_7
    :goto_4
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_5
    iget v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:I

    if-ne v1, v3, :cond_9

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v1

    if-nez v1, :cond_8

    .line 38
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u542f\u52a8\u6e38\u620f "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u6b21"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 40
    :cond_8
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 41
    :cond_9
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :goto_6
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x4051800000000000L    # 70.0

    cmpl-double v1, v7, v9

    if-lez v1, :cond_a

    .line 45
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 46
    :cond_a
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 48
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 49
    :cond_b
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_8
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 52
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080ca5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 53
    :cond_c
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080ca0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    :goto_9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 55
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08038f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 56
    :cond_d
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08038d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :goto_a
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->n(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 58
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 59
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->r(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->o(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 60
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->m(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 61
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->m(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x73

    if-le v1, v2, :cond_e

    .line 63
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 64
    :cond_e
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 65
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_f
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 67
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$c;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;ILcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    .line 68
    :cond_10
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->HEAD:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 69
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    .line 70
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    .line 71
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->j(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)V

    goto :goto_c

    .line 72
    :cond_11
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 73
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;

    .line 74
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 75
    iget-object p2, p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_hot()I

    move-result p2

    if-ne p2, v3, :cond_12

    .line 77
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;->a:Landroid/widget/TextView;

    const-string v0, "\u70ed\u95e8\u70b9\u8bc4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 78
    :cond_12
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;->a:Landroid/widget/TextView;

    const-string v0, "\u6700\u65b0\u70b9\u8bc4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_b
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0105

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->HEAD:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0100

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c027a

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public p(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public q(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
