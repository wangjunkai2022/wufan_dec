.class public Lcom/join/mgps/adapter/l1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/l1$k1;,
        Lcom/join/mgps/adapter/l1$r1;,
        Lcom/join/mgps/adapter/l1$e3;,
        Lcom/join/mgps/adapter/l1$i1;,
        Lcom/join/mgps/adapter/l1$j1;,
        Lcom/join/mgps/adapter/l1$o1;,
        Lcom/join/mgps/adapter/l1$m1;,
        Lcom/join/mgps/adapter/l1$u1;,
        Lcom/join/mgps/adapter/l1$x2;,
        Lcom/join/mgps/adapter/l1$y2;,
        Lcom/join/mgps/adapter/l1$b3;,
        Lcom/join/mgps/adapter/l1$a3;,
        Lcom/join/mgps/adapter/l1$d3;,
        Lcom/join/mgps/adapter/l1$w1;,
        Lcom/join/mgps/adapter/l1$t1;,
        Lcom/join/mgps/adapter/l1$y1;,
        Lcom/join/mgps/adapter/l1$v1;,
        Lcom/join/mgps/adapter/l1$z2;,
        Lcom/join/mgps/adapter/l1$c3;,
        Lcom/join/mgps/adapter/l1$p2;,
        Lcom/join/mgps/adapter/l1$s2;,
        Lcom/join/mgps/adapter/l1$v2;,
        Lcom/join/mgps/adapter/l1$c2;,
        Lcom/join/mgps/adapter/l1$a2;,
        Lcom/join/mgps/adapter/l1$g2;,
        Lcom/join/mgps/adapter/l1$f2;,
        Lcom/join/mgps/adapter/l1$q2;,
        Lcom/join/mgps/adapter/l1$e2;,
        Lcom/join/mgps/adapter/l1$b2;,
        Lcom/join/mgps/adapter/l1$d2;,
        Lcom/join/mgps/adapter/l1$i2;,
        Lcom/join/mgps/adapter/l1$n2;,
        Lcom/join/mgps/adapter/l1$o2;,
        Lcom/join/mgps/adapter/l1$z1;,
        Lcom/join/mgps/adapter/l1$j2;,
        Lcom/join/mgps/adapter/l1$h2;,
        Lcom/join/mgps/adapter/l1$m2;,
        Lcom/join/mgps/adapter/l1$l2;,
        Lcom/join/mgps/adapter/l1$w2;,
        Lcom/join/mgps/adapter/l1$s1;,
        Lcom/join/mgps/adapter/l1$t2;,
        Lcom/join/mgps/adapter/l1$r2;,
        Lcom/join/mgps/adapter/l1$k2;,
        Lcom/join/mgps/adapter/l1$x1;,
        Lcom/join/mgps/adapter/l1$u2;,
        Lcom/join/mgps/adapter/l1$f3;,
        Lcom/join/mgps/adapter/l1$q1;,
        Lcom/join/mgps/adapter/l1$l1;,
        Lcom/join/mgps/adapter/l1$p1;,
        Lcom/join/mgps/adapter/l1$n1;
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
.field private static final t:Ljava/lang/String; = "GameDetialModleFourAda"


# instance fields
.field private a:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private b:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

.field private c:Landroid/content/Context;

.field d:Z

.field e:Lcom/join/mgps/adapter/l1$p1;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/danikula/videocache/i;

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

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field m:Ll1/f;

.field n:Lcom/join/android/app/component/video/c;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/l1$n1;",
            ">;"
        }
    .end annotation
.end field

.field p:J

.field private q:Landroid/view/View;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/join/mgps/adapter/l1$k1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/GamedetialModleFourBean;Lcom/join/android/app/component/video/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/l1;->d:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/join/mgps/adapter/l1;->e:Lcom/join/mgps/adapter/l1$p1;

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/adapter/l1;->k:Z

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/adapter/l1;->p:J

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/l1;->r:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/l1$k1;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/l1$k1;-><init>(Lcom/join/mgps/adapter/l1;)V

    iput-object v0, p0, Lcom/join/mgps/adapter/l1;->s:Lcom/join/mgps/adapter/l1$k1;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l1;->w(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->g:Lcom/danikula/videocache/i;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->h:Ljava/util/Map;

    .line 14
    iput-object p3, p0, Lcom/join/mgps/adapter/l1;->n:Lcom/join/android/app/component/video/c;

    return-void
.end method

.method private synthetic A(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BTActivityBean;->getJump_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->P0(Landroid/content/Context;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;->a(Ljava/lang/String;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    const-class v1, Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic D(Landroid/view/View;)V
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

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/adapter/l1;->r(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private F(Landroid/view/View;Lcom/join/mgps/adapter/l1$r1;ZI)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1
    iget-object v9, v8, Lcom/join/mgps/adapter/l1$r1;->a:Ljava/lang/String;

    .line 2
    iget v10, v8, Lcom/join/mgps/adapter/l1$r1;->e:I

    .line 3
    iget-boolean v11, v8, Lcom/join/mgps/adapter/l1$r1;->f:Z

    .line 4
    iget-object v12, v8, Lcom/join/mgps/adapter/l1$r1;->b:Lcom/join/mgps/dto/InformationCommentBean;

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
    iget-object v1, v7, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/adapter/l1$x0;

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

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/l1$x0;-><init>(Lcom/join/mgps/adapter/l1;IILjava/lang/String;Lcom/join/mgps/adapter/l1$r1;)V

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
    new-instance v0, Lcom/join/mgps/adapter/l1$y0;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v15

    move-object v4, v12

    move-object v5, v9

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/l1$y0;-><init>(Lcom/join/mgps/adapter/l1;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;I)V

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
    invoke-direct {v7, v8, v0}, Lcom/join/mgps/adapter/l1;->N(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
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

.method private N(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/l1$z0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/l1$z0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/l1$a1;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/l1$a1;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private P(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/l1$b1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/l1$b1;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Q(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/l1$w0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/l1$w0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/InformationCommentBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private R(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/l1$d1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/l1$d1;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/l1;->A(Lcom/join/mgps/dto/BTActivityBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->C(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1;->b:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/l1;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/l1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/l1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/adapter/l1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/l1;->i:I

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    const-class v1, Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/l1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/l1;->j:I

    return p1
.end method

.method private u(I)Lcom/join/mgps/dto/CommentBaseBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/l1$n1;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    return-object p1
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
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


# virtual methods
.method public E(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/l1;->j:I

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/l1;->i:I

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/l1;->s:Lcom/join/mgps/adapter/l1$k1;

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
    iget-object v2, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

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
    iget-object v7, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/l1;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/l1;->s:Lcom/join/mgps/adapter/l1$k1;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public G(II)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method public H(II)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method public I(Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->b:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    return-void
.end method

.method J(Lcom/join/mgps/adapter/l1$n1;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/adapter/l1$r1;

    .line 2
    iput-boolean p2, p1, Lcom/join/mgps/adapter/l1$r1;->g:Z
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

.method public K(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method

.method public L(Ll1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->m:Ll1/f;

    return-void
.end method

.method public M(Lcom/join/mgps/adapter/l1$p1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->e:Lcom/join/mgps/adapter/l1$p1;

    return-void
.end method

.method public S(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/l1;->r:Ljava/util/List;

    return-void
.end method

.method public T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/l1;->l:I

    return-void
.end method

.method U()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShareData;->getShare_switch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getShare_config()Lcom/join/mgps/dto/DetialShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShareData;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setIntentData(Lcom/join/mgps/dto/BannerBean;)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    return-void
.end method

.method V(Landroid/content/Context;Ljava/lang/String;)V
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

.method public W(I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method public X(I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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

.method Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1}, Lcom/join/mgps/adapter/l1$e3;->g(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/l1$e3;->d(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->o:Landroid/widget/TextView;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/l1$e3;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->o:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    invoke-static {p1}, Lcom/join/mgps/adapter/l1$e3;->g(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    :goto_1
    invoke-static {p1}, Lcom/join/mgps/adapter/l1$e3;->d(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/l1$n1;

    .line 2
    iget p1, p1, Lcom/join/mgps/adapter/l1$n1;->b:I

    return p1
.end method

.method public n(I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/l1;->u(I)Lcom/join/mgps/dto/CommentBaseBean;

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
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/l1;->getItemViewType(I)I

    move-result v3

    const-string v5, ")"

    const-string v6, "1"

    const-string v7, "\u5b89\u88c5"

    const-string v10, "M"

    const v11, 0x7f1100d2

    const v12, 0x7f0807b1

    const/4 v14, -0x2

    const-string v15, ""

    const/16 v8, 0x8

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_37

    .line 2
    :pswitch_1
    check-cast v0, Lcom/join/mgps/adapter/l1$s1;

    .line 3
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 4
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->f:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/join/mgps/adapter/l1$s1;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 5
    :pswitch_2
    check-cast v0, Lcom/join/mgps/adapter/l1$j1;

    .line 6
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 9
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_79

    .line 10
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f071065

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 11
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0711ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v17, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/TipBean;

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v7, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    iget-object v9, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0710cc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v17, :cond_1

    .line 18
    iget-object v9, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0710f8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 19
    :cond_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, -0x1

    .line 20
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v8, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07111a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 24
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 25
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 26
    iget-object v9, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0711ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 27
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 28
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_2
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$j1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 30
    :pswitch_3
    check-cast v0, Lcom/join/mgps/adapter/l1$i1;

    .line 31
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 32
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 33
    check-cast v2, Lcom/join/mgps/dto/BtGameWelfare;

    .line 34
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i1;->a:Lcom/join/mgps/customview/ActivityTabView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i1;->a:Lcom/join/mgps/customview/ActivityTabView;

    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/ActivityTabView;->update(Lcom/join/mgps/dto/BtGameWelfare;)V

    .line 36
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$i1;->a:Lcom/join/mgps/customview/ActivityTabView;

    new-instance v2, Lcom/join/mgps/adapter/l1$v0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$v0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/ActivityTabView;->setListener(Lcom/join/mgps/customview/ActivityTabView$d;)V

    goto/16 :goto_37

    .line 37
    :cond_3
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$i1;->a:Lcom/join/mgps/customview/ActivityTabView;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_37

    .line 38
    :pswitch_4
    move-object v3, v0

    check-cast v3, Lcom/join/mgps/adapter/l1$e3;

    .line 39
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 40
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v14, 0x0

    .line 44
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v14, v9, :cond_4

    .line 45
    new-instance v9, Lcom/join/mgps/dto/ImageInfo;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 46
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 47
    iget-object v6, v3, Lcom/join/mgps/adapter/l1$e3;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 48
    :cond_5
    iget-object v9, v3, Lcom/join/mgps/adapter/l1$e3;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v9

    .line 50
    new-instance v10, Lcom/join/mgps/adapter/e1;

    iget-object v13, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-direct {v10, v13, v9, v6}, Lcom/join/mgps/adapter/e1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    iget-object v9, v3, Lcom/join/mgps/adapter/l1$e3;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v9, v10}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v9, v3, Lcom/join/mgps/adapter/l1$e3;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v10, Lcom/join/mgps/adapter/l1$t0;

    invoke-direct {v10, v1, v6}, Lcom/join/mgps/adapter/l1$t0;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 53
    :goto_2
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->a(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v9, Lcom/join/mgps/adapter/l1$u0;

    invoke-direct {v9, v1, v2}, Lcom/join/mgps/adapter/l1$u0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->b(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 56
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object v6

    iget-object v9, v3, Lcom/join/mgps/adapter/l1$e3;->r:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v6, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->z(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 57
    iget-object v6, v3, Lcom/join/mgps/adapter/l1$e3;->o:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v6, v3, Lcom/join/mgps/adapter/l1$e3;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v6, 0x0

    goto :goto_4

    .line 59
    :cond_7
    :goto_3
    iget-object v6, v3, Lcom/join/mgps/adapter/l1$e3;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v6, v3, Lcom/join/mgps/adapter/l1$e3;->o:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v6, v3, Lcom/join/mgps/adapter/l1$e3;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v6, 0x1

    .line 62
    :goto_4
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->c(Lcom/join/mgps/adapter/l1$e3;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 64
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->c(Lcom/join/mgps/adapter/l1$e3;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v9

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double v9, v9, v12

    mul-double v9, v9, v12

    double-to-long v9, v9

    .line 66
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v19

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v21

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v22

    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->d(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object v23

    iget-object v12, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    move-object/from16 v24, v12

    invoke-static/range {v18 .. v24}, Lcom/join/mgps/Util/UtilsMy;->y(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v12

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12, v0, v5}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v13}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v12, 0x7f080a62

    const v13, 0x7f06002a

    if-eqz v0, :cond_8

    .line 69
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u5f00\u59cb"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->d(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    :cond_8
    const v0, 0x7f060030

    const v8, 0x7f080a67

    if-nez v5, :cond_d

    .line 74
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v7, v6}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 75
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 76
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v5

    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 77
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    if-eqz v4, :cond_b

    .line 78
    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v4

    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 80
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "\u66f4\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 84
    :cond_a
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f080a6e

    .line 85
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 88
    :cond_b
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 91
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->f(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 92
    :cond_c
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 95
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->f(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 96
    :cond_d
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_e

    const/16 v4, 0x2b

    :cond_e
    if-eqz v4, :cond_14

    const/16 v14, 0x1b

    if-eq v4, v14, :cond_13

    const/16 v14, 0x30

    if-eq v4, v14, :cond_12

    const-string v14, "/"

    const/4 v15, 0x2

    if-eq v4, v15, :cond_11

    const/4 v15, 0x3

    if-eq v4, v15, :cond_10

    const/4 v15, 0x5

    if-eq v4, v15, :cond_f

    const/4 v15, 0x6

    if-eq v4, v15, :cond_10

    const/4 v15, 0x7

    if-eq v4, v15, :cond_14

    const/16 v15, 0x2a

    if-eq v4, v15, :cond_f

    const/16 v11, 0x2b

    if-eq v4, v11, :cond_14

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_8

    .line 98
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v0, v4, v6}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 99
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->p:Landroid/widget/TextView;

    const-string v4, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f080a7b

    .line 103
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 104
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 106
    :pswitch_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v0, v4, v6}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 107
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->p:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0803ca

    .line 111
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 114
    :pswitch_7
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 115
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 118
    :pswitch_8
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u7b49\u5f85"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v0, v4}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 123
    :try_start_0
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_6
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->p:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 127
    :pswitch_9
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "\u66f4\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 132
    :cond_f
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f080a6e

    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 137
    :cond_10
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u7ee7\u7eed"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v0, v4}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 142
    :try_start_1
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :goto_7
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->p:Landroid/widget/TextView;

    const-string v4, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 146
    :cond_11
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 147
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u6682\u505c"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v0, v4}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 152
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->p:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/S"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, v3, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8

    .line 155
    :cond_12
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 156
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v0, v4}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_8

    .line 159
    :cond_13
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 160
    :cond_14
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 162
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 164
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->f(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 165
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/join/mgps/adapter/l1;->Y(Lcom/join/mgps/adapter/l1$e3;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 166
    :goto_8
    invoke-static {v3}, Lcom/join/mgps/adapter/l1$e3;->f(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/l1$l1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lcom/join/mgps/adapter/l1$l1;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    .line 167
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 168
    :pswitch_a
    check-cast v0, Lcom/join/mgps/adapter/l1$o1;

    .line 169
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 170
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 171
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$o1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/z0;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v4, 0x1

    :cond_15
    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->e:Lcom/join/mgps/adapter/l1$p1;

    invoke-direct {v3, v5, v4, v2, v6}, Lcom/join/mgps/adapter/z0;-><init>(Landroid/content/Context;ZLjava/util/List;Lcom/join/mgps/adapter/l1$p1;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_37

    .line 172
    :pswitch_b
    check-cast v0, Lcom/join/mgps/adapter/l1$x1;

    .line 173
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 174
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$x1;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    iget-object v5, v2, Lcom/join/mgps/adapter/l1$n1;->f:Ljava/lang/Object;

    if-eqz v5, :cond_16

    .line 176
    check-cast v5, Ljava/lang/String;

    .line 177
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x1;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x1;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07110f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_9

    .line 180
    :cond_16
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$x1;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_9
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 182
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$x1;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 184
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$x1;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 185
    :pswitch_c
    check-cast v0, Lcom/join/mgps/adapter/l1$a3;

    .line 186
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 187
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/BTActivityBean;

    .line 188
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$a3;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BTActivityBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$a3;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BTActivityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$a3;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BTActivityBean;->getSub_head()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$a3;->d:Landroid/view/View;

    new-instance v3, Lcom/join/mgps/adapter/k1;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/k1;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/BTActivityBean;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 192
    :pswitch_d
    check-cast v0, Lcom/join/mgps/adapter/l1$d3;

    .line 193
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 194
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/ServiceState;

    .line 195
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$d3;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    const-string v4, "\u5f00\u670d"

    goto :goto_a

    :cond_17
    const-string v4, "\u5408\u670d"

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$d3;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/x;->C(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$d3;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v4

    const-string v6, "HH:mm"

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/x;->x(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$d3;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 199
    :pswitch_e
    check-cast v0, Lcom/join/mgps/adapter/l1$w1;

    .line 200
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 201
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 202
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$w1;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f20\u4ee3\u91d1\u5238\u53ef\u9886\u53d6"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$w1;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/h1;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/h1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 204
    :pswitch_f
    :try_start_2
    check-cast v0, Lcom/join/mgps/adapter/l1$x2;

    .line 205
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 206
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 207
    new-instance v3, Lcom/join/mgps/adapter/g1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/g1;-><init>(Lcom/join/mgps/adapter/l1;)V

    const/4 v5, 0x0

    .line 208
    :goto_b
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    if-eqz v6, :cond_79

    array-length v6, v6

    if-ge v5, v6, :cond_79

    if-eqz v2, :cond_19

    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v5, :cond_18

    goto :goto_c

    .line 210
    :cond_18
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    aget-object v6, v6, v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    .line 213
    :cond_19
    :goto_c
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    aget-object v6, v6, v5

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :catch_2
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 215
    :pswitch_10
    check-cast v0, Lcom/join/mgps/adapter/l1$n2;

    .line 216
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$n2;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$w;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/l1$w;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$n2;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 218
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$n2;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1a
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 220
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 221
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u70ed\u5ea6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 225
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    .line 227
    :cond_1b
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    :goto_e
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 229
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f

    .line 231
    :cond_1c
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :goto_f
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 233
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 235
    :cond_1d
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    :goto_10
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->k:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/l1$x;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$x;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    const-string v5, "46"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 239
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->m:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/l1$y;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/l1$y;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_1e
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

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

    if-eqz v3, :cond_79

    .line 242
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n2;->e:Landroid/widget/TextView;

    const-string v4, "\u542f\u52a8\u6570"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$n2;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 246
    :pswitch_11
    :try_start_3
    check-cast v0, Lcom/join/mgps/adapter/l1$t1;

    .line 247
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$t1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/k;

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCheck_point()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/join/mgps/adapter/k;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$t1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/l1$m0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$m0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_37

    :catch_3
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 250
    :pswitch_12
    :try_start_4
    check-cast v0, Lcom/join/mgps/adapter/l1$b3;

    .line 251
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getOne_touch_skill()Ljava/util/List;

    move-result-object v2

    .line 252
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    iget-object v3, v0, Lcom/join/mgps/adapter/l1$b3;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 253
    :cond_1f
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$b3;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setData(Ljava/util/List;)V

    .line 254
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->b:Landroidx/viewpager/widget/ViewPager;

    instance-of v3, v2, Lcom/join/mgps/customview/MViewpagerV4;

    if-eqz v3, :cond_20

    .line 255
    check-cast v2, Lcom/join/mgps/customview/MViewpagerV4;

    invoke-virtual {v2, v4}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V

    .line 256
    :cond_20
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->b:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->s:Lcom/join/mgps/adapter/l1$k1;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 257
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget-object v3, v0, Lcom/join/mgps/adapter/l1$b3;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 258
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_21

    .line 259
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iget v3, v1, Lcom/join/mgps/adapter/l1;->i:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 260
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/l1$k0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$k0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 261
    :cond_21
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->b:Landroidx/viewpager/widget/ViewPager;

    iget v3, v1, Lcom/join/mgps/adapter/l1;->j:I

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 262
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$b3;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    new-instance v3, Lcom/join/mgps/adapter/l1$l0;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/l1$l0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$b3;)V

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_37

    :catch_4
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 264
    :pswitch_13
    :try_start_5
    check-cast v0, Lcom/join/mgps/adapter/l1$u1;

    .line 265
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 266
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/GameDetailCloudArchive;

    if-nez v2, :cond_22

    return-void

    .line 267
    :cond_22
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getHideTop()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_23

    .line 268
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u1;->b:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 269
    :cond_23
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u1;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :goto_11
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 271
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u1;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u1;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getAuth()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u1;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getPraise_count()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetailCloudArchive;->getDivider()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 275
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u1;->a:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 276
    :cond_24
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u1;->a:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :goto_12
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/l1$o0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$o0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_37

    :catch_5
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 279
    :pswitch_14
    :try_start_6
    check-cast v0, Lcom/join/mgps/adapter/l1$y2;

    .line 280
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 281
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 282
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$y2;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$y2;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/l1$n0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$n0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_37

    :catch_6
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 285
    :pswitch_15
    check-cast v0, Lcom/join/mgps/adapter/l1$y1;

    .line 286
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$y1;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/l;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_favorites_top5()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/l;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_37

    .line 287
    :pswitch_16
    check-cast v0, Lcom/join/mgps/adapter/l1$w2;

    .line 288
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v2

    .line 289
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_25

    .line 290
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_37

    .line 291
    :cond_25
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 292
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    .line 293
    new-instance v3, Lcom/join/mgps/adapter/b1;

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/b1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 294
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/l1$i;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/l1$i;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_37

    .line 296
    :pswitch_17
    check-cast v0, Lcom/join/mgps/adapter/l1$v1;

    .line 297
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$v1;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$e0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$e0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$v1;->c:Landroid/widget/TextView;

    const-string v3, "\u5199\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$v1;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$v1;->d:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$v1;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_37

    .line 302
    :pswitch_18
    :try_start_7
    check-cast v0, Lcom/join/mgps/adapter/l1$m1;

    .line 303
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/l1$n1;

    .line 304
    iget-object v3, v3, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 305
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->s(Lcom/join/mgps/adapter/l1$m1;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->t(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v7, -0x1000000

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v5

    if-lez v5, :cond_26

    .line 308
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->t(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0603cf

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    :cond_26
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v5

    if-lez v5, :cond_27

    .line 310
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->t(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0603d0

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    :cond_27
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->u(Lcom/join/mgps/adapter/l1$m1;)Lcom/join/mgps/customview/VipView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    move-result v7

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    move-result v9

    invoke-virtual {v5, v7, v9}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 312
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

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

    if-eqz v5, :cond_28

    .line 313
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->a(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 314
    :cond_28
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->a(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_13
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->b(Lcom/join/mgps/adapter/l1$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    new-instance v7, Lcom/join/mgps/adapter/l1$p0;

    invoke-direct {v7, v1, v3}, Lcom/join/mgps/adapter/l1$p0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 317
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2a

    .line 318
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v5

    if-nez v5, :cond_29

    .line 319
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->c(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->c(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u542f\u52a8\u6e38\u620f "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \u6b21"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 321
    :cond_29
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->c(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    .line 322
    :cond_2a
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->c(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    :goto_14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ne v5, v7, :cond_2b

    .line 324
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 325
    :cond_2b
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_15
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->t(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2d

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 328
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_16

    .line 329
    :cond_2c
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->e(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->e(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 331
    :cond_2d
    :goto_16
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->e(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_17
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->f(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->g(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->h(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "000"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 336
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->i(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v9, v10}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2f

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_2f

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 338
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_18

    .line 339
    :cond_2e
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->j(Lcom/join/mgps/adapter/l1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->j(Lcom/join/mgps/adapter/l1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 341
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->j(Lcom/join/mgps/adapter/l1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_19

    .line 342
    :cond_2f
    :goto_18
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->j(Lcom/join/mgps/adapter/l1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :goto_19
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->j(Lcom/join/mgps/adapter/l1$m1;)Lcom/join/mgps/customview/MStarBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 344
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 345
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v9, 0x4051800000000000L    # 70.0

    cmpl-double v7, v5, v9

    if-lez v7, :cond_30

    .line 346
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->k(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    .line 347
    :cond_30
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->k(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    :goto_1a
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 349
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->l(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    .line 350
    :cond_31
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->l(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    :goto_1b
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->m(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 353
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->n(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f080ca5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    .line 354
    :cond_32
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->n(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f080ca0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    :goto_1c
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    .line 356
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->o(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f08038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 357
    :cond_33
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->o(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f08038d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    :goto_1d
    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->b(Lcom/join/mgps/adapter/l1$m1;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 359
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->n(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->f(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/join/mgps/adapter/l1;->P(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 360
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->o(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->g(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/join/mgps/adapter/l1;->R(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 361
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->p(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/l1;->O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 362
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->q(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/join/mgps/adapter/l1;->O(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 363
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/l1$q0;

    invoke-direct {v5, v1, v0, v2}, Lcom/join/mgps/adapter/l1$q0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$m1;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 364
    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/l1$s0;

    invoke-direct {v5, v1, v0, v2, v3}, Lcom/join/mgps/adapter/l1$s0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$m1;ILcom/join/mgps/dto/CommentBaseBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_37

    :catch_7
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 366
    :pswitch_19
    :try_start_8
    check-cast v0, Lcom/join/mgps/adapter/l1$c3;

    .line 367
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$c3;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u609f\u996d\u73a9\u5bb6\u4ea4\u6d41\u7fa4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$c3;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/l1$j0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$j0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_37

    :catch_8
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 370
    :pswitch_1a
    :try_start_9
    check-cast v0, Lcom/join/mgps/adapter/l1$p2;

    .line 371
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v3

    .line 373
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$p2;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$p2;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getSub_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 376
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$p2;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$i0;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/l1$i0;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_37

    :catch_9
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 378
    :pswitch_1b
    check-cast v0, Lcom/join/mgps/adapter/l1$s2;

    .line 379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_34

    .line 380
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$s2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_37

    .line 381
    :cond_34
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$s2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_37

    .line 382
    :pswitch_1c
    check-cast v0, Lcom/join/mgps/adapter/l1$g2;

    .line 383
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 384
    new-instance v3, Lcom/join/mgps/adapter/d1;

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 385
    iget v4, v1, Lcom/join/mgps/adapter/l1;->l:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/d1;->f(I)V

    .line 386
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$g2;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_79

    .line 387
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 388
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_37

    .line 391
    :pswitch_1d
    check-cast v0, Lcom/join/mgps/adapter/l1$f2;

    .line 392
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    .line 393
    new-instance v3, Lcom/join/mgps/adapter/d1;

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 394
    iget v4, v1, Lcom/join/mgps/adapter/l1;->l:I

    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/d1;->f(I)V

    .line 395
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$f2;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v2, :cond_79

    .line 396
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 397
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 398
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_37

    .line 400
    :pswitch_1e
    check-cast v0, Lcom/join/mgps/adapter/l1$v2;

    .line 401
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 402
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 404
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f080168

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 405
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 406
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    :cond_35
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 408
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v5, v5, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 409
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 410
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    const-string v6, "GameDetialModleFourAdapter"

    invoke-virtual {v5, v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 411
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v5, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 412
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$v2;->b:Lcom/join/android/app/component/video/StandardVideoView;

    sget v2, Lcom/join/android/app/component/video/StandardVideoView;->C:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v15, v5, v4

    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 413
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 414
    invoke-virtual {v0, v3, v2, v5}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 415
    :pswitch_1f
    check-cast v0, Lcom/join/mgps/adapter/l1$a2;

    goto/16 :goto_37

    .line 416
    :pswitch_20
    check-cast v0, Lcom/join/mgps/adapter/l1$q2;

    .line 417
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 418
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    .line 419
    iget v4, v1, Lcom/join/mgps/adapter/l1;->l:I

    .line 420
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_39

    const/4 v5, 0x2

    if-eq v2, v5, :cond_38

    const/4 v5, 0x3

    if-eq v2, v5, :cond_37

    const/4 v5, 0x4

    if-eq v2, v5, :cond_36

    goto :goto_1e

    .line 421
    :cond_36
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f8

    goto :goto_1e

    .line 422
    :cond_37
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f6

    goto :goto_1e

    .line 423
    :cond_38
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_and_down()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f7

    goto :goto_1e

    .line 424
    :cond_39
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x33f5

    .line 425
    :goto_1e
    new-instance v2, Lcom/join/mgps/adapter/d1;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 426
    invoke-virtual {v2, v4}, Lcom/join/mgps/adapter/d1;->f(I)V

    .line 427
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$q2;->b:Lcom/join/mgps/customview/MyGridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v3, :cond_3a

    .line 428
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 429
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 430
    :cond_3a
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q2;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_37

    .line 431
    :pswitch_21
    check-cast v0, Lcom/join/mgps/adapter/l1$c2;

    .line 432
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_switch()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 433
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$c2;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1f

    .line 434
    :cond_3b
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$c2;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    :goto_1f
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$c2;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/adapter/l1$f0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$f0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$c2;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/l1$h0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$h0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 437
    :pswitch_22
    check-cast v0, Lcom/join/mgps/adapter/l1$e2;

    .line 438
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/l1$n1;

    .line 439
    iget-object v3, v3, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/adapter/l1$r1;

    .line 440
    iget-boolean v5, v3, Lcom/join/mgps/adapter/l1$r1;->g:Z

    if-eqz v5, :cond_3c

    .line 441
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$e2;->e:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$e2;->f:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 443
    :cond_3c
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$e2;->e:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$e2;->f:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :goto_20
    iget-object v4, v3, Lcom/join/mgps/adapter/l1$r1;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 446
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 447
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$e2;->a:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/join/mgps/adapter/l1;->F(Landroid/view/View;Lcom/join/mgps/adapter/l1$r1;ZI)V

    goto/16 :goto_37

    .line 448
    :cond_3d
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$e2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_37

    .line 449
    :pswitch_23
    check-cast v0, Lcom/join/mgps/adapter/l1$d2;

    .line 450
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_comment_count()Ljava/lang/String;

    .line 451
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$d2;->d:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$d2;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$d2;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$d2;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/adapter/l1$c0;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$c0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$d2;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/adapter/l1$d0;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$d0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 456
    :pswitch_24
    check-cast v0, Lcom/join/mgps/adapter/l1$i2;

    .line 457
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$i2;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$z;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/l1$z;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$i2;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v2

    .line 459
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->m:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7248\u672c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    \u66f4\u65b0\u65f6\u95f4:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u70ed\u5ea6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCurrent_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 464
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21

    .line 466
    :cond_3e
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    :goto_21
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 468
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getCompany_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_22

    .line 470
    :cond_3f
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    :goto_22
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 472
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getMobile_phone_system_ver()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_23

    .line 474
    :cond_40
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    :goto_23
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getUpgrade_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->j:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/l1$a0;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$a0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    const-string v5, "46"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 478
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->l:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/l1$b0;

    invoke-direct {v4, v1}, Lcom/join/mgps/adapter/l1$b0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    :cond_41
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

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

    if-eqz v3, :cond_79

    .line 481
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$i2;->c:Landroid/widget/TextView;

    const-string v4, "\u542f\u52a8\u6570"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$i2;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreBean;->getDownloads_count()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 485
    :pswitch_25
    check-cast v0, Lcom/join/mgps/adapter/l1$o2;

    .line 486
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$o2;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$u;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/l1$u;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$o2;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$o2;->a:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 488
    :pswitch_26
    check-cast v0, Lcom/join/mgps/adapter/l1$z1;

    .line 489
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAuxiliary_tool()Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 490
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 491
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDetialAuxiliaryBean;->getData()Ljava/util/List;

    move-result-object v3

    .line 492
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_42

    .line 493
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v12, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 494
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->h:Landroid/widget/TextView;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    :cond_42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_43

    .line 497
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v12, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 498
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->i:Landroid/widget/TextView;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    :cond_43
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_44

    .line 501
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getPic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v12, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 502
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->j:Landroid/widget/TextView;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$z1;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    :cond_44
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$z1;->d:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/l1$q;

    invoke-direct {v5, v1, v3, v2}, Lcom/join/mgps/adapter/l1$q;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;Lcom/join/mgps/dto/GameDetialAuxiliaryBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$z1;->e:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/l1$r;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/l1$r;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$z1;->f:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/adapter/l1$s;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/l1$s;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$z1;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/l1$t;

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/l1$t;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 508
    :pswitch_27
    check-cast v0, Lcom/join/mgps/adapter/l1$j2;

    .line 509
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 510
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 511
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j2;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 513
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j2;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v3

    if-nez v3, :cond_45

    .line 515
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j2;->d:Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 516
    :cond_45
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j2;->d:Landroid/widget/TextView;

    const-string v4, "\u67e5\u770b"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :goto_24
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$j2;->d:Landroid/widget/TextView;

    new-instance v4, Lcom/join/mgps/adapter/l1$o;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/l1$o;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$j2;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$p;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/l1$p;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 519
    :pswitch_28
    check-cast v0, Lcom/join/mgps/adapter/l1$h2;

    .line 520
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 521
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 522
    iget v5, v2, Lcom/join/mgps/adapter/l1$n1;->e:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    iget-object v5, v2, Lcom/join/mgps/adapter/l1$n1;->f:Ljava/lang/Object;

    const-string v6, "\u6e38\u620f\u7b80\u4ecb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 523
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v5, v4}, Lcom/join/mgps/customview/ExpandLayout;->setExpandable(Z)V

    .line 524
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    const-string v6, "\u8be6\u7ec6\u4fe1\u606f"

    invoke-virtual {v5, v6}, Lcom/join/mgps/customview/ExpandLayout;->setExpandMoreText(Ljava/lang/String;)V

    .line 525
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    const v6, 0x7f0805c1

    invoke-virtual {v5, v6}, Lcom/join/mgps/customview/ExpandLayout;->setExpandMoreIcon(I)V

    .line 526
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    const-string v6, "#FF8B0F"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/customview/ExpandLayout;->setExpandTextColor(I)V

    .line 527
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v5, v4}, Lcom/join/mgps/customview/ExpandLayout;->setExpandStyle(I)V

    .line 528
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/ExpandLayout;->setAlwaysShowMore(Z)V

    .line 529
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/ExpandLayout;->setExpandStyle(I)V

    goto :goto_25

    :cond_46
    const/4 v5, 0x1

    .line 530
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/ExpandLayout;->setExpandable(Z)V

    .line 531
    :goto_25
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$h2;->a:Lcom/join/mgps/customview/ExpandLayout;

    new-instance v4, Lcom/join/mgps/adapter/l1$n;

    invoke-direct {v4, v1, v2}, Lcom/join/mgps/adapter/l1$n;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$n1;)V

    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V

    goto/16 :goto_37

    .line 532
    :pswitch_29
    check-cast v0, Lcom/join/mgps/adapter/l1$m2;

    .line 533
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 534
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$m2;->a:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 535
    :pswitch_2a
    check-cast v0, Lcom/join/mgps/adapter/l1$l2;

    .line 536
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 537
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_prompt()Ljava/util/List;

    move-result-object v3

    .line 538
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 539
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x24

    .line 540
    invoke-virtual {v6, v7, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0x13

    .line 541
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 542
    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080632

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 543
    iget-object v9, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08044c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 544
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-virtual {v7, v4, v4, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 545
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-virtual {v9, v4, v4, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v3, :cond_4a

    .line 546
    iget-object v10, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_4a

    const/4 v10, 0x0

    .line 547
    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_4a

    .line 548
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/GamePromptBean;

    if-eqz v11, :cond_49

    .line 549
    invoke-virtual {v11}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_47

    goto :goto_28

    .line 550
    :cond_47
    new-instance v12, Landroid/widget/TextView;

    iget-object v15, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-direct {v12, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-virtual {v11}, Lcom/join/mgps/dto/GamePromptBean;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v11}, Lcom/join/mgps/dto/GamePromptBean;->getId()I

    move-result v11

    if-ne v11, v13, :cond_48

    const/4 v11, 0x0

    .line 553
    invoke-virtual {v12, v7, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    :cond_48
    const/4 v11, 0x0

    .line 554
    invoke-virtual {v12, v9, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_27
    const/16 v11, 0xa

    .line 555
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 556
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v11, 0x41400000    # 12.0f

    .line 557
    invoke-virtual {v12, v13, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const v11, -0x757576

    .line 558
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 559
    iget-object v11, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_49
    :goto_28
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    .line 560
    :cond_4a
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->f:Ljava/lang/Object;

    const v6, 0x7f0c05e7

    if-eqz v3, :cond_4b

    instance-of v7, v3, Ljava/lang/Boolean;

    if-eqz v7, :cond_4b

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 561
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 562
    new-instance v7, Lcom/join/mgps/adapter/l1$j;

    invoke-direct {v7, v1}, Lcom/join/mgps/adapter/l1$j;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 564
    iget-object v9, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07110f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v9, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 565
    iget-object v9, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    :cond_4b
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->g:Ljava/lang/Object;

    if-eqz v3, :cond_4d

    .line 567
    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_4c

    .line 568
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_29

    :cond_4c
    const/4 v3, 0x0

    :goto_29
    if-lez v3, :cond_4d

    .line 569
    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v7, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f090800

    .line 570
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f09118e

    .line 571
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 572
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u91d1\u624b\u6307("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    new-instance v3, Lcom/join/mgps/adapter/l1$l;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/l1$l;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$n1;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 576
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f07110f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 577
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_4d
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->h:Ljava/lang/Object;

    if-eqz v2, :cond_4e

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4e

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 579
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v6, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090800

    .line 580
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f09118e

    .line 581
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0805b1

    .line 582
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v3, "\u793e\u533a\u8ba8\u8bba"

    .line 583
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    new-instance v3, Lcom/join/mgps/adapter/l1$m;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$m;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07110f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 587
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    :cond_4e
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_4f

    .line 589
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 590
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07117e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 591
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_37

    .line 592
    :cond_4f
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 593
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070ff7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 594
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$l2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_37

    .line 595
    :pswitch_2b
    check-cast v0, Lcom/join/mgps/adapter/l1$w2;

    .line 596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 597
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_switch()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_50

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 598
    new-instance v3, Lcom/join/mgps/dto/ImageInfo;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_50
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_51

    const/4 v5, 0x0

    .line 600
    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_51

    .line 601
    new-instance v6, Lcom/join/mgps/dto/ImageInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 602
    :cond_51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_52

    .line 603
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_37

    .line 604
    :cond_52
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 605
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_position()I

    move-result v3

    .line 606
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 607
    new-instance v5, Lcom/join/mgps/dto/ImageInfo;

    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGif_slide_pic()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/join/mgps/dto/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 608
    :cond_53
    iget-object v4, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v5, Lcom/join/mgps/adapter/l1$g;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$g;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setOnScrollListener(Lit/sephiroth/android/library/widget/AbsHListView$i;)V

    .line 609
    new-instance v4, Lcom/join/mgps/adapter/y0;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->n:Lcom/join/android/app/component/video/c;

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/join/mgps/adapter/y0;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/join/android/app/component/video/c;)V

    .line 610
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v3, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 611
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$w2;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/adapter/l1$h;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/l1$h;-><init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    goto/16 :goto_37

    .line 612
    :pswitch_2c
    check-cast v0, Lcom/join/mgps/adapter/l1$t2;

    .line 613
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$t2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 614
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 615
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 616
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    if-eq v4, v5, :cond_55

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23"

    if-ne v4, v5, :cond_56

    :cond_55
    const-string v4, "\u5b89\u5353"

    .line 617
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    .line 618
    :cond_56
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 619
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "44"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "47"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "48"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "25"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "154"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto/16 :goto_2b

    .line 620
    :cond_57
    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0277

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f091005

    .line 621
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 622
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    new-instance v5, Lcom/join/mgps/adapter/l1$d;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/l1$d;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$t2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    .line 625
    :cond_58
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCustom_tag_info()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 626
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCustom_tag_info()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/TipBean;

    .line 627
    iget-object v4, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0277

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 628
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$t2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f091005

    .line 629
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 630
    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    new-instance v5, Lcom/join/mgps/adapter/l1$e;

    invoke-direct {v5, v1, v3}, Lcom/join/mgps/adapter/l1$e;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/TipBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2c

    .line 632
    :cond_59
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0275

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 633
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$t2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    new-instance v0, Lcom/join/mgps/adapter/l1$f;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/l1$f;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 635
    :pswitch_2d
    check-cast v0, Lcom/join/mgps/adapter/l1$r2;

    .line 636
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5a

    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5a

    .line 637
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/join/mgps/adapter/l1$r2;->a:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v2, v3, v5}, Lcom/join/mgps/Util/UtilsMy;->t(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_2d

    .line 638
    :cond_5a
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$r2;->c:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 639
    :goto_2d
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_book()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5b

    .line 640
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$r2;->b:Landroid/widget/Button;

    const-string v3, "\u5df2\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$r2;->b:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 642
    :cond_5b
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$r2;->b:Landroid/widget/Button;

    const-string v3, "\u9884\u7ea6"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :goto_2e
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$r2;->b:Landroid/widget/Button;

    new-instance v2, Lcom/join/mgps/adapter/l1$c;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$c;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 644
    :pswitch_2e
    move-object v2, v0

    check-cast v2, Lcom/join/mgps/adapter/l1$k2;

    .line 645
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 646
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->c:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->i:Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/join/mgps/adapter/l1;->q:Landroid/view/View;

    .line 649
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_switch()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5e

    .line 650
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0.00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 651
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f

    .line 653
    :cond_5c
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    :goto_2f
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 655
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->e:Landroid/widget/TextView;

    const-string v3, "\u5df2\u67090\u4eba\u9884\u7ea6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 656
    :cond_5d
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u6709"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBespeak_count()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u4eba\u9884\u7ea6"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 657
    :cond_5e
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :try_start_a
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5f

    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 661
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_30

    :catch_a
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 663
    :cond_5f
    :goto_30
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

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

    if-eqz v0, :cond_60

    .line 664
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->e:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_count()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :cond_60
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object v0

    .line 667
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getComment_score_switch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 668
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0.0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_31

    .line 669
    :cond_61
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->a(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$k2;->f:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameScore;->getTotal_stars()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_32

    .line 671
    :cond_62
    :goto_31
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->a(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u6682\u672a\u51fa\u5206"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->a(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 673
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->a(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "#8a8a8a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->f:Lcom/join/mgps/customview/MStarBar;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 675
    :goto_32
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->f:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 676
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->f:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 677
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->b(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    .line 678
    :cond_63
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->b(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    :goto_33
    invoke-static {v2}, Lcom/join/mgps/adapter/l1$k2;->b(Lcom/join/mgps/adapter/l1$k2;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/l1$h1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$h1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 681
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_34

    .line 682
    :cond_64
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 683
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->h:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$a;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$a;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    :goto_34
    iget-object v0, v2, Lcom/join/mgps/adapter/l1$k2;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/l1$b;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/l1$b;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_37

    .line 685
    :pswitch_2f
    check-cast v0, Lcom/join/mgps/adapter/l1$u2;

    .line 686
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/l1$n1;

    .line 687
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    const-string v6, "\u66f4\u591a"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f071167

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 691
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 692
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 693
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_79

    .line 695
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$u2;->a:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u6e38\u620f\u7b80\u4ecb"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 698
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_65
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u7f16\u8f91\u63a8\u8350"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 700
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 701
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->a:Landroid/widget/TextView;

    const-string v6, "#262626"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    :cond_66
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u51fa\u62db\u8868"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u9009\u5173"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 703
    :cond_67
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 704
    iget-object v6, v0, Lcom/join/mgps/adapter/l1$u2;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070f87

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 705
    :cond_68
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u91d1\u624b\u6307"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 706
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 708
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5168\u90e8("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getGolden_finger()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    const-string v6, "#FFEFEFEF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 711
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/l1$k;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/l1$k;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    :cond_69
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u5f00\u5408\u670d"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 713
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_server_state()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-le v3, v6, :cond_6a

    .line 714
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 715
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/i1;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/i1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    :cond_6a
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u6d3b\u52a8\u516c\u544a"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 717
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isHas_more_activities()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 718
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 719
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/j1;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/j1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    :cond_6b
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v6, "\u4e91\u5b58\u6863"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 721
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5168\u90e8("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->getCloud_archive_count()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    const-string v5, "#FFEFEFEF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 725
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/l1$v;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$v;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    :cond_6c
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u798f\u5229\u793c\u5305"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 727
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_6d
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u798f\u5229\u793c\u5305"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 729
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 730
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/l1$g0;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$g0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    :cond_6e
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u540c\u5382\u5546\u63a8\u8350"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 732
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6f

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCompany_recommend()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_6f

    .line 733
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 734
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/l1$r0;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$r0;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    :cond_6f
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u540c\u5382\u5546\u63a8\u8350"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 736
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :cond_70
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u4e0b\u4e86\u8fd8\u4f1a\u4e0b"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 739
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :cond_71
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u6e38\u620f\u5355"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 742
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 743
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/l1$c1;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$c1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    :cond_72
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u652f\u6301\u624b\u67c4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 745
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->f:Landroid/widget/ImageView;

    const v5, 0x7f08085e

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 749
    iget-object v5, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0710ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 750
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    const-string v5, "\u70b9\u51fb\u8d2d\u4e70"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;

    move-result-object v3

    .line 752
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 753
    iget-object v5, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/join/mgps/adapter/l1$e1;

    invoke-direct {v6, v1, v3}, Lcom/join/mgps/adapter/l1$e1;-><init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/dto/AppBeanMain;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    :cond_73
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u793e\u533a\u8ba8\u8bba"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 755
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 756
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/join/mgps/adapter/l1$f1;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/l1$f1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    :cond_74
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u540c\u7c7b\u6e38\u620f"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 758
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 760
    :cond_75
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$u2;->d:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :goto_35
    iget-object v3, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v5, "\u4e13\u5c5e\u798f\u5229"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 762
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->g:Landroid/widget/ImageView;

    const v3, 0x7f080226

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_36

    .line 764
    :cond_76
    iget-object v2, v2, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    const-string v3, "\u5145\u503c\u8fd4\u5229"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 765
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->g:Landroid/widget/ImageView;

    const v3, 0x7f080224

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 766
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v2, v1, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 768
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    const-string v3, "\u8054\u7cfb\u5ba2\u670d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    const-string v3, "#f47500"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 770
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f071167

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 771
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/join/mgps/adapter/l1$g1;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/l1$g1;-><init>(Lcom/join/mgps/adapter/l1;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_36

    .line 773
    :cond_77
    iget-object v2, v0, Lcom/join/mgps/adapter/l1$u2;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    :cond_78
    :goto_36
    iget-object v0, v0, Lcom/join/mgps/adapter/l1$u2;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_79
    :goto_37
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
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

    const v1, 0x7f0c0301

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/l1$s1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$s1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0300

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/adapter/l1$j1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$j1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0307

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/adapter/l1$i1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$i1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0306

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/l1$e3;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$e3;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0262

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/join/mgps/adapter/l1$o1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$o1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/join/mgps/adapter/l1$x1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$x1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 13
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c028a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/join/mgps/adapter/l1$a3;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$a3;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c028b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/join/mgps/adapter/l1$d3;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$d3;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 17
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0289

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    new-instance p2, Lcom/join/mgps/adapter/l1$w1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$w1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 19
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/mgps/adapter/l1$x2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$x2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 21
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 22
    new-instance p2, Lcom/join/mgps/adapter/l1$n2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$n2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 23
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0137

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/join/mgps/adapter/l1$t1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$t1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 25
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0143

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/join/mgps/adapter/l1$b3;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$b3;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 27
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0138

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/join/mgps/adapter/l1$u1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$u1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 29
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance p2, Lcom/join/mgps/adapter/l1$y2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$y2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 31
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/join/mgps/adapter/l1$y1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$y1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 33
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0284

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/join/mgps/adapter/l1$w2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$w2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 35
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c028d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/join/mgps/adapter/l1$v1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$v1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 37
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c029a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/join/mgps/adapter/l1$z2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$z2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 39
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0105

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/join/mgps/adapter/l1$m1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$m1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 41
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c029b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/join/mgps/adapter/l1$c3;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$c3;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 43
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c013e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/join/mgps/adapter/l1$p2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$p2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 45
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0273

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/join/mgps/adapter/l1$s2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$s2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 47
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/join/mgps/adapter/l1$g2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$g2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 49
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/join/mgps/adapter/l1$f2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$f2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 51
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/join/mgps/adapter/l1$v2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$v2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 53
    :pswitch_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0255

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/join/mgps/adapter/l1$a2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$a2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 55
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0260

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/join/mgps/adapter/l1$q2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$q2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 57
    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0258

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/join/mgps/adapter/l1$c2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$c2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 59
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0257

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/join/mgps/adapter/l1$e2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$e2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 61
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0256

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/join/mgps/adapter/l1$b2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$b2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 63
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0271

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/join/mgps/adapter/l1$d2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$d2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 65
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/join/mgps/adapter/l1$i2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$i2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 67
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/join/mgps/adapter/l1$o2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$o2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 69
    :pswitch_22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0254

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/join/mgps/adapter/l1$z1;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$z1;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 71
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0261

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/join/mgps/adapter/l1$j2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$j2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 73
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/join/mgps/adapter/l1$h2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$h2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 75
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0270

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/join/mgps/adapter/l1$m2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$m2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto/16 :goto_0

    .line 77
    :pswitch_26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c025f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/join/mgps/adapter/l1$l2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$l2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto :goto_0

    .line 79
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0282

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    new-instance p2, Lcom/join/mgps/adapter/l1$w2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$w2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto :goto_0

    .line 81
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0279

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/join/mgps/adapter/l1$t2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$t2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto :goto_0

    .line 83
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0272

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/join/mgps/adapter/l1$r2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$r2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto :goto_0

    .line 85
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0263

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    new-instance p2, Lcom/join/mgps/adapter/l1$k2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$k2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    goto :goto_0

    .line 87
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c027b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/join/mgps/adapter/l1$u2;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/l1$u2;-><init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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

.method p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/l1$n1;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/l1$n1;

    new-instance v1, Lcom/join/mgps/adapter/l1$r1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/join/mgps/adapter/l1$r1;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    const/16 p1, 0xf

    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/adapter/l1$n1;-><init>(Lcom/join/mgps/adapter/l1;Ljava/lang/Object;I)V

    return-object v0
.end method

.method q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

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

    iget-object v1, p0, Lcom/join/mgps/adapter/l1;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

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

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/l1;->V(Landroid/content/Context;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/l1;->V(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/l1;->q()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/l1;->q()V

    :goto_1
    return-void
.end method

.method public s()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->q:Landroid/view/View;

    return-object v0
.end method

.method public t()Ll1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->m:Ll1/f;

    return-object v0
.end method

.method public v()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->r:Ljava/util/List;

    return-object v0
.end method

.method public w(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/l1;->l:I

    return v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/l1$n1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1;->o:Ljava/util/List;

    return-object v0
.end method
