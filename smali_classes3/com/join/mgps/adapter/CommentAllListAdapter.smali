.class public Lcom/join/mgps/adapter/CommentAllListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentAllListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentAllListAdapter$i;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$g;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$k;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$j;,
        Lcom/join/mgps/adapter/CommentAllListAdapter$h;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;ILcom/join/mgps/adapter/CommentAllListAdapter$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$i;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/mgps/adapter/CommentAllListAdapter$h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    .line 5
    iput p2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:I

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->e:I

    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    .line 9
    iput-object p6, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-eq p4, v2, :cond_1

    if-eq p4, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;)V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0105

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09029f

    .line 4
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->b(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v4, 0x7f091245

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->f(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f091237

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->z(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090789

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->B(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0908b8

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/customview/VipView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->D(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/customview/VipView;)Lcom/join/mgps/customview/VipView;

    const v4, 0x7f090780

    .line 9
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->F(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v4, 0x7f090788

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->H(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v4, 0x7f090781

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->J(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0902ac

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/customview/MStarBar;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->L(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/customview/MStarBar;)Lcom/join/mgps/customview/MStarBar;

    const v4, 0x7f0902ae

    .line 13
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->N(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090ff4

    .line 14
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->e(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0902eb

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090a7b

    .line 16
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->j(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0908be

    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p2, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->n:Landroid/view/View;

    const v4, 0x7f090c0a

    .line 18
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090bdf

    .line 19
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->n(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v4, 0x7f090be0

    .line 20
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f09039c

    .line 21
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->r(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v4, 0x7f0903b0

    .line 22
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->t(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090a26

    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->v(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v4, 0x7f090a31

    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->x(Lcom/join/mgps/adapter/CommentAllListAdapter$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 25
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v10, v3

    move-object v3, p2

    move-object p2, v10

    goto :goto_1

    .line 26
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/CommentAllListAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;)V

    .line 27
    iget-object v3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c027a

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f091023

    .line 28
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->a:Landroid/widget/TextView;

    const v4, 0x7f090886

    .line 29
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p2, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->c:Landroid/view/View;

    .line 30
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v10, v1

    move-object v1, p2

    move-object p2, v3

    move-object v3, v10

    goto :goto_1

    :cond_2
    if-eq p4, v2, :cond_4

    if-eq p4, v0, :cond_3

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/CommentAllListAdapter$k;

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_1
    if-nez p3, :cond_5

    return-object p2

    .line 33
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/16 v4, 0x8

    if-eq p4, v2, :cond_16

    if-eq p4, v0, :cond_6

    goto/16 :goto_f

    .line 34
    :cond_6
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    const/high16 v0, -0x1000000

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result p4

    if-lez p4, :cond_7

    .line 36
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_7
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result p4

    if-lez p4, :cond_8

    .line 38
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    :cond_8
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->C(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/VipView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v0

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 40
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object p4

    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_9

    .line 41
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->A(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iput p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    goto :goto_2

    .line 43
    :cond_9
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->A(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_2
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->y(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v5, ""

    if-ne p4, v1, :cond_a

    .line 46
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 47
    :cond_a
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_3
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result p4

    if-eq p4, v2, :cond_c

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_c

    .line 49
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_4

    .line 50
    :cond_b
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 52
    :cond_c
    :goto_4
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_5
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->s(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->w(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 57
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result p4

    if-eq p4, v2, :cond_e

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/4 v1, 0x0

    cmpl-float p4, p4, v1

    if-eqz p4, :cond_e

    iget-object p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->d:Ljava/lang/String;

    if-eqz p4, :cond_d

    const-string v1, "1"

    .line 59
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_6

    .line 60
    :cond_d
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 62
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual {p4, v6, v7}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_7

    .line 63
    :cond_e
    :goto_6
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object p4

    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_7
    iget p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->e:I

    if-ne p4, v2, :cond_10

    .line 65
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result p4

    if-nez p4, :cond_f

    .line 66
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u542f\u52a8\u6e38\u620f "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u6b21"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 68
    :cond_f
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 69
    :cond_10
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->M(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_8
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->K(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_11

    .line 72
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x4051800000000000L    # 70.0

    cmpl-double p4, v6, v8

    if-lez p4, :cond_11

    .line 73
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->G(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 74
    :cond_11
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->G(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_9
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 76
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->E(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 77
    :cond_12
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->E(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_a
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->I(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result p4

    if-ne p4, v2, :cond_13

    .line 80
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    const v0, 0x7f080ca5

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 81
    :cond_13
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    const v0, 0x7f080ca0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :goto_b
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result p4

    if-ne p4, v2, :cond_14

    .line 83
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    const v0, 0x7f08038f

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 84
    :cond_14
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    const v0, 0x7f08038d

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_c
    iget-object p4, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->a:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 86
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p4

    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter$a;

    invoke-direct {v0, p0, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p4, v0, p3, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->m(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 88
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->s(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p4, v0, p3, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->n(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 89
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->u(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 90
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 91
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 92
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const-string p4, "\u6536\u8d77"

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const p4, 0x7fffffff

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_d

    .line 94
    :cond_15
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const-string p4, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p4, 0x5

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 96
    :goto_d
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p4, Lcom/join/mgps/adapter/CommentAllListAdapter$b;

    invoke-direct {p4, p0, v3, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-static {v3}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p4, Lcom/join/mgps/adapter/CommentAllListAdapter$c;

    invoke-direct {p4, p0, v3, p3}, Lcom/join/mgps/adapter/CommentAllListAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f

    .line 98
    :cond_16
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_hot()I

    move-result p1

    if-ne p1, v2, :cond_17

    .line 99
    iget-object p1, v1, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->a:Landroid/widget/TextView;

    const-string p3, "\u70ed\u95e8\u70b9\u8bc4"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 100
    :cond_17
    iget-object p1, v1, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->a:Landroid/widget/TextView;

    const-string p3, "\u6700\u65b0\u70b9\u8bc4"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_e
    iget-object p1, v1, Lcom/join/mgps/adapter/CommentAllListAdapter$k;->c:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    return-object p2
.end method

.method private l(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/CommentAllListAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListAdapter$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListAdapter$f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Lcom/join/mgps/event/h;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/h;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 5
    iget-object v1, v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setContent(Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setMobile_phone_model(Ljava/lang/String;)V

    .line 7
    iget-object v0, v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1}, Lcom/join/mgps/event/h;->c()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommentBaseBean;->setStars_score(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f()Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    return-object v0
.end method

.method public g()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    move-result-object v1

    sget-object v2, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    iget-object v1, v1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->f:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/CommentAllListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->values()[Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h()Lcom/join/mgps/adapter/CommentAllListAdapter$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    return-object v0
.end method

.method public i(II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gez p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

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
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p2, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

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
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public j(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    :cond_1
    if-eq p2, v5, :cond_2

    .line 7
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 8
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public k(Lcom/join/mgps/adapter/CommentAllListAdapter$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter;->g:Lcom/join/mgps/adapter/CommentAllListAdapter$h;

    return-void
.end method

.method public o(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

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

.method public p(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
