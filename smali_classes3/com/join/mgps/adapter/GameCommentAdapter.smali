.class public Lcom/join/mgps/adapter/GameCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GameCommentAdapter$j;,
        Lcom/join/mgps/adapter/GameCommentAdapter$k;,
        Lcom/join/mgps/adapter/GameCommentAdapter$i;,
        Lcom/join/mgps/adapter/GameCommentAdapter$m;,
        Lcom/join/mgps/adapter/GameCommentAdapter$n;,
        Lcom/join/mgps/adapter/GameCommentAdapter$l;,
        Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/join/mgps/adapter/GameCommentAdapter$j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GameCommentAdapter$j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;",
            "Lcom/join/mgps/adapter/GameCommentAdapter$j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/GameCommentAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/GameCommentAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/GameCommentAdapter$k;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0459

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902bf

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->c:Landroid/view/View;

    const v0, 0x7f0902c0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->d:Landroid/widget/TextView;

    const v0, 0x7f0902c2

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->e:Landroid/widget/TextView;

    const v0, 0x7f0908be

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->f:Landroid/view/View;

    const v0, 0x7f090169

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->g:Landroid/view/View;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    if-nez v0, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->b:Lcom/join/mgps/dto/InformationCommentBean;

    if-nez v1, :cond_2

    return-object p2

    .line 13
    :cond_2
    iget-boolean v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->d:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->g:Z

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object p3, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->h(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;ZI)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/GameCommentAdapter$k;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private h(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;ZI)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    iget-object v10, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->a:Ljava/lang/String;

    .line 2
    iget v11, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->e:I

    .line 3
    iget-boolean v12, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->f:Z

    .line 4
    iget-object v13, v9, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 5
    invoke-virtual {v13}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v14

    .line 6
    move-object/from16 v15, p1

    check-cast v15, Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v0, v7, 0x1

    if-ge v5, v0, :cond_7

    const/4 v0, 0x3

    if-le v5, v0, :cond_0

    if-eqz p3, :cond_0

    move/from16 v16, v11

    move/from16 v17, v12

    const/4 v4, 0x0

    move v11, v5

    move v12, v7

    goto/16 :goto_4

    .line 8
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0107

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 9
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0902c0

    .line 11
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902c2

    .line 12
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-ne v5, v7, :cond_1

    if-gt v7, v0, :cond_2

    :cond_1
    if-lez v11, :cond_3

    if-eqz v12, :cond_3

    if-ne v5, v7, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$g;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v11

    move-object v9, v4

    move/from16 v4, p4

    move/from16 v16, v11

    move v11, v5

    move-object v5, v10

    move/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/GameCommentAdapter$g;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;IILjava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v12, v7

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_3
    move-object v9, v4

    move/from16 v16, v11

    move/from16 v17, v12

    const/4 v12, 0x0

    move v11, v5

    if-ne v11, v0, :cond_4

    if-eqz p3, :cond_4

    if-le v7, v0, :cond_4

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110091

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v7, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$h;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v7

    move-object v4, v13

    move-object v5, v10

    move-object/from16 v6, p2

    move v12, v7

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/GameCommentAdapter$h;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapter$l$b;I)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    move v12, v7

    if-ge v11, v12, :cond_6

    if-lt v11, v0, :cond_5

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/InformationCommentBean$Sub;

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBean$Sub;->getComment_id()Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {v8, v9, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;->l(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :goto_2
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v5, v11, 0x1

    move-object/from16 v9, p2

    move v7, v12

    move/from16 v11, v16

    move/from16 v12, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private l(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$e;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/GameCommentAdapter$e;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/GameCommentAdapter$d;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$f;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/GameCommentAdapter$f;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method c(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/GameCommentAdapter$l;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    const/4 p3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    if-eq p4, v1, :cond_1

    if-eq p4, p3, :cond_0

    :goto_0
    move-object v3, p2

    move-object p2, v0

    move-object v2, p2

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/GameCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;)V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c029f

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0909eb

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->a(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v3, 0x7f091245

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->c(Lcom/join/mgps/adapter/GameCommentAdapter$i;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f090bdf

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->e(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v3, 0x7f091248

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->g(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f090ff4

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->i(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0902eb

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f090be0

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->m(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0908b8

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->o(Lcom/join/mgps/adapter/GameCommentAdapter$i;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v3, 0x7f0908ba

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/customview/VipView;

    iput-object v3, p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l:Lcom/join/mgps/customview/VipView;

    const v3, 0x7f0908be

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j:Landroid/view/View;

    const v3, 0x7f090a7b

    .line 14
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, p2

    :goto_1
    move-object p2, v0

    goto :goto_3

    .line 16
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$m;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/GameCommentAdapter$m;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c029e

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09100f

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/join/mgps/adapter/GameCommentAdapter$m;->b(Lcom/join/mgps/adapter/GameCommentAdapter$m;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 19
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_2
    if-eq p4, v1, :cond_4

    if-eq p4, p3, :cond_3

    goto/16 :goto_0

    .line 20
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;

    move-object v3, p2

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/GameCommentAdapter$m;

    move-object v3, p2

    move-object p2, v2

    goto :goto_2

    :goto_3
    if-eq p4, v1, :cond_a

    if-eq p4, p3, :cond_5

    goto/16 :goto_6

    :cond_5
    if-nez p1, :cond_6

    return-object v0

    .line 22
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;->a:Lcom/join/mgps/dto/InformationCommentBean;

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 24
    iget-object p2, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 25
    :cond_7
    iget-object p2, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getTimes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 27
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->h(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 31
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->d(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f08075e

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 32
    :cond_8
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->d(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f080c9c

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getHead_portrait()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 34
    iget-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->b(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-static {p2, v0, v4}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 35
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_level()I

    move-result p2

    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->n(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/mgps/Util/r;->h(ILandroid/widget/TextView;)V

    .line 36
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->n(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LV."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_level()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_vip_level()I

    move-result v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_svip_level()I

    move-result v5

    invoke-static {p2, v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->L2(Landroid/content/Context;Landroid/widget/TextView;II)Z

    .line 39
    iget-object p2, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l:Lcom/join/mgps/customview/VipView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_vip_level()I

    move-result v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getUser_svip_level()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 40
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->d(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->m(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 41
    invoke-direct {p0, v3, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/view/View;

    .line 42
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->b(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    aput-object v0, p2, p4

    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->f(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->h(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-static {p2}, Lcom/join/mgps/Util/i0;->S0([Landroid/view/View;)V

    new-array p2, v1, [Landroid/view/View;

    .line 43
    iget-object p3, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->l:Lcom/join/mgps/customview/VipView;

    aput-object p3, p2, p4

    invoke-static {p2}, Lcom/join/mgps/Util/i0;->U0([Landroid/view/View;)V

    .line 44
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->b(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p2

    new-instance p3, Lcom/join/mgps/adapter/GameCommentAdapter$a;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter$a;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-static {v2}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$b;

    invoke-direct {p2, p0, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$b;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/adapter/GameCommentAdapter$i;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 46
    iget-object p1, v2, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    new-instance p2, Lcom/join/mgps/adapter/GameCommentAdapter$c;

    invoke-direct {p2, p0, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$c;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/adapter/GameCommentAdapter$i;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 47
    :cond_a
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;->a:Lcom/join/mgps/dto/InformationCommentBean;

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getIs_hot()I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 49
    invoke-static {p2}, Lcom/join/mgps/adapter/GameCommentAdapter$m;->a(Lcom/join/mgps/adapter/GameCommentAdapter$m;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u70ed\u95e8\u8bc4\u8bba"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 50
    :cond_b
    invoke-static {p2}, Lcom/join/mgps/adapter/GameCommentAdapter$m;->a(Lcom/join/mgps/adapter/GameCommentAdapter$m;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u6700\u65b0\u8bc4\u8bba"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-object v3
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/join/mgps/adapter/GameCommentAdapter$j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter$l;->b()Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GameCommentAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->values()[Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method i(Lcom/join/mgps/adapter/GameCommentAdapter$l;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter$l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public k(Lcom/join/mgps/adapter/GameCommentAdapter$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
