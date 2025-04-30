.class public Lcom/join/mgps/adapter/r1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameDetialModleThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/r1$z0;,
        Lcom/join/mgps/adapter/r1$d1;,
        Lcom/join/mgps/adapter/r1$a1;,
        Lcom/join/mgps/adapter/r1$f1;,
        Lcom/join/mgps/adapter/r1$h2;,
        Lcom/join/mgps/adapter/r1$i2;,
        Lcom/join/mgps/adapter/r1$l2;,
        Lcom/join/mgps/adapter/r1$k2;,
        Lcom/join/mgps/adapter/r1$n2;,
        Lcom/join/mgps/adapter/r1$h1;,
        Lcom/join/mgps/adapter/r1$e1;,
        Lcom/join/mgps/adapter/r1$i1;,
        Lcom/join/mgps/adapter/r1$g1;,
        Lcom/join/mgps/adapter/r1$j2;,
        Lcom/join/mgps/adapter/r1$m2;,
        Lcom/join/mgps/adapter/r1$z1;,
        Lcom/join/mgps/adapter/r1$c2;,
        Lcom/join/mgps/adapter/r1$f2;,
        Lcom/join/mgps/adapter/r1$m1;,
        Lcom/join/mgps/adapter/r1$k1;,
        Lcom/join/mgps/adapter/r1$q1;,
        Lcom/join/mgps/adapter/r1$p1;,
        Lcom/join/mgps/adapter/r1$a2;,
        Lcom/join/mgps/adapter/r1$o1;,
        Lcom/join/mgps/adapter/r1$l1;,
        Lcom/join/mgps/adapter/r1$n1;,
        Lcom/join/mgps/adapter/r1$s1;,
        Lcom/join/mgps/adapter/r1$x1;,
        Lcom/join/mgps/adapter/r1$y1;,
        Lcom/join/mgps/adapter/r1$j1;,
        Lcom/join/mgps/adapter/r1$t1;,
        Lcom/join/mgps/adapter/r1$r1;,
        Lcom/join/mgps/adapter/r1$w1;,
        Lcom/join/mgps/adapter/r1$v1;,
        Lcom/join/mgps/adapter/r1$g2;,
        Lcom/join/mgps/adapter/r1$d2;,
        Lcom/join/mgps/adapter/r1$b2;,
        Lcom/join/mgps/adapter/r1$u1;,
        Lcom/join/mgps/adapter/r1$e2;,
        Lcom/join/mgps/adapter/r1$o2;,
        Lcom/join/mgps/adapter/r1$c1;,
        Lcom/join/mgps/adapter/r1$b1;
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
.field private static final s:Ljava/lang/String; = "GameDetialModleThreeAda"


# instance fields
.field private a:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private b:Z

.field private c:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

.field private d:Landroid/content/Context;

.field e:Z

.field f:Lcom/join/mgps/adapter/r1$c1;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/danikula/videocache/i;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/r1$b1;",
            ">;"
        }
    .end annotation
.end field

.field o:J

.field private p:Landroid/view/View;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/join/mgps/adapter/r1$z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/r1;->e:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/join/mgps/adapter/r1;->f:Lcom/join/mgps/adapter/r1$c1;

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/adapter/r1;->l:Z

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/adapter/r1;->o:J

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/r1;->q:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/r1$z0;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/r1$z0;-><init>(Lcom/join/mgps/adapter/r1;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/r1;->r:Lcom/join/mgps/adapter/r1$z0;

    .line 8
    iput-object p3, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/r1;->v(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/r1;->h:Lcom/danikula/videocache/i;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/r1;->i:Ljava/util/Map;

    .line 14
    iput-object p2, p0, Lcom/join/mgps/adapter/r1;->c:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->P0(Landroid/content/Context;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;->a(Ljava/lang/String;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    const-class v1, Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jinshouzhi"

    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/p;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u91d1\u624b\u6307"

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/adapter/r1;->r(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private E(Landroid/view/View;Lcom/join/mgps/adapter/r1$d1;ZI)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1
    iget-object v9, v8, Lcom/join/mgps/adapter/r1$d1;->a:Ljava/lang/String;

    .line 2
    iget v10, v8, Lcom/join/mgps/adapter/r1$d1;->e:I

    .line 3
    iget-boolean v11, v8, Lcom/join/mgps/adapter/r1$d1;->f:Z

    .line 4
    iget-object v12, v8, Lcom/join/mgps/adapter/r1$d1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    .line 5
    invoke-virtual {v12}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v13

    .line 6
    move-object/from16 v14, p1

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v0, v15, 0x1

    if-ge v5, v0, :cond_7

    const/4 v0, 0x3

    if-le v5, v0, :cond_0

    if-eqz p3, :cond_0

    move/from16 v16, v10

    move/from16 v17, v11

    const/4 v11, 0x0

    move v10, v5

    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object v1, v7, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

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

    if-ne v5, v15, :cond_1

    if-gt v15, v0, :cond_2

    :cond_1
    if-lez v10, :cond_3

    if-eqz v11, :cond_3

    if-ne v5, v15, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u6536\u8d77"

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/r1$n0;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v10

    move-object v8, v4

    move/from16 v4, p4

    move/from16 v16, v10

    move v10, v5

    move-object v5, v9

    move/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/r1$n0;-><init>(Lcom/join/mgps/adapter/r1;IILjava/lang/String;Lcom/join/mgps/adapter/r1$d1;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_3
    move-object v8, v4

    move/from16 v16, v10

    move/from16 v17, v11

    const/4 v11, 0x0

    move v10, v5

    if-ne v10, v0, :cond_4

    if-eqz p3, :cond_4

    if-le v15, v0, :cond_4

    .line 17
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110091

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v15, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Lcom/join/mgps/adapter/r1$o0;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v15

    move-object v4, v12

    move-object v5, v9

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/r1$o0;-><init>(Lcom/join/mgps/adapter/r1;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    if-ge v10, v15, :cond_6

    if-lt v10, v0, :cond_5

    if-eqz p3, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    invoke-direct {v7, v8, v0}, Lcom/join/mgps/adapter/r1;->K(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :goto_1
    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    :goto_2
    add-int/lit8 v5, v10, 0x1

    move-object/from16 v8, p2

    move/from16 v10, v16

    move/from16 v11, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private K(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/r1$p0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/r1$p0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private L(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/r1$q0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/r1$q0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private M(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/r1$s0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/r1$s0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private N(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/r1$m0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/r1$m0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private O(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/r1$t0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/r1$t0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/r1;->z(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->A(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1;->c:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/r1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/r1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/r1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/adapter/r1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/r1;->j:I

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    const-class v1, Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/r1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/r1;->k:I

    return p1
.end method

.method private t(I)Lcom/join/mgps/dto/CommentBaseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/r1$b1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    return-object p1
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.qqlite"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const-string v2, "com.tencent.mobileqq"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic z(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getJump_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public D(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/r1;->k:I

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/r1;->j:I

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/r1;->r:Lcom/join/mgps/adapter/r1$z0;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c026e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090acd

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0908de

    .line 8
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameDetailOneTouchSkill;

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getSkill()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 12
    :goto_1
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getSkill()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    const/4 v7, 0x5

    if-ne v4, v7, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget-object v7, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0c026f

    invoke-virtual {v7, v8, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 14
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getSkill()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/adapter/r1;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/r1;->r:Lcom/join/mgps/adapter/r1$z0;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public F(II)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v2

    const-string v3, ""

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gez p2, :cond_0

    const-string p2, "0"

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
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
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 8
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

.method public G(II)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    goto :goto_0

    :cond_1
    if-eq p2, v5, :cond_2

    .line 7
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    add-long/2addr v0, v3

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method H(Lcom/join/mgps/adapter/r1$b1;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/adapter/r1$d1;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/r1$d1;->g:Z
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

.method public I(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method

.method public J(Lcom/join/mgps/adapter/r1$c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1;->f:Lcom/join/mgps/adapter/r1$c1;

    return-void
.end method

.method public P(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1;->q:Ljava/util/List;

    return-void
.end method

.method public Q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/r1;->m:I

    return-void
.end method

.method R()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_url()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShareData;->getShare_switch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShareData;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setIntentData(Lcom/join/mgps/dto/BannerBean;)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    return-void
.end method

.method S(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public T(I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    move-result-object p1

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public U(I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    move-result-object p1

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/r1$b1;

    .line 2
    iget p1, p1, Lcom/join/mgps/adapter/r1$b1;->b:I

    return p1
.end method

.method public n(I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    move-result-object p1

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public o(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/r1;->t(I)Lcom/join/mgps/dto/CommentBaseBean;

    move-result-object p1

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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/r1;->getItemViewType(I)I

    move-result v2

    const-string v3, "46"

    const-string v4, "1"

    const-string v5, "\u70ed\u5ea6"

    const/16 v6, 0x13

    const/high16 v7, -0x1000000

    const v8, 0x7f1100d2

    const-string v9, "\u5b89\u88c5"

    const/4 v10, 0x4

    const-string v12, "M"

    const-string v15, ""

    const/4 v13, 0x1

    const/16 v11, 0x8

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2c

    .line 2
    :pswitch_1
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$k2;

    .line 3
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 4
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/BTActivityBean;

    .line 5
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$k2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$k2;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$k2;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BTActivityBean;->getSub_head()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v2, Lcom/join/mgps/adapter/r1$k2;->d:Landroid/view/View;

    new-instance v3, Lcom/join/mgps/adapter/q1;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/q1;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/BTActivityBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 9
    :pswitch_2
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$n2;

    .line 10
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 11
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/ServiceState;

    .line 12
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$n2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v4

    if-ne v4, v13, :cond_0

    const-string v4, "\u5f00\u670d"

    goto :goto_0

    :cond_0
    const-string v4, "\u5408\u670d"

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$n2;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/x;->C(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$n2;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    const-string v6, "HH:mm"

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/x;->x(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, v2, Lcom/join/mgps/adapter/r1$n2;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 16
    :pswitch_3
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$h1;

    .line 17
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 18
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 19
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$h1;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f20\u4ee3\u91d1\u5238\u53ef\u9886\u53d6"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$h1;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/m1;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/m1;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 21
    :pswitch_4
    :try_start_0
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$h2;

    .line 22
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 23
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 24
    new-instance v3, Lcom/join/mgps/adapter/o1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/o1;-><init>(Lcom/join/mgps/adapter/r1;)V

    const/4 v4, 0x0

    .line 25
    :goto_1
    iget-object v5, v2, Lcom/join/mgps/adapter/r1$h2;->e:[Landroid/widget/TextView;

    if-eqz v5, :cond_59

    array-length v5, v5

    if-ge v4, v5, :cond_59

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_1

    goto :goto_2

    .line 27
    :cond_1
    iget-object v5, v2, Lcom/join/mgps/adapter/r1$h2;->e:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v5, v2, Lcom/join/mgps/adapter/r1$h2;->e:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v5, v2, Lcom/join/mgps/adapter/r1$h2;->e:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 30
    :cond_2
    :goto_2
    iget-object v5, v2, Lcom/join/mgps/adapter/r1$h2;->e:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 32
    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$x1;

    .line 33
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$x1;->d:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$q;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/adapter/r1$q;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$x1;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    move-result v2

    if-ne v2, v13, :cond_3

    .line 35
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$x1;->a:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 37
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 38
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 44
    :cond_4
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    :goto_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 46
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 48
    :cond_5
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    :goto_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 50
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 52
    :cond_6
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    :goto_6
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$x1;->k:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/r1$r;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/r1$r;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 56
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$x1;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$x1;->m:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/r1$s;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$s;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_7
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 59
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$x1;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$x1;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$x1;->e:Landroid/widget/TextView;

    const-string v4, "\u542f\u52a8\u6570"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$x1;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 63
    :pswitch_6
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$e1;

    .line 64
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$e1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/k;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCheck_point()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5, v13}, Lcom/join/mgps/adapter/k;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$e1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/r1$f0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$f0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2c

    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 67
    :pswitch_7
    :try_start_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$l2;

    .line 68
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getOne_touch_skill()Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v13, :cond_8

    iget-object v3, v0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v11}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 70
    :cond_8
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setData(Ljava/util/List;)V

    .line 71
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->b:Landroidx/viewpager/widget/ViewPager;

    instance-of v3, v2, Lcom/join/mgps/customview/MViewpagerV4;

    if-eqz v3, :cond_9

    .line 72
    check-cast v2, Lcom/join/mgps/customview/MViewpagerV4;

    invoke-virtual {v2, v14}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V

    .line 73
    :cond_9
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->r:Lcom/join/mgps/adapter/r1$z0;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 74
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget-object v3, v0, Lcom/join/mgps/adapter/r1$l2;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_a

    .line 76
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget v3, v1, Lcom/join/mgps/adapter/r1;->j:I

    invoke-virtual {v2, v3, v14}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 77
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/r1$d0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/r1$d0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 78
    :cond_a
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->b:Landroidx/viewpager/widget/ViewPager;

    iget v3, v1, Lcom/join/mgps/adapter/r1;->k:I

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 79
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/r1$e0;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/r1$e0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$l2;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2c

    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 81
    :pswitch_8
    :try_start_3
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$f1;

    .line 82
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 83
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameDetailCloudArchive;

    if-nez v0, :cond_b

    return-void

    .line 84
    :cond_b
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getHideTop()I

    move-result v3

    if-ne v3, v13, :cond_c

    .line 85
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f1;->b:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 86
    :cond_c
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f1;->b:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_7
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 88
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f1;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f1;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getAuth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f1;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPraise_count()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getDivider()I

    move-result v0

    if-ne v0, v13, :cond_d

    .line 92
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$f1;->a:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 93
    :cond_d
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$f1;->a:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_8
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/r1$i0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$i0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2c

    :catch_3
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 96
    :pswitch_9
    :try_start_4
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$i2;

    .line 97
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 98
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$i2;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$i2;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/r1$h0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$h0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2c

    :catch_4
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 102
    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$i1;

    .line 103
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$i1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/l;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_favorites_top5()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/join/mgps/adapter/l;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2c

    .line 104
    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$g2;

    .line 105
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 107
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2c

    .line 108
    :cond_e
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    .line 110
    new-instance v3, Lcom/join/mgps/adapter/a1;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/a1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/r1$f;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/r1$f;-><init>(Lcom/join/mgps/adapter/r1;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_2c

    .line 113
    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$g1;

    .line 114
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$g1;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/r1$y;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/r1$y;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$g1;->c:Landroid/widget/TextView;

    const-string v3, "\u5199\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$g1;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$g1;->d:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$g1;->e:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c

    .line 119
    :pswitch_d
    :try_start_5
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$a1;

    .line 120
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/r1$b1;

    .line 121
    iget-object v3, v3, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 122
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->s(Lcom/join/mgps/adapter/r1$a1;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->t(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v5

    if-lez v5, :cond_f

    .line 125
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->t(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0603cf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :cond_f
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v5

    if-lez v5, :cond_10

    .line 127
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->t(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0603d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    :cond_10
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->u(Lcom/join/mgps/adapter/r1$a1;)Lcom/join/mgps/customview/VipView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v7

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 129
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v7}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 130
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->a(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 131
    :cond_11
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->a(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_9
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->b(Lcom/join/mgps/adapter/r1$a1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    new-instance v7, Lcom/join/mgps/adapter/r1$j0;

    invoke-direct {v7, v1, v3}, Lcom/join/mgps/adapter/r1$j0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 134
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result v5

    if-ne v5, v13, :cond_13

    .line 135
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v5

    if-nez v5, :cond_12

    .line 136
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->c(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->c(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u542f\u52a8\u6e38\u620f "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u6b21"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 138
    :cond_12
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->c(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 139
    :cond_13
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->c(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v5, v6, :cond_14

    .line 141
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->d(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 142
    :cond_14
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->d(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_b
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->t(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v5

    if-eq v5, v13, :cond_16

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 145
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_c

    .line 146
    :cond_15
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->e(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->e(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 148
    :cond_16
    :goto_c
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->e(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_d
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->f(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->g(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->h(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 153
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->i(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v5

    if-eq v5, v13, :cond_18

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_18

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 155
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_e

    .line 156
    :cond_17
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->j(Lcom/join/mgps/adapter/r1$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->j(Lcom/join/mgps/adapter/r1$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 158
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->j(Lcom/join/mgps/adapter/r1$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_f

    .line 159
    :cond_18
    :goto_e
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->j(Lcom/join/mgps/adapter/r1$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_f
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->j(Lcom/join/mgps/adapter/r1$a1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 162
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4051800000000000L    # 70.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_19

    .line 163
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->k(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 164
    :cond_19
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->k(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :goto_10
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 166
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->l(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    .line 167
    :cond_1a
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->l(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :goto_11
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->m(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v4

    if-ne v4, v13, :cond_1b

    .line 170
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->n(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f080ca5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12

    .line 171
    :cond_1b
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->n(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f080ca0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_12
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v4

    if-ne v4, v13, :cond_1c

    .line 173
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->o(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f08038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    .line 174
    :cond_1c
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->o(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f08038d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_13
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->b(Lcom/join/mgps/adapter/r1$a1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 176
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->n(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->f(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/join/mgps/adapter/r1;->M(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 177
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->o(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->g(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/join/mgps/adapter/r1;->O(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 178
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->p(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/r1;->L(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 179
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->q(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/r1;->L(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 180
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->d(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/r1$k0;

    invoke-direct {v5, v1, v2, v0}, Lcom/join/mgps/adapter/r1$k0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$a1;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 181
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$a1;->r(Lcom/join/mgps/adapter/r1$a1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/r1$l0;

    invoke-direct {v5, v1, v2, v0, v3}, Lcom/join/mgps/adapter/r1$l0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$a1;ILcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2c

    :catch_5
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 183
    :pswitch_e
    :try_start_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$m2;

    .line 184
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$m2;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u609f\u996d\u73a9\u5bb6\u4ea4\u6d41\u7fa4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$m2;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/r1$c0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$c0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2c

    :catch_6
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 187
    :pswitch_f
    :try_start_7
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$z1;

    .line 188
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    .line 190
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$z1;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$z1;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 193
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$z1;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/r1$b0;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/r1$b0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2c

    :catch_7
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2c

    .line 195
    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$c2;

    .line 196
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1d

    .line 197
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$c2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2c

    .line 198
    :cond_1d
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$c2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2c

    .line 199
    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$q1;

    .line 200
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 201
    new-instance v3, Lcom/join/mgps/adapter/d1;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 202
    iget v4, v1, Lcom/join/mgps/adapter/r1;->m:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/d1;->f(I)V

    .line 203
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$q1;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_59

    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 205
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2c

    .line 208
    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$p1;

    .line 209
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 210
    new-instance v3, Lcom/join/mgps/adapter/d1;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 211
    iget v4, v1, Lcom/join/mgps/adapter/r1;->m:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/d1;->f(I)V

    .line 212
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$p1;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_59

    .line 213
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 214
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2c

    .line 217
    :pswitch_13
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$f2;

    .line 218
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v14}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 219
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 221
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f080168

    iget-object v6, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 222
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 223
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :cond_1e
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 225
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v4, v4, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 226
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v14}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 227
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    const-string v5, "GameDetialModleThreeAdapter"

    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 228
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v4, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 229
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$f2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    sget v2, Lcom/join/android/app/component/video/StandardVideoView;->C:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v15, v4, v14

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 230
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    .line 231
    invoke-virtual {v0, v3, v2, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_2c

    .line 232
    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$k1;

    goto/16 :goto_2c

    .line 233
    :pswitch_15
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$a2;

    .line 234
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 235
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    .line 236
    iget v4, v1, Lcom/join/mgps/adapter/r1;->m:I

    .line 237
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v13, :cond_22

    const/4 v5, 0x2

    if-eq v0, v5, :cond_21

    const/4 v5, 0x3

    if-eq v0, v5, :cond_20

    if-eq v0, v10, :cond_1f

    goto :goto_14

    .line 238
    :cond_1f
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f8

    goto :goto_14

    .line 239
    :cond_20
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f6

    goto :goto_14

    .line 240
    :cond_21
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_and_down()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f7

    goto :goto_14

    .line 241
    :cond_22
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f5

    .line 242
    :goto_14
    new-instance v0, Lcom/join/mgps/adapter/d1;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-direct {v0, v5, v3}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 243
    invoke-virtual {v0, v4}, Lcom/join/mgps/adapter/d1;->f(I)V

    .line 244
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$a2;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v3, :cond_23

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 246
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 247
    :cond_23
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$a2;->c:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c

    .line 248
    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$m1;

    .line 249
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_switch()I

    move-result v2

    if-ne v2, v13, :cond_24

    .line 250
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$m1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_15

    .line 251
    :cond_24
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$m1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    :goto_15
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$m1;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/adapter/r1$z;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/r1$z;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$m1;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/r1$a0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$a0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 254
    :pswitch_17
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$o1;

    .line 255
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/r1$b1;

    .line 256
    iget-object v3, v3, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/adapter/r1$d1;

    .line 257
    iget-boolean v4, v3, Lcom/join/mgps/adapter/r1$d1;->g:Z

    if-eqz v4, :cond_25

    .line 258
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$o1;->e:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$o1;->f:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 260
    :cond_25
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$o1;->e:Landroid/view/View;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$o1;->f:Landroid/view/View;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_16
    iget-object v4, v3, Lcom/join/mgps/adapter/r1$d1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 263
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_26

    .line 264
    iget-object v2, v2, Lcom/join/mgps/adapter/r1$o1;->a:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v3, v13, v0}, Lcom/join/mgps/adapter/r1;->E(Landroid/view/View;Lcom/join/mgps/adapter/r1$d1;ZI)V

    goto/16 :goto_2c

    .line 265
    :cond_26
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$o1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2c

    .line 266
    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$n1;

    .line 267
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_comment_count()Ljava/lang/String;

    .line 268
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$n1;->c:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$n1;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$n1;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$n1;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/adapter/r1$x;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$x;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 272
    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$s1;

    .line 273
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$s1;->d:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$t;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/adapter/r1$t;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$s1;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 275
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->m:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7248\u672c:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    \u66f4\u65b0\u65f6\u95f4:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->g:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->e:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 280
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17

    .line 282
    :cond_27
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    :goto_17
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 284
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    .line 286
    :cond_28
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    :goto_18
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 288
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_19

    .line 290
    :cond_29
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    :goto_19
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$s1;->j:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/r1$u;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/r1$u;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 294
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$s1;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$s1;->l:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/r1$w;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$w;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_2a
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 297
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$s1;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$s1;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$s1;->c:Landroid/widget/TextView;

    const-string v4, "\u542f\u52a8\u6570"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$s1;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 301
    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$y1;

    .line 302
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$y1;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/r1$p;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/r1$p;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$y1;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$y1;->a:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 304
    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$j1;

    .line 305
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAuxiliary_tool()Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 306
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 307
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    .line 308
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2b

    .line 309
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0807b1

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 310
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->h:Landroid/widget/TextView;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_2c

    .line 313
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0807b1

    invoke-static {v4, v6, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 314
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->i:Landroid/widget/TextView;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2d

    .line 317
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0807b1

    invoke-static {v4, v7, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 318
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->j:Landroid/widget/TextView;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    :cond_2d
    iget-object v4, v0, Lcom/join/mgps/adapter/r1$j1;->d:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/r1$l;

    invoke-direct {v5, v1, v3, v2}, Lcom/join/mgps/adapter/r1$l;-><init>(Lcom/join/mgps/adapter/r1;Ljava/util/List;Lcom/join/mgps/dto/GameDetialAuxiliaryBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$j1;->e:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$m;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/r1$m;-><init>(Lcom/join/mgps/adapter/r1;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$j1;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$n;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/r1$n;-><init>(Lcom/join/mgps/adapter/r1;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$j1;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/r1$o;

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/r1$o;-><init>(Lcom/join/mgps/adapter/r1;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 324
    :pswitch_1c
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$t1;

    .line 325
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 326
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 327
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$t1;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$t1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807b1

    invoke-static {v3, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 329
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$t1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v3

    if-nez v3, :cond_2e

    .line 331
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$t1;->d:Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 332
    :cond_2e
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$t1;->d:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :goto_1a
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$t1;->d:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/r1$i;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/adapter/r1$i;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v2, v2, Lcom/join/mgps/adapter/r1$t1;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/r1$j;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/r1$j;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 335
    :pswitch_1d
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$r1;

    .line 336
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 337
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 339
    iget v4, v0, Lcom/join/mgps/adapter/r1$b1;->c:I

    if-ne v4, v13, :cond_2f

    .line 340
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 341
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    const-string v5, "\u6536\u8d77"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 342
    :cond_2f
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 343
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    const-string v5, "\u5c55\u5f00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_1b
    new-instance v4, Lcom/join/mgps/adapter/r1$g;

    invoke-direct {v4, v1, v2, v2}, Lcom/join/mgps/adapter/r1$g;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$r1;Lcom/join/mgps/adapter/r1$r1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 345
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/r1$h;

    invoke-direct {v4, v1, v2, v0}, Lcom/join/mgps/adapter/r1$h;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$r1;Lcom/join/mgps/adapter/r1$b1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 346
    :pswitch_1e
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$w1;

    .line 347
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 348
    iget-object v2, v2, Lcom/join/mgps/adapter/r1$w1;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 349
    :pswitch_1f
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$v1;

    .line 350
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_prompt()Ljava/util/List;

    move-result-object v2

    .line 351
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$v1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 352
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x24

    .line 353
    invoke-virtual {v3, v4, v14, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 354
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 355
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08044a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 356
    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08044c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 357
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v4, v14, v14, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v5, v14, v14, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v2, :cond_59

    .line 359
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_59

    .line 360
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamePromptBean;

    if-eqz v6, :cond_31

    .line 361
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamePromptBean;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v6

    if-ne v6, v13, :cond_30

    const/4 v6, 0x0

    .line 364
    invoke-virtual {v7, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_30
    const/4 v6, 0x0

    .line 365
    invoke-virtual {v7, v5, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    const/16 v6, 0xa

    .line 366
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 367
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 368
    invoke-virtual {v7, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, -0x757576

    .line 369
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v6, v0, Lcom/join/mgps/adapter/r1$v1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 371
    :pswitch_20
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$g2;

    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 373
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 374
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iput-boolean v13, v1, Lcom/join/mgps/adapter/r1;->b:Z

    goto :goto_1e

    .line 376
    :cond_32
    iput-boolean v14, v1, Lcom/join/mgps/adapter/r1;->b:Z

    .line 377
    :goto_1e
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_33

    const/4 v4, 0x0

    .line 378
    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 379
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 380
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_34

    .line 381
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2c

    .line 382
    :cond_34
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 383
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    move-result v3

    .line 384
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 385
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 386
    :cond_35
    new-instance v4, Lcom/join/mgps/adapter/w0;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    iget-boolean v6, v1, Lcom/join/mgps/adapter/r1;->b:Z

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/join/mgps/adapter/w0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 387
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$g2;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/r1$e;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/r1$e;-><init>(Lcom/join/mgps/adapter/r1;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_2c

    .line 389
    :pswitch_21
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$d2;

    .line 390
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$d2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 391
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 392
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 393
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    if-eq v4, v5, :cond_36

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23"

    if-ne v4, v5, :cond_37

    :cond_36
    const-string v4, "\u5b89\u5353"

    .line 394
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    .line 395
    :cond_37
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 396
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "25"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "154"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_21

    .line 397
    :cond_38
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0274

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 398
    iget-object v5, v0, Lcom/join/mgps/adapter/r1$d2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f091005

    .line 399
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 400
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance v5, Lcom/join/mgps/adapter/r1$d;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/r1$d;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_20

    :cond_39
    :goto_21
    const/4 v6, 0x0

    goto/16 :goto_20

    .line 402
    :pswitch_22
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/adapter/r1$b2;

    .line 403
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 404
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b2;->a:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->t(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_22

    .line 405
    :cond_3a
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$b2;->c:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v11}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 406
    :goto_22
    iget-object v2, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v2

    if-ne v2, v13, :cond_3b

    .line 407
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$b2;->b:Landroid/widget/Button;

    const-string v3, "\u5df2\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$b2;->b:Landroid/widget/Button;

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_23

    .line 409
    :cond_3b
    iget-object v2, v0, Lcom/join/mgps/adapter/r1$b2;->b:Landroid/widget/Button;

    const-string v3, "\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :goto_23
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b2;->b:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/adapter/r1$c;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$c;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 411
    :pswitch_23
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$u1;

    .line 412
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 413
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->c:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->i:Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/join/mgps/adapter/r1;->p:Landroid/view/View;

    .line 416
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    if-ne v0, v13, :cond_3e

    .line 417
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0.00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 418
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    .line 420
    :cond_3c
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    :goto_24
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 422
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->e:Landroid/widget/TextView;

    const-string v3, "\u5df2\u67090\u4eba\u9884\u7ea6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 423
    :cond_3d
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u6709"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u4eba\u9884\u7ea6"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 424
    :cond_3e
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :try_start_8
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3f

    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 428
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_25

    :catch_8
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    :cond_3f
    :goto_25
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 431
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_40
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v0

    .line 434
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 435
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_26

    .line 436
    :cond_41
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->a(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 437
    :cond_42
    :goto_26
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->a(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u6682\u65e0\u8bc4\u5206"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->a(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->a(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "#8a8a8a"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    :goto_27
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$u1;->f:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v3, v14}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 441
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$u1;->f:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v3, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 442
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$u1;->f:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getTotal_stars()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 443
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->b(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_28

    .line 444
    :cond_43
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->b(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    :goto_28
    invoke-static {v2}, Lcom/join/mgps/adapter/r1$u1;->b(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/r1$y0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/r1$y0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 447
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_29

    .line 448
    :cond_44
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->h:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/r1$a;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/r1$a;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    :goto_29
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$u1;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/r1$b;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/r1$b;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2c

    .line 451
    :pswitch_24
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/r1$e2;

    .line 452
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/r1$b1;

    .line 453
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    const-string v4, "\u66f4\u591a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071167

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v14, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 457
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 459
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_59

    .line 461
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$e2;->a:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u7b80\u4ecb"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 464
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :cond_45
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u7f16\u8f91\u63a8\u8350"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 466
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_46
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u51fa\u62db\u8868"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u9009\u5173"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 468
    :cond_47
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 469
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$e2;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070f87

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 470
    :cond_48
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u91d1\u624b\u6307"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "#FFEFEFEF"

    const-string v5, ")"

    const-string v6, "\u5168\u90e8("

    if-eqz v3, :cond_49

    .line 471
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getGolden_finger()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 476
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/join/mgps/adapter/r1$k;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/r1$k;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    :cond_49
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v7, "\u5f00\u5408\u670d"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 478
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_server_state()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x3

    if-le v3, v7, :cond_4a

    .line 479
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/join/mgps/adapter/p1;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/p1;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :cond_4a
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v7, "\u6d3b\u52a8\u516c\u544a"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 482
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isHas_more_activities()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 483
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/join/mgps/adapter/n1;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/n1;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    :cond_4b
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v7, "\u4e91\u5b58\u6863"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 486
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCloud_archive_count()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 490
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$v;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$v;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :cond_4c
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u798f\u5229\u793c\u5305"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 492
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 493
    :cond_4d
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 494
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$g0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$g0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    :cond_4e
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u540c\u5382\u5546\u63a8\u8350"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 497
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_4f

    .line 498
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$r0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$r0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_4f
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u540c\u5382\u5546\u63a8\u8350"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 501
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_50
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u4e0b\u4e86\u8fd8\u4f1a\u4e0b"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 504
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :cond_51
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u6e38\u620f\u5355"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 507
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$u0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$u0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :cond_52
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u652f\u6301\u624b\u67c4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 510
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->f:Landroid/widget/ImageView;

    const v4, 0x7f08085e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 514
    iget-object v4, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0710ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 515
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u8d2d\u4e70"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v3

    .line 517
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 518
    iget-object v4, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/r1$v0;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/r1$v0;-><init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    :cond_53
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u793e\u533a\u8ba8\u8bba"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 520
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/r1$w0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/r1$w0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    :cond_54
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u540c\u7c7b\u6e38\u620f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 523
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    .line 525
    :cond_55
    iget-object v3, v2, Lcom/join/mgps/adapter/r1$e2;->d:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :goto_2a
    iget-object v3, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v4, "\u4e13\u5c5e\u798f\u5229"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 527
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->g:Landroid/widget/ImageView;

    const v3, 0x7f080226

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2b

    .line 529
    :cond_56
    iget-object v0, v0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    const-string v3, "\u5145\u503c\u8fd4\u5229"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 530
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->g:Landroid/widget/ImageView;

    const v3, 0x7f080224

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v0, v1, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 533
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    const-string v3, "\u8054\u7cfb\u5ba2\u670d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    const-string v3, "#f47500"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 536
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/r1$x0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/r1$x0;-><init>(Lcom/join/mgps/adapter/r1;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2b

    .line 538
    :cond_57
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    :cond_58
    :goto_2b
    iget-object v0, v2, Lcom/join/mgps/adapter/r1$e2;->e:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_59
    :goto_2c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c028a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/r1$k2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$k2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c028b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/adapter/r1$n2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$n2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0289

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/adapter/r1$h1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$h1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/r1$h2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$h2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/join/mgps/adapter/r1$x1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$x1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0137

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/join/mgps/adapter/r1$e1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$e1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 13
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0143

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/r1$l2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$l2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0138

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/join/mgps/adapter/r1$f1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$f1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 17
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    new-instance p2, Lcom/join/mgps/adapter/r1$i2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$i2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 19
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/adapter/r1$i1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$i1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 21
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0283

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 22
    new-instance p2, Lcom/join/mgps/adapter/r1$g2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$g2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 23
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c028d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/join/mgps/adapter/r1$g1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$g1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 25
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c029a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/join/mgps/adapter/r1$j2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$j2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 27
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0105

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/join/mgps/adapter/r1$a1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$a1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 29
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c029b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance p2, Lcom/join/mgps/adapter/r1$m2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$m2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 31
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/join/mgps/adapter/r1$z1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$z1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 33
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0273

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/join/mgps/adapter/r1$c2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$c2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 35
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/join/mgps/adapter/r1$q1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$q1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 37
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/join/mgps/adapter/r1$p1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$p1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 39
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/join/mgps/adapter/r1$f2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$f2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 41
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0255

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/join/mgps/adapter/r1$k1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$k1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 43
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0260

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/join/mgps/adapter/r1$a2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$a2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 45
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0258

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/join/mgps/adapter/r1$m1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$m1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 47
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0257

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/join/mgps/adapter/r1$o1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$o1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 49
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0256

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/join/mgps/adapter/r1$l1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$l1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 51
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0271

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/join/mgps/adapter/r1$n1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$n1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 53
    :pswitch_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/join/mgps/adapter/r1$s1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$s1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 55
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/join/mgps/adapter/r1$y1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$y1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 57
    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0254

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/join/mgps/adapter/r1$j1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$j1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 59
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0261

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/join/mgps/adapter/r1$t1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$t1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 61
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0259

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/join/mgps/adapter/r1$r1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$r1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 63
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0270

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/join/mgps/adapter/r1$w1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$w1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 65
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/join/mgps/adapter/r1$v1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$v1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto :goto_0

    .line 67
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0280

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/join/mgps/adapter/r1$g2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$g2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto :goto_0

    .line 69
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0278

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/join/mgps/adapter/r1$d2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$d2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto :goto_0

    .line 71
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0272

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/join/mgps/adapter/r1$b2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$b2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto :goto_0

    .line 73
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0263

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/join/mgps/adapter/r1$u1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$u1;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    goto :goto_0

    .line 75
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/join/mgps/adapter/r1$e2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/r1$e2;-><init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/r1$b1;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/r1$b1;

    new-instance v1, Lcom/join/mgps/adapter/r1$d1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/join/mgps/adapter/r1$d1;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    const/16 p1, 0xf

    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/adapter/r1$b1;-><init>(Lcom/join/mgps/adapter/r1;Ljava/lang/Object;I)V

    return-object v0
.end method

.method q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :goto_0
    return-void
.end method

.method r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/r1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110114

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/r1;->S(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110115

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/r1;->S(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/r1;->q()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/r1;->q()V

    :goto_1
    return-void
.end method

.method public s()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->p:Landroid/view/View;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->q:Ljava/util/List;

    return-object v0
.end method

.method public v(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/r1;->m:I

    return v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/r1$b1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1;->n:Ljava/util/List;

    return-object v0
.end method
