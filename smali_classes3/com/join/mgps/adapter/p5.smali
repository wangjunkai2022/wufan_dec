.class public Lcom/join/mgps/adapter/p5;
.super Landroid/widget/BaseAdapter;
.source "SimulatorAreaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/p5$h;,
        Lcom/join/mgps/adapter/p5$l;,
        Lcom/join/mgps/adapter/p5$m;,
        Lcom/join/mgps/adapter/p5$i;,
        Lcom/join/mgps/adapter/p5$p;,
        Lcom/join/mgps/adapter/p5$k;,
        Lcom/join/mgps/adapter/p5$j;,
        Lcom/join/mgps/adapter/p5$o;,
        Lcom/join/mgps/adapter/p5$n;,
        Lcom/join/mgps/adapter/p5$g;
    }
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8

.field public static final q:I = 0x9


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/p5$g;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/p5;->f:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/join/mgps/adapter/p5;->g:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/p5;->h:Ljava/lang/String;

    .line 6
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/adapter/p5;->c:I

    const/high16 p2, 0x41400000    # 12.0f

    .line 7
    invoke-static {p1, p2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/adapter/p5;->e:I

    .line 8
    iget p2, p0, Lcom/join/mgps/adapter/p5;->c:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/join/mgps/adapter/p5;->c:I

    mul-int/lit16 p2, p2, 0xe5

    .line 9
    div-int/lit16 p2, p2, 0x298

    iput p2, p0, Lcom/join/mgps/adapter/p5;->d:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/p5;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/p5;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/p5;->g:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/p5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/p5;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method d(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    .line 1
    invoke-static/range {p3 .. p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    .line 2
    :goto_0
    invoke-virtual/range {p6 .. p6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static/range {p7 .. p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c008d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900fd

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f090109

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900f2

    .line 6
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090c16

    .line 7
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 9
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v10, v10, v8

    double-to-long v8, v10

    .line 10
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/16 v5, 0x8

    if-eqz p4, :cond_d

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "7"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "\u00b7"

    if-nez v9, :cond_5

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "23"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_3

    .line 14
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/TipBean;

    .line 15
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object v4, v9

    :cond_3
    if-eqz v4, :cond_4

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 17
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_5
    :goto_1
    const-string v4, "\u5b89\u5353"

    if-eqz p5, :cond_b

    .line 18
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/TipBean;

    .line 20
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 21
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "44"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "45"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "47"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "48"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_8

    .line 23
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_a

    .line 25
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/TipBean;

    if-eqz v9, :cond_9

    .line 26
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 27
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v11, :cond_b

    .line 28
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/TipBean;

    if-eqz v8, :cond_b

    .line 29
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 30
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b

    .line 31
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/TipBean;

    if-eqz v8, :cond_b

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    :cond_b
    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 34
    :cond_c
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 36
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 37
    :cond_d
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    :cond_e
    :goto_5
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5206"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 41
    :cond_f
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p6

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method e(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(I)Lcom/join/mgps/adapter/p5$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/p5$g;

    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/p5$g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/p5;->f(I)Lcom/join/mgps/adapter/p5$g;

    move-result-object p1

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
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/p5$g;

    .line 2
    iget p1, p1, Lcom/join/mgps/adapter/p5$g;->b:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v9, p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/p5;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v3, p2

    :goto_0
    move-object v2, v1

    move-object v4, v2

    :goto_1
    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    goto/16 :goto_4

    .line 2
    :pswitch_0
    new-instance v2, Lcom/join/mgps/adapter/p5$i;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/p5$i;-><init>(Lcom/join/mgps/adapter/p5;)V

    .line 3
    iget-object v3, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c033d

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const v4, 0x7f090e6e

    .line 4
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$i;->a:Landroid/widget/LinearLayout;

    const v4, 0x7f090e6c

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f090e6f

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$i;->c:Landroid/widget/TextView;

    const v4, 0x7f090e6d

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$i;->d:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v4, v2

    goto/16 :goto_3

    .line 9
    :pswitch_1
    :try_start_2
    new-instance v2, Lcom/join/mgps/adapter/p5$p;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/p5$p;-><init>(Lcom/join/mgps/adapter/p5;)V

    .line 10
    iget-object v3, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0344

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 11
    :try_start_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 12
    :pswitch_2
    :try_start_4
    new-instance v2, Lcom/join/mgps/adapter/p5$m;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/p5$m;-><init>(Lcom/join/mgps/adapter/p5;)V

    .line 13
    iget-object v3, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0341

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const v4, 0x7f090e73

    .line 14
    :try_start_5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$m;->a:Landroid/widget/LinearLayout;

    const v4, 0x7f090e72

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$m;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v1

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v6, v2

    goto/16 :goto_3

    .line 17
    :pswitch_3
    :try_start_6
    new-instance v2, Lcom/join/mgps/adapter/p5$k;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/p5$k;-><init>(Lcom/join/mgps/adapter/p5;)V

    .line 18
    iget-object v3, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0340

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 19
    :try_start_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 20
    :pswitch_4
    :try_start_8
    iget-object v2, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c033e

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 21
    :try_start_9
    new-instance v3, Lcom/join/mgps/adapter/p5$j;

    invoke-direct {v3, v9}, Lcom/join/mgps/adapter/p5$j;-><init>(Lcom/join/mgps/adapter/p5;)V

    const v4, 0x7f090f41

    .line 22
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/p5$j;->a:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_4

    .line 24
    :pswitch_5
    :try_start_a
    iget-object v2, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0342

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 25
    :try_start_b
    new-instance v3, Lcom/join/mgps/adapter/p5$o;

    invoke-direct {v3, v9}, Lcom/join/mgps/adapter/p5$o;-><init>(Lcom/join/mgps/adapter/p5;)V

    const v4, 0x7f090e75

    .line 26
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/p5$o;->a:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v8, v3

    :goto_2
    move-object v3, v2

    :goto_3
    move-object v2, v10

    goto/16 :goto_4

    .line 28
    :pswitch_6
    :try_start_c
    iget-object v2, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0386

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 29
    :try_start_d
    new-instance v3, Lcom/join/mgps/adapter/p5$l;

    invoke-direct {v3, v9}, Lcom/join/mgps/adapter/p5$l;-><init>(Lcom/join/mgps/adapter/p5;)V

    const v4, 0x7f090cb9

    .line 30
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/p5$l;->a:Landroid/widget/TextView;

    const v4, 0x7f090a8b

    .line 31
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/p5$l;->b:Landroid/widget/RelativeLayout;

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v7, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v2

    goto/16 :goto_e

    .line 33
    :pswitch_7
    :try_start_e
    new-instance v2, Lcom/join/mgps/adapter/p5$h;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/p5$h;-><init>(Lcom/join/mgps/adapter/p5;)V

    .line 34
    iget-object v3, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c033c

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const v4, 0x7f090a39

    .line 35
    :try_start_f
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0905ee

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->b:Landroid/widget/ImageView;

    const v4, 0x7f090a37

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->c:Landroid/widget/TextView;

    const v4, 0x7f090a38

    .line 38
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->g:Landroid/widget/TextView;

    const v4, 0x7f0908cd

    .line 39
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->h:Landroid/widget/LinearLayout;

    const v4, 0x7f09100c

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->i:Landroid/widget/LinearLayout;

    const v4, 0x7f0900ea

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    const v4, 0x7f0909b2

    .line 42
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->k:Landroid/widget/TextView;

    const v4, 0x7f090c59

    .line 43
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    const v4, 0x7f090c60

    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v2, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    const v5, 0x7f0903ca

    .line 45
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/customview/DownloadViewStroke;

    iput-object v5, v2, Lcom/join/mgps/adapter/p5$h;->d:Lcom/join/mgps/customview/DownloadViewStroke;

    const v5, 0x7f090d07

    .line 46
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v2, Lcom/join/mgps/adapter/p5$h;->e:Landroid/widget/RelativeLayout;

    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    const v4, 0x7f0908be

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$h;->f:Landroid/view/View;

    .line 49
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v5, v2

    goto/16 :goto_3

    .line 50
    :pswitch_8
    :try_start_10
    new-instance v2, Lcom/join/mgps/adapter/p5$n;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/p5$n;-><init>(Lcom/join/mgps/adapter/p5;)V

    .line 51
    iget-object v3, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0343

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    const v4, 0x7f090e74

    .line 52
    :try_start_11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$n;->a:Landroid/widget/TextView;

    const v4, 0x7f090e71

    .line 53
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/p5$n;->b:Landroid/widget/RelativeLayout;

    .line 54
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    move-object v4, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v10, v3

    goto/16 :goto_e

    :goto_4
    move-object v11, v5

    move-object/from16 v20, v10

    move-object v10, v3

    move-object/from16 v3, v20

    goto/16 :goto_a

    :cond_0
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 55
    :pswitch_9
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/join/mgps/adapter/p5$i;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v6, v3

    goto/16 :goto_7

    .line 56
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/p5$p;

    goto/16 :goto_5

    .line 57
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/mgps/adapter/p5$m;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v7, v4

    goto/16 :goto_8

    .line 58
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/p5$k;

    goto/16 :goto_5

    .line 59
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/join/mgps/adapter/p5$j;

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v3, v10

    move-object/from16 v10, p2

    goto/16 :goto_a

    .line 60
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/join/mgps/adapter/p5$o;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v11, v7

    goto :goto_a

    .line 61
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/mgps/adapter/p5$l;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v8, v6

    goto :goto_9

    .line 62
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/mgps/adapter/p5$h;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v11, v5

    goto :goto_a

    .line 63
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/p5$n;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    move-object/from16 v10, p2

    move-object v3, v1

    goto :goto_6

    :goto_5
    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    :goto_6
    move-object v4, v3

    move-object v6, v4

    :goto_7
    move-object v7, v6

    :goto_8
    move-object v8, v7

    :goto_9
    move-object v11, v8

    .line 64
    :goto_a
    :try_start_13
    iget-object v5, v9, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    move/from16 v12, p1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/p5$g;

    const/4 v12, 0x1

    if-eq v0, v12, :cond_12

    const/4 v12, 0x7

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eq v0, v15, :cond_8

    if-eq v0, v14, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    if-eq v0, v13, :cond_5

    const/4 v2, 0x0

    if-eq v0, v12, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    goto/16 :goto_f

    .line 65
    :cond_1
    iget-object v0, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;

    .line 66
    iget-object v3, v4, Lcom/join/mgps/adapter/p5$i;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getSub_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, v4, Lcom/join/mgps/adapter/p5$i;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, v4, Lcom/join/mgps/adapter/p5$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 71
    :cond_2
    iget-object v0, v4, Lcom/join/mgps/adapter/p5$i;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/p5$a;

    invoke-direct {v2, v9, v1}, Lcom/join/mgps/adapter/p5$a;-><init>(Lcom/join/mgps/adapter/p5;Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 72
    :cond_3
    iget-object v0, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v9, Lcom/join/mgps/adapter/p5;->c:I

    iget v5, v9, Lcom/join/mgps/adapter/p5;->d:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iget v4, v9, Lcom/join/mgps/adapter/p5;->e:I

    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    iget-object v4, v6, Lcom/join/mgps/adapter/p5$m;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v3, v6, Lcom/join/mgps/adapter/p5$m;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 79
    :cond_4
    iget-object v0, v6, Lcom/join/mgps/adapter/p5$m;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/p5$b;

    invoke-direct {v2, v9, v1}, Lcom/join/mgps/adapter/p5$b;-><init>(Lcom/join/mgps/adapter/p5;Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 80
    :cond_5
    iget-object v0, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;

    .line 81
    iget-object v1, v3, Lcom/join/mgps/adapter/p5$j;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, v3, Lcom/join/mgps/adapter/p5$j;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/p5$c;

    invoke-direct {v2, v9, v0}, Lcom/join/mgps/adapter/p5$c;-><init>(Lcom/join/mgps/adapter/p5;Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 83
    :cond_6
    iget-object v0, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v1, v8, Lcom/join/mgps/adapter/p5$o;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 85
    :cond_7
    iget-object v0, v7, Lcom/join/mgps/adapter/p5$l;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/join/mgps/adapter/p5$d;

    invoke-direct {v1, v9}, Lcom/join/mgps/adapter/p5$d;-><init>(Lcom/join/mgps/adapter/p5;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 86
    :cond_8
    iget-object v0, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double v1, v1, v3

    mul-double v1, v1, v3

    double-to-long v6, v1

    .line 89
    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v16

    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->i:Landroid/widget/LinearLayout;

    iget-object v12, v9, Lcom/join/mgps/adapter/p5;->a:Landroid/content/Context;

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-wide/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object v13, v8

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/adapter/p5;->d(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 93
    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->d:Lcom/join/mgps/customview/DownloadViewStroke;

    invoke-virtual {v1, v13, v0}, Lcom/join/mgps/customview/DownloadViewStroke;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 94
    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/p5$f;

    invoke-direct {v2, v9, v0}, Lcom/join/mgps/adapter/p5$f;-><init>(Lcom/join/mgps/adapter/p5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_9
    if-nez v13, :cond_a

    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_f

    :cond_a
    const-string v0, "infoo"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    if-eqz v0, :cond_11

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x30

    if-eq v0, v1, :cond_f

    const-wide/16 v1, 0x0

    const-string v3, "/"

    if-eq v0, v15, :cond_d

    if-eq v0, v14, :cond_b

    const/4 v4, 0x5

    if-eq v0, v4, :cond_10

    const/4 v4, 0x6

    if-eq v0, v4, :cond_b

    const/4 v4, 0x7

    if-eq v0, v4, :cond_11

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_f

    .line 103
    :pswitch_12
    :try_start_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 104
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->k:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_f

    .line 107
    :pswitch_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 108
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->k:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_f

    .line 111
    :pswitch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 112
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 113
    :try_start_15
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    .line 114
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_b
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->k:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 116
    :pswitch_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_f

    .line 117
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 118
    :try_start_17
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_c

    .line 119
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 120
    :cond_c
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_c
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_f

    :catch_3
    move-exception v0

    .line 122
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 123
    :cond_d
    invoke-static {v13}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 124
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 125
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_e

    .line 126
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 127
    :cond_e
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_d
    iget-object v0, v11, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, v11, Lcom/join/mgps/adapter/p5$h;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 131
    :cond_f
    :pswitch_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 132
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 133
    :cond_11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/p5;->i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 134
    :cond_12
    iget-object v0, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v1, v2, Lcom/join/mgps/adapter/p5$n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, v2, Lcom/join/mgps/adapter/p5$n;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/join/mgps/adapter/p5$e;

    invoke-direct {v1, v9}, Lcom/join/mgps/adapter/p5$e;-><init>(Lcom/join/mgps/adapter/p5;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v10, p2

    .line 137
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception_tbl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-object v10

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_15
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/p5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/p5$g;

    iget v0, v0, Lcom/join/mgps/adapter/p5$g;->b:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method i(Lcom/join/mgps/adapter/p5$h;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/p5$h;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/p5$h;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/p5$h;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
