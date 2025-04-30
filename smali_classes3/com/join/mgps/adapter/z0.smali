.class public Lcom/join/mgps/adapter/z0;
.super Landroid/widget/BaseAdapter;
.source "GameDetailHotCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/z0$f;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lcom/join/mgps/adapter/l1$p1;

.field f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/join/mgps/adapter/l1$p1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/z0;->c:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/z0;->d:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/adapter/z0;->f:J

    .line 5
    iput-object p1, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/adapter/z0;->d:Z

    .line 7
    iput-object p3, p0, Lcom/join/mgps/adapter/z0;->e:Lcom/join/mgps/adapter/l1$p1;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/z0;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;Lcom/join/mgps/adapter/l1$p1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;",
            "Lcom/join/mgps/adapter/l1$p1;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/z0;->c:Ljava/util/List;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/adapter/z0;->d:Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/adapter/z0;->f:J

    .line 13
    iput-object p1, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/adapter/z0;->d:Z

    .line 15
    iput-object p4, p0, Lcom/join/mgps/adapter/z0;->e:Lcom/join/mgps/adapter/l1$p1;

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/z0;->b:Landroid/view/LayoutInflater;

    .line 17
    iput-object p3, p0, Lcom/join/mgps/adapter/z0;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/z0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/z0$c;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/z0$c;-><init>(Lcom/join/mgps/adapter/z0;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/z0$d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/z0$d;-><init>(Lcom/join/mgps/adapter/z0;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/z0$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/z0$e;-><init>(Lcom/join/mgps/adapter/z0;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/z0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 4
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
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/z0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z0;->c:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/z0;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0303

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/z0$f;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/z0$f;-><init>(Lcom/join/mgps/adapter/z0;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/z0$f;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/z0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommentBaseBean;

    .line 6
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->a(Lcom/join/mgps/adapter/z0$f;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->b(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->b(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v1

    if-lez v1, :cond_2

    .line 11
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->b(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_2
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->k(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/VipView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 14
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->l(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->l(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_1
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->m(Lcom/join/mgps/adapter/z0$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    new-instance v4, Lcom/join/mgps/adapter/z0$a;

    invoke-direct {v4, p0, v0}, Lcom/join/mgps/adapter/z0$a;-><init>(Lcom/join/mgps/adapter/z0;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->n(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/ExpandLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/ExpandLayout;->setExpandable(Z)V

    .line 18
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->n(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/ExpandLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/z0$b;

    invoke-direct {v5, p0, v0}, Lcom/join/mgps/adapter/z0$b;-><init>(Lcom/join/mgps/adapter/z0;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v1, v4, v5}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V

    .line 19
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->b(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->o(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->o(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_5
    :goto_2
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->o(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_3
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->p(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->q(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

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

    .line 27
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->r(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

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

    .line 28
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

    .line 29
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->c(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v1

    if-eq v1, v4, :cond_7

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/join/mgps/adapter/z0;->d:Z

    if-eqz v1, :cond_6

    goto :goto_4

    .line 31
    :cond_6
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->d(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->d(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 33
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->d(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/MStarBar;

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

    .line 34
    :cond_7
    :goto_4
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->d(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :goto_5
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->d(Lcom/join/mgps/adapter/z0$f;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x4051800000000000L    # 70.0

    cmpl-double v1, v7, v9

    if-lez v1, :cond_8

    .line 38
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->e(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 39
    :cond_8
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->e(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->f(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 42
    :cond_9
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->f(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :goto_7
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->g(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 45
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->h(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080ca5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 46
    :cond_a
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->h(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080ca0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    :goto_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 48
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->i(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08038f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 49
    :cond_b
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->i(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08038d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    :goto_9
    iget-object v1, p0, Lcom/join/mgps/adapter/z0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->m(Lcom/join/mgps/adapter/z0$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 51
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->h(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->p(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/join/mgps/adapter/z0;->f(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 52
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->i(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->q(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/join/mgps/adapter/z0;->g(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 53
    invoke-static {p3}, Lcom/join/mgps/adapter/z0$f;->j(Lcom/join/mgps/adapter/z0$f;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/adapter/z0;->e(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    return-object p2
.end method

.method public h(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/z0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string v0, "0"

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
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
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public i(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/z0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
